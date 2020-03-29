;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(javascript
     ;; csv
     ;; javascript
     ;; html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; ivy
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t)
     ;; ycmd
     better-defaults
     cmake
     emacs-lisp
     lsp
     ;; (python :variables python-backend 'anaconda)
     ;; (python :variables python-backend 'lsp)
     (python :variables
            python-backend 'lsp
            python-lsp-server 'mspyls
            python-lsp-git-root "~/3rdparty/python-language-server")
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-google-style t
            c-c++-backend 'lsp-ccls
            c-c++-lsp-enable-semantic-highlight 'rainbow)
     ;; imenu-list
     ;; git
     ;; github
     ;; markdown
     org
     ;;lsp
     ;; ycmd
     yaml
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     (spell-checking :variables spell-checking-enable-by-default nil)
     ;; version-control
     ;; mcu
     ;; eaf
     graphviz
     mu4e
     gnus
     protobuf
     gpu
     chinese
     (plantuml :variables
               plantuml-jar-path "/home/tong/bin/plantuml.jar"
               org-plantuml-jar-path "/home/tong/bin/plantuml.jar")
     (latex :variables latex-build-command "LaTeX")
     ;; yasnippet
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(youdao-dictionary
                                      gnu-elpa-keyring-update
                                      (org-fragtog :location (recipe :fetcher github :repo "io12/org-fragtog")))

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(smartparens)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'random
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 1))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light)
   dotspacemacs-mode-line-theme 'spacemacs

   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Ubuntu Mono"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq configuration-layer-elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
  )


