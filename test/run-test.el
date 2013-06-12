;; test/run-test.el

(message "Running tests on Emacs %s" emacs-version)

;; Utils
(defun myfile:test-join-path (path &rest rest)
  "Join a list of PATHS with appropriate separator (such as /).

\(fn &rest paths)"
  (if rest
      (concat (file-name-as-directory path) (apply 'myfile:test-join-path rest))
    path))

(defconst myfile:test-dir
  (if load-file-name
      (file-name-directory load-file-name)
    ;; Fall back to default directory (in case of M-x eval-buffer)
    default-directory)
  "Directory of the test suite.")

(defconst myfile:root-dir (expand-file-name (concat myfile:test-dir "..")))

;; Setup `load-path'
(mapc (lambda (p) (add-to-list 'load-path p))
      (list myfile:test-dir
            myfile:root-dir))

(load "myfile-test")

;; Run tests
(if noninteractive
    (ert-run-tests-batch-and-exit)
  (ert t))
