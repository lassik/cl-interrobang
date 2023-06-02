;;; Automatically generated

(defpackage #:common-lisp?! (:nicknames #:cl?!) (:use #:common-lisp)
 (:export #:adjustable-array? #:alpha-char? #:alphanumeric?
  #:array-has-fill-pointer? #:array-in-bounds? #:array? #:bit-vector?
  #:both-case? #:bound? #:char-greater? #:char-less? #:char-not-greater?
  #:char-not-less? #:character? #:compiled-function? #:complex? #:cons?
  #:constant? #:dec! #:defset! #:digit-char? #:end? #:equal? #:even? #:fbound?
  #:float? #:function? #:get! #:graphic-char? #:hash-table? #:inc!
  #:input-stream? #:integer? #:interactive-stream? #:keyword? #:list?
  #:logbit? #:lower-case? #:minus? #:butlast! #:conc! #:intersection!
  #:reconc! #:reverse! #:set-difference! #:set-exclusive-or!
  #:string-capitalize! #:string-downcase! #:string-upcase! #:sublis! #:subst!
  #:subst-if! #:subst-if-not! #:substitute! #:substitute-if!
  #:substitute-if-not! #:number? #:union! #:odd? #:open-stream?
  #:output-stream? #:package? #:pathname-match? #:pathname? #:plus? #:pset!
  #:random-state? #:rational? #:readtable? #:real? #:rem! #:rotate! #:set!
  #:shift! #:simple-bit-vector? #:simple-string? #:simple-vector?
  #:slot-bound? #:slot-exists? #:special-operator? #:standard-char? #:stream?
  #:string-greater? #:string-less? #:string-not-greater? #:string-not-less?
  #:string? #:subset? #:subtype? #:symbol? #:tail? #:type? #:upper-case?
  #:vector? #:wild-pathname? #:y-or-n? #:yes-or-no? #:zero?))

(in-package #:common-lisp?!)

(eval-when (:compile-toplevel :load-toplevel :execute)
 (flet
  ((alias (new old) (setf (symbol-function new) (symbol-function old))
    (setf (symbol-plist new) (symbol-plist old))))
  (alias 'adjustable-array? 'adjustable-array-p)
  (alias 'alpha-char? 'alpha-char-p) (alias 'alphanumeric? 'alphanumericp)
  (alias 'array-has-fill-pointer? 'array-has-fill-pointer-p)
  (alias 'array-in-bounds? 'array-in-bounds-p) (alias 'array? 'arrayp)
  (alias 'bit-vector? 'bit-vector-p) (alias 'both-case? 'both-case-p)
  (alias 'bound? 'boundp) (alias 'char-greater? 'char-greaterp)
  (alias 'char-less? 'char-lessp)
  (alias 'char-not-greater? 'char-not-greaterp)
  (alias 'char-not-less? 'char-not-lessp) (alias 'character? 'characterp)
  (alias 'compiled-function? 'compiled-function-p) (alias 'complex? 'complexp)
  (alias 'cons? 'consp) (alias 'constant? 'constantp) (alias 'dec! 'decf)
  (alias 'defset! 'defsetf) (alias 'digit-char? 'digit-char-p)
  (alias 'end? 'endp) (alias 'equal? 'equalp) (alias 'even? 'evenp)
  (alias 'fbound? 'fboundp) (alias 'float? 'floatp)
  (alias 'function? 'functionp) (alias 'get! 'getf)
  (alias 'graphic-char? 'graphic-char-p) (alias 'hash-table? 'hash-table-p)
  (alias 'inc! 'incf) (alias 'input-stream? 'input-stream-p)
  (alias 'integer? 'integerp)
  (alias 'interactive-stream? 'interactive-stream-p)
  (alias 'keyword? 'keywordp) (alias 'list? 'listp) (alias 'logbit? 'logbitp)
  (alias 'lower-case? 'lower-case-p) (alias 'minus? 'minusp)
  (alias 'butlast! 'nbutlast) (alias 'conc! 'nconc)
  (alias 'intersection! 'nintersection) (alias 'reconc! 'nreconc)
  (alias 'reverse! 'nreverse) (alias 'set-difference! 'nset-difference)
  (alias 'set-exclusive-or! 'nset-exclusive-or)
  (alias 'string-capitalize! 'nstring-capitalize)
  (alias 'string-downcase! 'nstring-downcase)
  (alias 'string-upcase! 'nstring-upcase) (alias 'sublis! 'nsublis)
  (alias 'subst! 'nsubst) (alias 'subst-if! 'nsubst-if)
  (alias 'subst-if-not! 'nsubst-if-not) (alias 'substitute! 'nsubstitute)
  (alias 'substitute-if! 'nsubstitute-if)
  (alias 'substitute-if-not! 'nsubstitute-if-not) (alias 'number? 'numberp)
  (alias 'union! 'nunion) (alias 'odd? 'oddp)
  (alias 'open-stream? 'open-stream-p)
  (alias 'output-stream? 'output-stream-p) (alias 'package? 'packagep)
  (alias 'pathname-match? 'pathname-match-p) (alias 'pathname? 'pathnamep)
  (alias 'plus? 'plusp) (alias 'pset! 'psetf)
  (alias 'random-state? 'random-state-p) (alias 'rational? 'rationalp)
  (alias 'readtable? 'readtablep) (alias 'real? 'realp) (alias 'rem! 'remf)
  (alias 'rotate! 'rotatef) (alias 'set! 'setf) (alias 'shift! 'shiftf)
  (alias 'simple-bit-vector? 'simple-bit-vector-p)
  (alias 'simple-string? 'simple-string-p)
  (alias 'simple-vector? 'simple-vector-p) (alias 'slot-bound? 'slot-boundp)
  (alias 'slot-exists? 'slot-exists-p)
  (alias 'special-operator? 'special-operator-p)
  (alias 'standard-char? 'standard-char-p) (alias 'stream? 'streamp)
  (alias 'string-greater? 'string-greaterp)
  (alias 'string-less? 'string-lessp)
  (alias 'string-not-greater? 'string-not-greaterp)
  (alias 'string-not-less? 'string-not-lessp) (alias 'string? 'stringp)
  (alias 'subset? 'subsetp) (alias 'subtype? 'subtypep)
  (alias 'symbol? 'symbolp) (alias 'tail? 'tailp) (alias 'type? 'typep)
  (alias 'upper-case? 'upper-case-p) (alias 'vector? 'vectorp)
  (alias 'wild-pathname? 'wild-pathname-p) (alias 'y-or-n? 'y-or-n-p)
  (alias 'yes-or-no? 'yes-or-no-p) (alias 'zero? 'zerop) t))
