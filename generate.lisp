(defun read-lines (filename)
  (with-open-file (input filename)
    (loop for line = (read-line input nil) while line collect line)))

(defun every-other (list)
  (loop for i from 0 for x in list when (evenp i) collect x))

(defvar *names*
  (map 'list #'string-downcase (every-other (read-lines "Map_Sym.txt"))))

(defvar *exceptions*
  (map 'list #'string-downcase (read-lines "exceptions.txt")))

(defun remove-prefix (fix str)
  (and (search fix str :end2 (min (length fix) (length str)))
       (subseq str (length fix))))

(defun remove-suffix (fix str)
  (and (search fix str :start2 (- (length str)
                                  (min (length fix) (length str))))
       (subseq str 0 (- (length str) (length fix)))))

(defvar *rules*
  ;; You'll get botched conversions if these are in the wrong order.
  `((,#'remove-suffix "-p" "?")
    (,#'remove-suffix "p" "?")
    (,#'remove-prefix "n" "!")
    (,#'remove-suffix "f" "!")))

(defun conversion (old-name)
  (unless (find old-name *exceptions* :test #'equal)
    (dolist (rule *rules*)
      (let ((remove-fix (first rule))
            (old-fix (second rule))
            (new-suffix (third rule)))
        (let ((stem (funcall remove-fix old-fix old-name)))
          (when stem
            (let ((new-name (concatenate 'string stem new-suffix)))
              (return (list new-name old-name)))))))))

(defvar *manual-conversions*
  '(("atom?" "atom")
    ("clrhash!" "clrhash")
    ("mapcan!" "mapcan")
    ("mapcon!" "mapcon")
    ("null?" "null")
    ("pop!" "pop")
    ("pprint-indent!" "pprint-indent")
    ("push!" "push")
    ("pushnew!" "pushnew")
    ("read-sequence!" "read-sequence")
    ("remhash!" "remhash")
    ("remprop!" "remprop")
    ("rplaca!" "rplaca")
    ("rplacd!" "rplacd")))

(defvar *conversions*
  (sort
   (append
    *manual-conversions*
    (remove nil (map 'list #'conversion *names*)))
   #'string<
   :key #'first))

(defun new-name (conv) (first conv))
(defun old-name (conv) (second conv))

(defun interned (name) (intern (string-upcase name)))
(defun uninterned (name) (make-symbol (string-upcase name)))

(defvar *package-names* '("common-lisp?!" "cl?!"))

(with-open-file (*standard-output* "interrobang.lisp"
                                   :direction :output
                                   :if-exists :supersede)
  (let ((*print-case* :downcase)
        (*print-right-margin* 78))
    (write-line ";;; Automatically generated")
    (map nil
         (lambda (x) (terpri) (prin1 x) (terpri))
         `((defpackage ,(uninterned (first *package-names*))
             (:nicknames ,@(map 'list #'uninterned (rest *package-names*)))
             (:use #:common-lisp)
             (:export ,@(map 'list
                             (lambda (conv) (uninterned (new-name conv)))
                             *conversions*)))
           (in-package ,(uninterned (first *package-names*)))
           (eval-when (:compile-toplevel :load-toplevel :execute)
             (flet ((alias (new old)
                      (setf (symbol-function new)
                            (symbol-function old))
                      (setf (symbol-plist new)
                            (symbol-plist old))))
               ,@(map 'list
                      (lambda (conv)
                        `(alias ',(interned (new-name conv))
                                ',(interned (old-name conv))))
                      *conversions*)
               t))))))
