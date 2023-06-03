;;; Automatically generated

(defpackage #:common-lisp?! (:nicknames #:cl?!) (:use #:common-lisp)
 (:export #:adjustable-array? #:alpha-char? #:alphanumeric?
  #:array-has-fill-pointer? #:array-in-bounds? #:array? #:atom? #:bit-vector?
  #:both-case? #:bound? #:butlast! #:char-greater? #:char-less?
  #:char-not-greater? #:char-not-less? #:character? #:compiled-function?
  #:complex? #:conc! #:cons? #:constant? #:dec! #:defset! #:digit-char? #:end?
  #:equal? #:even? #:fbound? #:float? #:function? #:get! #:graphic-char?
  #:hash-table? #:inc! #:input-stream? #:integer? #:interactive-stream?
  #:intersection! #:keyword? #:list? #:logbit? #:lower-case? #:minus? #:null?
  #:number? #:odd? #:open-stream? #:output-stream? #:package?
  #:pathname-match? #:pathname? #:plus? #:pset! #:random-state? #:rational?
  #:readtable? #:real? #:reconc! #:rem! #:reverse! #:rotate! #:set!
  #:set-difference! #:set-exclusive-or! #:shift! #:simple-bit-vector?
  #:simple-string? #:simple-vector? #:slot-bound? #:slot-exists?
  #:special-operator? #:standard-char? #:stream? #:string-capitalize!
  #:string-downcase! #:string-greater? #:string-less? #:string-not-greater?
  #:string-not-less? #:string-upcase! #:string? #:sublis! #:subset? #:subst!
  #:subst-if! #:subst-if-not! #:substitute! #:substitute-if!
  #:substitute-if-not! #:subtype? #:symbol? #:tail? #:type? #:union!
  #:upper-case? #:vector? #:wild-pathname? #:y-or-n? #:yes-or-no? #:zero?))

(in-package #:common-lisp?!)

(eval-when (:compile-toplevel :load-toplevel :execute)
 (flet
  ((alias (new old) (setf (symbol-function new) (symbol-function old))
    (setf (symbol-plist new) (symbol-plist old))))
  (alias 'adjustable-array? 'adjustable-array-p)
  (alias 'alpha-char? 'alpha-char-p) (alias 'alphanumeric? 'alphanumericp)
  (alias 'array-has-fill-pointer? 'array-has-fill-pointer-p)
  (alias 'array-in-bounds? 'array-in-bounds-p) (alias 'array? 'arrayp)
  (alias 'atom? 'atom) (alias 'bit-vector? 'bit-vector-p)
  (alias 'both-case? 'both-case-p) (alias 'bound? 'boundp)
  (alias 'butlast! 'nbutlast) (alias 'char-greater? 'char-greaterp)
  (alias 'char-less? 'char-lessp)
  (alias 'char-not-greater? 'char-not-greaterp)
  (alias 'char-not-less? 'char-not-lessp) (alias 'character? 'characterp)
  (alias 'compiled-function? 'compiled-function-p) (alias 'complex? 'complexp)
  (alias 'conc! 'nconc) (alias 'cons? 'consp) (alias 'constant? 'constantp)
  (alias 'dec! 'decf) (alias 'defset! 'defsetf)
  (alias 'digit-char? 'digit-char-p) (alias 'end? 'endp)
  (alias 'equal? 'equalp) (alias 'even? 'evenp) (alias 'fbound? 'fboundp)
  (alias 'float? 'floatp) (alias 'function? 'functionp) (alias 'get! 'getf)
  (alias 'graphic-char? 'graphic-char-p) (alias 'hash-table? 'hash-table-p)
  (alias 'inc! 'incf) (alias 'input-stream? 'input-stream-p)
  (alias 'integer? 'integerp)
  (alias 'interactive-stream? 'interactive-stream-p)
  (alias 'intersection! 'nintersection) (alias 'keyword? 'keywordp)
  (alias 'list? 'listp) (alias 'logbit? 'logbitp)
  (alias 'lower-case? 'lower-case-p) (alias 'minus? 'minusp)
  (alias 'null? 'null) (alias 'number? 'numberp) (alias 'odd? 'oddp)
  (alias 'open-stream? 'open-stream-p)
  (alias 'output-stream? 'output-stream-p) (alias 'package? 'packagep)
  (alias 'pathname-match? 'pathname-match-p) (alias 'pathname? 'pathnamep)
  (alias 'plus? 'plusp) (alias 'pset! 'psetf)
  (alias 'random-state? 'random-state-p) (alias 'rational? 'rationalp)
  (alias 'readtable? 'readtablep) (alias 'real? 'realp)
  (alias 'reconc! 'nreconc) (alias 'rem! 'remf) (alias 'reverse! 'nreverse)
  (alias 'rotate! 'rotatef) (alias 'set! 'setf)
  (alias 'set-difference! 'nset-difference)
  (alias 'set-exclusive-or! 'nset-exclusive-or) (alias 'shift! 'shiftf)
  (alias 'simple-bit-vector? 'simple-bit-vector-p)
  (alias 'simple-string? 'simple-string-p)
  (alias 'simple-vector? 'simple-vector-p) (alias 'slot-bound? 'slot-boundp)
  (alias 'slot-exists? 'slot-exists-p)
  (alias 'special-operator? 'special-operator-p)
  (alias 'standard-char? 'standard-char-p) (alias 'stream? 'streamp)
  (alias 'string-capitalize! 'nstring-capitalize)
  (alias 'string-downcase! 'nstring-downcase)
  (alias 'string-greater? 'string-greaterp)
  (alias 'string-less? 'string-lessp)
  (alias 'string-not-greater? 'string-not-greaterp)
  (alias 'string-not-less? 'string-not-lessp)
  (alias 'string-upcase! 'nstring-upcase) (alias 'string? 'stringp)
  (alias 'sublis! 'nsublis) (alias 'subset? 'subsetp) (alias 'subst! 'nsubst)
  (alias 'subst-if! 'nsubst-if) (alias 'subst-if-not! 'nsubst-if-not)
  (alias 'substitute! 'nsubstitute) (alias 'substitute-if! 'nsubstitute-if)
  (alias 'substitute-if-not! 'nsubstitute-if-not) (alias 'subtype? 'subtypep)
  (alias 'symbol? 'symbolp) (alias 'tail? 'tailp) (alias 'type? 'typep)
  (alias 'union! 'nunion) (alias 'upper-case? 'upper-case-p)
  (alias 'vector? 'vectorp) (alias 'wild-pathname? 'wild-pathname-p)
  (alias 'y-or-n? 'y-or-n-p) (alias 'yes-or-no? 'yes-or-no-p)
  (alias 'zero? 'zerop) t))
