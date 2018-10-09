;;; packages.el --- wiki layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: tong <tong@tong-ubuntu>
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
;; added to `wiki-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `wiki/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `wiki/pre-init-PACKAGE' and/or
;;   `wiki/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst wiki-packages
  '((confluence :location (recipe :fetcher github :repo "ngksternhagen/confluence-el"))))
  (defun wiki/init-confluence ()
    (use-package confluence)
    )


;;; packages.el ends here
