;;; packages.el --- mcu layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: casey <casey@ubuntu1604>
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
;; added to `mcu-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `mcu/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `mcu/pre-init-PACKAGE' and/or
;;   `mcu/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst mcu-packages
  '((stm32 :location (recipe :fetcher github :repo "SL-RU/stm32-emacs"))))
(defun mcu/init-stm32 ()
  (use-package stm32)
  )
;; packages.el ends here
