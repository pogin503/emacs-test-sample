;; test/myfile-test.el
(require 'ert)

(require 'myfile)

(ert-deftest myfile:addition-test ()
  (should (= (myfile:addition 1 2) 3)))
