;;; Directory Local Variables
;;; See Info node `(emacs) Directory Variables' for more information.
((c-mode . ((indent-tabs-mode .  nil)))
 (c++-mode . ((indent-tabs-mode .  nil)))
 (nil . ((flycheck-clang-language-standard . "c++11")
         (flycheck-clang-include-path . ("."
                                         "src"
                                         "lib/asio/include"
                                         "lib/autocheck/include"
                                         "lib/cereal/include"
                                         "lib/util"
                                         "lib/soci/src/core"
                                         "lib/soci/src/backends/sqlite3"
                                         "lib/xdrpp"
                                         "lib/sqlite"
                                         "lib/libsodium/src/libsodium"
                                         "lib/libmedida/src"
                                         ))
         (whitespace-style . (face tabs tab-mark trailing lines-tail empty))
         (c-file-style . "stroustrup")
         (eval . (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode)))
         (eval . (if (boundp 'c-offsets-alist)
                     (add-to-list 'c-offsets-alist '(innamespace . -))))
         (eval . (setq compile-command
                       (concat "make"
                               " -wC "
                               (locate-dominating-file
                                (or buffer-file-name ".") ".dir-locals.el")
                               " -j $(nproc)"))))))
