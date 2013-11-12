(define-derived-mode joomla-mode php-mode "Joomla"
  "Major mode for Joomla."
  (c-set-style "joomla-php-style")
  (setq c-basic-offset 8
	;use tabs for indentation
	indent-tabs-mode t
	;column beyond which automatic line-wrapping should happen.
	fill-column 78
	show-trailing-whitespace t)
  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;; autoamtic new lines after special characters
  (c-toggle-auto-newline 1)
)

;; Joomla style following coding guidelines.
(defconst php-joomla-style
  '((c-tab-always-indent        . t)
    (c-offsets-alist            . ((case-label . +)
				   ;; multiline arrays indent
				   (arglist-intro . +)
				   (arglist-cont-nonempty . c-lineup-math)
				   (arglist-close . c-lineup-close-paren)
				   ; nested block brace
                                   (substatement-open . 0) 
                                   (block-open        . 0)
				   ))
    (c-hanging-braces-alist     . ((substatement-open after)
				   (brace-list-open)))
    (c-hanging-colons-alist     . ((member-init-intro before)
                                   (inher-intro)
                                   (case-label after)
                                   (label after)
                                   (access-label after)))
    (c-cleanup-list             . (scope-operator
                                   empty-defun-braces
                                   ))
    (c-echo-syntactic-information-p . t))
  "Joomla Programming Style.")
(c-add-style "joomla-php-style" php-joomla-style)

(provide 'joomla-mode)
