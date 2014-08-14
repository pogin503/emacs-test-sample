;;; ;; test/myfile-test.el --- myfile-test.el
;; This program is free software
;;; Commentary:
;;; Code:
(require 'ert)
(require 'myfile)

(ert-deftest myfile:addition-test ()
  (should (= (myfile:addition 1 2) 3)))

(provide 'myfile-test)

;;; myfile-test.el ends here