(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; (setenv "PYTHONPATH" "~/.pyenv/shims/python")
  ;; (setenv "PYTHONPATH" "/opt/ros/kinetic/lib/python2.7/dist-packages")
  ;; (require 'evil)
  ;; (setq lsp-python-ms-dir (expand-file-name "~/3rdparty/python-language-server/output/bin/Release"))
  (setq lsp-python-ms-executable (expand-file-name "~/3rdparty/python-language-server/output/bin/Release/linux-x64/publish/Microsoft.Python.LanguageServer"))
  (setq lsp-disabled-clients '(pyls))
  (evil-mode 1)
  (setcdr evil-insert-state-map nil)
  (define-key evil-insert-state-map [escape] 'evil-normal-state)
  (setq create-lockfiles nil)
  (spacemacs/declare-prefix "on" "notebooks")
  (defun mynotes ()
    (interactive)
    (dired "~/SparkleShare/mynotes"))
  (spacemacs/set-leader-keys "on" 'mynotes)
;;  (eval-after-load 'dired
;;    '(progn
;;       (define-key dired-mode-map (kbd "c-i") 'dired-kill-subdir)))
;;  (global-set-key (kbd "k") '(lambda() (interactive) (execute-kbd-macro "i") (evil-ret) (evil-escape)))
;;      (define-key dired-mode-map (kbd "c-i") 'dired-kill-subdir)))
  
  (add-to-list 'auto-mode-alist '("\\.launch\\'" . nxml-mode))
  (setq-default persp-save-dir "~/.spacemacs.d/layout/")
  (defun load-my-layout ()
    (interactive)
    (persp-load-state-from-file (concat persp-save-dir "mylayout")))
  (defun save-my-layout ()
    (interactive)
    (persp-save-state-to-file (concat persp-save-dir "mylayout")))
  (spacemacs/set-leader-keys "oll" 'load-my-layout)
  (spacemacs/set-leader-keys "oll" 'load-my-layout)
  (spacemacs/set-leader-keys "ols" 'save-my-layout)
  (spacemacs/set-leader-keys "ols" 'save-my-layout)
  (setq plantuml-default-exec-mode 'jar)

  (defun my-org-screenshot ()
    "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
    (interactive)
    (setq filename
          (concat
           (make-temp-name
            (concat (buffer-file-name)
                    "_"
                    (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
    (call-process "import" nil nil nil filename)
    (insert (concat "[[" filename "]]"))
    (org-display-inline-images))
  ;;(spacemacs/set-leader-keys "og" 'mynotebookgit)
  ;; (define-key dired-mode-map (kbd "i") 'dired-kill-subdir)

  ;; (use-package dired-subtree :ensure t
  ;;   :after dired
  ;;   :config
  ;;   (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
  ;;   (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))

  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  ;; (add-hook 'python-mode-hook 'anaconda-mode) ;; python completion
  (add-hook 'c++-mode-hook 'company-mode)
  ;; (add-hook 'c++-mode-hook 'ycmd-mode)
  ;; (add-hook 'c-mode-hook 'ycmd-mode)
  (add-hook 'org-mode-hook (lambda ()
                             (setq truncate-lines nil)))
  ;; (setq python-shell-completion-native-enable nil)
  ;; (eval-after-load "company"
    ;; '(add-to-list 'company-backends 'company-anaconda))

  ;; (setq ycmd-server-command '("python" "~/.vim/bundle/youcompleteme/third_party/ycmd/ycmd/"))
  ;; (setq ycmd-force-semantic-completion t)

  (setq org-agenda-files '("~/SparkleShare/mynotes/gtd/"))
  (setq org-src-fontify-natively t)
  (setq org-todo-keywords '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d)" "ABORT(a)")))
  (setq org-capture-templates
          '(("t" "todo" entry (file+headline "~/SparkleShare/mynotes/gtd/2020_task.org" "工作安排")
             "* TODO [#A] %?\n  %i%T\n"
             :empty-lines 1)
            ("b" "buglist" entry (file+headline "~/SparkleShare/mynotes/gtd/buglist.org" "bug收集")
             "* TODO [#B] %?\n  %i%T\n"
             :empty-lines 1)
            ("c" "chrome" entry (file+headline "~/SparkleShare/mynotes/gtd/chrome.org" "网站收集")
             "* TODO [#C] %?\n  %i%T\n"
             :empty-lines 1)
            ))
  (setq org-agenda-log-mode-items '(closed clock state))
  ;; (eval-after-load 'company
  ;;   '(add-to-list 'company-backends 'company-irony))
  ;; (setq company-backends-c-mode-common '((company-c-headers
  ;;                                         company-ycmd
  ;;                                         company-dabbrev :with company-yasnippet)))
  ;;; custom org emhasis color
  (require 'org)
  (require 'cl)   ; for delete*
  (setq org-emphasis-alist
        (cons '("+" '(:strike-through t :foreground "gray"))
              (delete* "+" org-emphasis-alist :key 'car :test 'equal)))

  (setq org-emphasis-alist
        (cons '("*" '(:emphasis t :foreground "red"))
              (delete* "*" org-emphasis-alist :key 'car :test 'equal)))

  ;; (org-table ((t (:foreground "#6c71c4" :family "Ubuntu Mono"))))
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))
  (add-hook 'org-mode-hook 'org-fragtog-mode)
  ;; (add-hook 'org-mode-hook (lambda () (yas-load-directory (expand-file-name "~/.spacemacs.d/snippets/."))))

  (defun org-mode-my-init ()
    (define-key org-mode-map (kbd "×") (kbd "*"))
    (define-key org-mode-map (kbd "－") (kbd "-"))
  )
  (add-hook 'org-mode-hook 'org-mode-my-init)
  ;; (set-default-font "DejaVu Sans Mono 10")
  ;; (set-fontset-font "fontset-default" 'unicode"WenQuanYi Bitmap Song 12") ;;for linux
  (setq face-font-rescale-alist '(("宋体" . 1.2)
                                  ("微软雅黑" . 1.2)
                                  ("Microsoft Yahei" . 1.2)
                                  ("WenQuanYi Zen Hei" . 1.2)))

  ;; (add-to-list 'load-path "~/.spacemacs.d/snipptes")
  ;; (require 'yasnippet)
  ;; (yas-global-mode 1)

  ;; (defun ztlevi/load-yasnippet ()
  ;;   (interactive)
  ;;   (unless yas-global-mode
  ;;     (progn
  ;;       (yas-global-mode 1)
  ;;       (setq my-snippet-dir (expand-file-name "~/.spacemacs.d/snippets"))
  ;;       (setq yas-snippet-dirs  my-snippet-dir)
  ;;       (yas-load-directory my-snippet-dir)
  ;;       (setq yas-wrap-around-region t)))
  ;;   (yas-minor-mode 1))

  ;; ;; remove yas-installed-snippets-dir from yas-snippet-dirs
  ;; (with-eval-after-load 'yasnippet
  ;;   (setq yas-snippet-dirs (remq 'yas-installed-snippets-dir yas-snippet-dirs)))

  ;; (set-face-background 'secondary-selection "gray")
  ;; (setq-default yas-prompt-functions '(yas-ido-prompt yas-dropdown-prompt))
  ;; (mapc #'(lambda (hook) (remove-hook hook 'spacemacs/load-yasnippet)) '(prog-mode-hook
  ;;                                                                        org-mode-hook
  ;;                                                                        markdown-mode-hook))
  ;; (spacemacs/add-to-hooks 'ztlevi/load-yasnippet '(prog-mode-hook
  ;;                                                  markdown-mode-hook
  ;;                                                  org-mode-hook))

;; Set up some common mu4e variables
  ;; (setq mu4e-maildir "~/mail"
  ;;       mu4e-drafts-folder "/Drafts"
  ;;       mu4e-sent-folder   "/Sent Messages"
  ;;       mu4e-refile-folder "/Archive"
  ;;       mu4e-trash-folder "/Deleted Messages"
  ;;       mu4e-get-mail-command "mbsync -a"
  ;;       mu4e-update-interval nil
  ;;       mu4e-compose-signature-auto-include nil
  ;;       mu4e-view-show-images t
  ;;       mu4e-view-show-addresses t)
  ;; ;;; Mail directory shortcuts
  ;; (setq mu4e-maildir-shortcuts
  ;;       '(("/INBOX" . ?i)
  ;;         ("/Sent Messages" . ?s)
  ;;         ("/Junk" . ?j)
  ;;         ("/Deleted Messages" . ?d)
  ;;         ))
 
  ;; (setq mu4e-get-mail-command "offlineimap")
 
  ;; something about ourselves
  ;; (setq user-mail-address "improve100@qq.com"
  ;;       user-full-name  "Casey Tong"
  ;;       mu4e-compose-signature
  ;;       (concat
  ;;        "Casey Tong\n"
  ;;        "Email: improve100@qq.com\n"
  ;;        "\n")
  ;;       mu4e-compose-signature-auto-include t
  ;;       )
  ;;send mail
  ;; (require 'eaf)
  (require 'smtpmail)
  (setq message-send-mail-function 'smtpmail-send-it
        smtpmail-stream-type 'starttls
        smtpmail-default-smtp-server "smtp.qq.com"
        smtpmail-smtp-server "smtp.qq.com"
        smtpmail-smtp-service 587)
(defvar my-mu4e-account-alist
  '(("mail"
     (mu4e-maildir "~/mail")
     (user-mail-address "improve100@qq.com")
     (smtpmail-smtp-user "improve100@qq.com")
     )
    ("msmail"
     (mu4e-maildir "~/msmail")
     (user-mail-address "tongchangjin@maxsense.ai")
     (smtpmail-smtp-user "tongchangjin@maxsense.ai")
     ))) 

(defun my-mu4e-set-account ()
  "Set the account for composing a message."
  (interactive)
  (let* ((account
          (if mu4e-compose-parent-message
              (let ((maildir (mu4e-message-field mu4e-compose-parent-message :maildir)))
                (string-match "/\\(.*?\\)/" maildir)
                (match-string 1 maildir))
            (completing-read (format "Compose with account: (%s) "
                                     (mapconcat #'(lambda (var) (car var))
                                                my-mu4e-account-alist "/"))
                             (mapcar #'(lambda (var) (car var)) my-mu4e-account-alist)
                             nil t nil nil (caar my-mu4e-account-alist))))
         (account-vars (cdr (assoc account my-mu4e-account-alist))))
    (if account-vars
        (mapc #'(lambda (var)
                  (set (car var) (cadr var)))
              account-vars)
      (error "No email account found"))))

(add-hook 'mu4e-main-mode-hook 'my-mu4e-set-account) 
  (setq mu4e-view-show-images t)
 
  ;; save attachment to my desktop (this can also be a function)
  (setq mu4e-attachment-dir "~/Downloads")
 
  ;; sync email from imap server
  (setq mu4e-get-mail-command "offlineimap"
        mu4e-update-interval 300)
  ;; notifcation
  (setq mu4e-enable-notifications t)
  (mu4e-alert-enable-mode-line-display)

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (lispy zoutline powerline spinner org-plus-contrib hydra parent-mode projectile flx smartparens iedit anzu evil goto-chg undo-tree highlight pkg-info let-alist request epl bind-map bind-key f dash s helm avy helm-core popup ycmd request-deferred deferred cmake-ide levenshtein stm32 magit-gh-pulls github-search github-clone github-browse-file gist gh marshal logito pcache ht dash-functional anaconda-mode pythonic wgrep smex ivy-hydra flyspell-correct-ivy counsel-projectile counsel ivy names chinese-word-at-point org-category-capture alert log4e gntp gitignore-mode flyspell-correct pos-tip flycheck magit magit-popup git-commit ghub async with-editor company yasnippet auto-compile auto-complete macrostep elisp-slime-nav packed youdao-dictionary yapfify ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org swiper spaceline smeargle restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort popwin pip-requirements persp-mode pcre2el paradox orgit org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file neotree mwim move-text monokai-theme mmm-mode markdown-toc magit-gitflow lorem-ipsum live-py-mode linum-relative link-hint indent-guide hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gtags helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md ggtags fuzzy flyspell-correct-helm flycheck-ycmd flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu dumb-jump disaster diminish define-word cython-mode company-ycmd company-statistics company-c-headers company-anaconda column-enforce-mode cmake-mode clean-aindent-mode clang-format auto-yasnippet auto-highlight-symbol auto-dictionary aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C")))))


