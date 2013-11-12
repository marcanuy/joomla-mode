# Joomla mode for EMacs

Joomla mode is a major mode for EMacs based on PHP mode.
It implements Joomla Coding Standards.

## Setup

Copy `joomla-mode.el` to `~/elisp/`

Add the following to your `.emacs`.

    (add-to-list 'load-path "~/elisp")
    (load "joomla-mode")

    ;; Uncomment the following line to activate it automatically
    ;; when opening a .php file
    ;; (add-to-list 'auto-mode-alist '("\\.php$" . joomla-mode))
