(module reverser *
  (import scheme chicken)
  (use srfi-13)
  (define rev-version 1.0)
  (define (rev x)
    (cond ((string? x) (string-reverse x))
	  ((symbol? x) (string->symbol (rev (symbol->string x))))
	  ((list? x) (reverse x))
	  ((vector? x) (list->vector (rev (vector->list x))))
	  (else (error "can't reverse" x)))))