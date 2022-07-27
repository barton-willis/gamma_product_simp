# Gamma function simplification

Maxima code for simplifying expressions that involve gamma functions. 

## Installation

To use the `gamma_simp` package, copy the file `gamma_simp.mac` to a path that Maxima can find. To load the package, enter `load(gamma_simp)` at a Maxima command line.

To view the path that Maxima searches to find a package, enter `file_search_maxima;` at a Maxima command line. 

## Usage

There are two user level functions in the package. They are
`gamma_simp` and `factorial_simp.` Both of these functions take a single Maxima expression as input and both return a simplification of the input. 

_Option varibles:_ The option variables `radsubstflag` and `ratfac` sometimes alter the results of `gamma_simp` and `factorial_simp.` 

_Related functions:_ `factcomb,` `minfactorial,` `makegamma,` and `makefactorial.`

## Examples

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

(%i6)	gamma_simp((k - n) *binomial(n,k)  + n * binomial(n-1,k));
(%o6)	0
~~~

## Implementation

The function `gamma_simp` matches subexpressions of the input to various gamma function identities. The function `gamma_simp` does not explicitly use Maxima's pattern matcher.

## Identities

$$ 
\dfrac{\Gamma\left(z+1\right)}{z} = \Gamma\left(z\right), \quad z \in \mathbf{C_\neq 0} 
$$ 

$$ 
\Gamma\left(z\right)\Gamma\left(1-z\right)= \dfrac{\uppi}{\sin\left(\uppi z\right)},  \quad z \in \mathbf{C} \setminus \mathbf{Z}, 
$$

$$
\prod_{k=0}^{n-1}\Gamma\left (z+\frac{k}{n}\right) = (2\uppi)^{(n-1)/2}n^{1/2-nz}  \Gamma \left(n z \right)
$$

$$
\Gamma\left(\dfrac{1}{2}+\mathrm{i}y\right)\Gamma\left(\dfrac{1}{2}-\mathrm{i}%
y\right)=\dfrac{\uppi}{\cosh\left(\uppi y\right)},
$$

$$
\Gamma\left(\mathrm{i} y\right) \Gamma\left(-\mathrm{i} y\right)  = 
\frac{\uppi}{y\sinh\left(\uppi y\right)}, \quad \y \in \mathbf{R}_{\neq 0}
$$




See: http://dlmf.nist.gov/5.5.E1, 


## Thanks

Part of the test file (`rtest_gamma_simp`) is adapted from the SymPy package for simplification of gamma functions. I thank the SymPy developers for making this resource available.

Additionally, I thank readers of the Maxima list Oscar Benjamin, Stavros Macrakis, and Raymond Toy for suggestions and encouragement. Of course, all bugs are mine.


_Reference:_ https://github.com/sympy/sympy/blob/master/sympy/simplify/tests/test_gammasimp.py 
