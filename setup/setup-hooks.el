(defun my-turn-on-fill-mode ()
  (auto-fill-mode 1))
(defun my-turn-on-indicate-empty-lines ()
  (setq indicate-empty-lines t))
(defun my-turn-on-indicate-buffer-boundaries ()
  (setq indicate-buffer-boundaries
        '((top . left) (bottom . left))))
(defun my-show-trailing-whitespace ()
  (setq show-trailing-whitespace t))
(defun my-modify-syntax-table ()
  (modify-syntax-entry ?_ "w"))

(add-hook 'text-mode-hook 'my-turn-on-indicate-buffer-boundaries)
(add-hook 'text-mode-hook 'my-turn-on-indicate-empty-lines)
(add-hook 'text-mode-hook 'my-turn-on-fill-mode)
(add-hook 'text-mode-hook 'column-enforce-mode)
(add-hook 'text-mode-hook 'my-show-trailing-whitespace)
(add-hook 'text-mode-hook 'my-modify-syntax-table)
(add-hook 'prog-mode-hook 'my-turn-on-indicate-buffer-boundaries)
(add-hook 'prog-mode-hook 'my-turn-on-indicate-empty-lines)
(add-hook 'prog-mode-hook 'column-enforce-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode-enable)
(add-hook 'prog-mode-hook 'my-show-trailing-whitespace)
(add-hook 'prog-mode-hook 'my-modify-syntax-table)

(provide 'setup-hooks)
