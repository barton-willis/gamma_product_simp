;;;; Author: Barton Willis, copyright 2022

;;;; Maxima code for simplifying expressions that involve products of
;;;; gamma functions.

;;;; This is free software; you can redistribute it and/or
;;;; modify it under the terms of the GNU General Public License GPLv3; see
;;;; https://www.gnu.org/licenses/quick-guide-gplv3.html


(defmfun $mtimesp (e) (mtimesp e))

(defmfun $mplusp (e) (mplusp e))

(defmfun $mexptp (e) (mexptp e))

;; Experimental function--Maxima's member tests equality with alike. This
;; is a bit more powerful, and it's specialized to list membership too.
(defmfun $mymember (x e) (consp
     (member x (cdr e) :test #'(lambda (x q) (eq t (meqp x q))))))