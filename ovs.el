;;; ovs.el --- Useful snippets for openvswitch outputs  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  rski

;; Author: rski <rski@rski-ubuntu1>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:
(require 'hi-lock)

(defun ovs-hl-table(table-num face)
  "Highlight all table:$table-num and table=$table-num occurrences in a buffer."
  (interactive (list
                (read-number "Table number:")
                (hi-lock-read-face-name)))
  (highlight-regexp (format "table\\(:\\|=\\)%s\\(,\\|$\\)" table-num) face)
  )

(provide 'ovs)
;;; ovs.el ends here
