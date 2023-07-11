(require 'org)
(letrec ((org-file (expand-file-name "configuration.org" user-emacs-directory))
         (el-file  (concat (file-name-sans-extension org-file) ".el"))
         (elc-file (concat (file-name-sans-extension el-file) ".elc")))
  (if (file-readable-p elc-file)
      (load-file elc-file)
    (org-babel-load-file org-file)))
(put 'narrow-to-page 'disabled nil)
