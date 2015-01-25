(defmodule pattern-match-util-util
  (export all))

(defun get-pattern-match-util-version ()
  (lutil:get-app-src-version "src/pattern-match-util.app.src"))

(defun get-versions ()
  (++ (lutil:get-version)
      `(#(pattern-match-util ,(get-pattern-match-util-version)))))
