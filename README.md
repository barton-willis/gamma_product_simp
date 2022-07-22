# gamma_product_simp

Maxima code for simplifying expressions that involve products of gamma functions.

Here are some examples:
~~~
(%i1)	load(gamma_product_simp)$

(%i2)	gamma_product_simp(gamma(z)*gamma(1-z));
(%o2)	%pi/sin(%pi*z)

(%i3)	gamma_product_simp(gamma(1/4)*gamma(3/4));
(%o3)	sqrt(2)*%pi

(%i4)	gamma_product_simp(gamma(z)*gamma(z + 1/2));
(%o4)	sqrt(%pi)*2^(1-2*z)*gamma(2*z)

(%i5)	gamma_product_simp(gamma((-1)/4)*gamma((-3)/4));
(%o5)	(2^(9/2)*%pi)/3

(%i6)	gamma_product_simp(x*gamma(x)+gamma(x+3)/(x+2));
(%o6)	(x^2+2*x)*gamma(x)
~~~
Arguably, the last example (%o6) is a simplification of a sum, not a product of gamma functions. If `gamma_product_simp` is extended to
recognize other such simplifications of non-products, maybe I will renamed to `gamma_simp.`
