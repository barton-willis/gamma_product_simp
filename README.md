# gamma_product_simp

Maxima code for simplifying expressions that involve gamma functions. Here are some examples:
~~~
(%i1)	load(gamma_simp)$

(%i2)	gamma_simp(gamma(z)*gamma(1-z));
(%o2)	%pi/sin(%pi*z)

(%i3)	gamma_simp(gamma(1/4)*gamma(3/4));
(%o3)	sqrt(2)*%pi

(%i4)	gamma_simp(gamma(z)*gamma(z + 1/2));
(%o4)	sqrt(%pi)*2^(1-2*z)*gamma(2*z)

(%i5)	gamma_simp(x*gamma(x)+gamma(x+3)/(x+2));
(%o5)	x*gamma(x+1)+2*gamma(x+1)
~~~
