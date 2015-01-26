(defmodule unit-pattern-match-util-tests
  (behaviour ltest-unit)
  (export all)
  (import
    (from ltest
      (check-failed-assert 2)
      (check-wrong-assert-exception 2))))

(include-lib "ltest/include/ltest-macros.lfe")
(include-lib "include/pattern-match-util.lfe")

(deftest matching-ok
  (let ([(match-ok (tuple x y)) #(ok #(1 2))])
    (is-equal x 1)
    (is-equal y 2)))


(deftest maching-ok-alet
  (alet-ok #(ok #(1 2))
	   (is-equal it #(1 2))))

(deftest matching-error
  (let ([(match-error msg) #(error notfound)])
    (is-equal msg 'notfound)))

(deftest matching-error-alet
  (alet-error #(error notfound)
	      (is-equal it 'notfound)))