;;; packages.el --- confluence layer packages file for Spacemacs.
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
;; added to `confluence-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `confluence/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `confluence/pre-init-PACKAGE' and/or
;;   `confluence/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst confluence-packages
  '((confluence-wiki :location (recipe :fetcher github :repo "m-creations/confluence-el"))))
(defun con/init-stm32 ()
  (use-package stm32)
  )
;;; packages.el ends here
