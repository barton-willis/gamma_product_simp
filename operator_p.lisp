/* Author: Barton Willis, copyright 2022

Common Lisp utilities for the gamma_simp package. Possibly the writing these
functions in CL instead of Maxima makes them slightly more efficient. The Maxima
versions are:

mtimesp(e) := not mapatom(e) and part(e,0) = "*";
mplusp(e) := not mapatom(e) and part(e,0) = "+";
mexptp(e) := not mapatom(e) and part(e,0) = "^"; 

See LICENSE.md for licensing information.
*/

/* Depending on the value of inflag, these functions either look at the internal
   or displayed structure of the input. */
(defmfun $mtimesp (x) (and (not ($mapatom x)) (equal ($part x 0) "*")))
(defmfun $mplusp  (x) (and (not ($mapatom x)) (equal ($part x 0) "+")))
(defmfun $mexptp  (x) (and (not ($mapatom x)) (equal ($part x 0) "^")))
