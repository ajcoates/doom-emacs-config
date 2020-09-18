;;; lang/cc/config.el -*- lexical-binding: t; -*-

(add-to-list 'exec-path "$HOME/usr/lib/llvm-6.0/lib/clang/6.0.0/include")

(after! rtags
  (setq rtags-path "/home/dodge/bin")

  (rtags-enable-standard-keybindings)

  (add-hook 'c-mode-hook 'rtags-start-process-unless-running)
  (add-hook 'c++-mode-hook 'rtags-start-process-unless-running))

;;; C/C++
(after! cc-mode
  (set-pretty-symbols! '(c-mode c++-mode) nil)
  (set-popup-rule! "*compilation*" :side 'bottom :height 20 :quit #'doom/popup-ctrl-g-close :select t)
  (set-popup-rule! "*input/output of .*" :quit :quit #'doom/popup-ctrl-g-close ))
