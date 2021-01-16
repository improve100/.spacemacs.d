;;; packages.el --- org-roam layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: tong <tong@QingGangJian>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `org-roam-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `org-roam/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `org-roam/pre-init-PACKAGE' and/or
;;   `org-roam/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst org-roam-packages
  '(org-roam
    org-roam-server))

(defun org-roam/init-org-roam ()
  (use-package org-roam
    ;; :hook
    ;; (after-init . org-roam-mode)
    :custom
    (org-roam-directory "~/SparkleShare/mynotes")
    :init
    (progn
      ;; (spacemacs/declare-prefix "aor" "org-roam")
      (spacemacs/set-leader-keys
        "orl" 'org-roam
        "ori" 'org-roam-insert
        "orf" 'org-roam-find-file
        "org" 'org-roam-graph
        "orc" 'org-roam-capture)

      ;; (spacemacs/declare-prefix-for-mode 'org-mode "or" "org-roam")
      (spacemacs/set-leader-keys-for-major-mode 'org-mode
        "ol" 'org-roam
        "ot" 'org-roam-dailies-today
        "ob" 'org-roam-switch-to-buffer
        "of" 'org-roam-find-file
        "oi" 'org-roam-insert
        "og" 'org-roam-graph
        "oc" 'org-roam-capture)
      )))

(defun org-roam/init-org-roam-server ()
  (use-package org-roam-server
    :ensure t
    :config
    (setq org-roam-server-host "127.0.0.1"
          org-roam-server-port 8080
          org-roam-server-export-inline-images t
          org-roam-server-authenticate nil
          org-roam-server-network-poll t
          org-roam-server-network-arrows nil
          org-roam-server-network-label-truncate t
          org-roam-server-network-label-truncate-length 60
          org-roam-server-network-label-wrap-length 20)))

;;; packages.el ends here
