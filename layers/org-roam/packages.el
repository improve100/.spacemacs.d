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
    :after org
    :commands (org-roam-buffer
               org-roam-setup
               org-roam-capture
               org-roam-node-find)
    ;; :custom
    ;; (org-roam-directory "~/SparkleShare/mynotes")
    :init
    (progn
      ;; (spacemacs/declare-prefix "aor" "org-roam")
      (setq org-roam-directory (file-truename "~/SparkleShare/mynotes"))
      (setq org-roam-db-location (expand-file-name ".cache/org-roam.db" user-emacs-directory))
      (setq org-roam-file-extensions '("org"))

      (setq org-id-link-to-org-use-id t)

      ;; (setq org-roam-completion-everywhere t)

      ;; disable V1 to V2
      (setq org-roam-v2-ack t)

      (spacemacs/set-leader-keys
        "orl" 'org-roam-buffer-toggle
        "ori" 'org-roam-node-insert
        "orf" 'org-roam-node-find
        "org" 'org-roam-graph
        "ora" 'org-id-get-create
        "oru" 'org-id-update-id-locations
        "orc" 'org-roam-capture)

      ;; (spacemacs/declare-prefix-for-mode 'org-mode "or" "org-roam")
      (spacemacs/set-leader-keys-for-major-mode 'org-mode
        "ol" 'org-roam-buffer-toggle
        "ot" 'org-roam-dailies-today
        "of" 'org-roam-node-find
        "oi" 'org-roam-node-insert
        "oa" 'org-id-get-create
        "ou" 'org-id-update-id-locations
        "og" 'org-roam-graph
        "ou" 'org-id-update-id-locations
        "ora" 'org-id-get-create
        "oc" 'org-roam-capture)

      (org-roam-setup)
      )))

;; (defun org-roam/init-org-roam-server ()
;;   (use-package org-roam-server
;;     :ensure t
;;     :config
;;     (setq org-roam-server-host "127.0.0.1"
;;           org-roam-server-port 8080
;;           org-roam-server-export-inline-images t
;;           org-roam-server-authenticate nil
;;           org-roam-server-network-poll t
;;           org-roam-server-network-arrows nil
;;           org-roam-server-network-label-truncate t
;;           org-roam-server-network-label-truncate-length 60
;;           org-roam-server-network-label-wrap-length 20)))

;;; packages.el ends here
