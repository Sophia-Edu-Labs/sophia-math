#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping]
#v(40pt)
#only("1-")[- Function between two vector spaces]
#only("2-")[- Preserves vector addition and scalar multiplication]
#only("1")[
#voiceover("A linear mapping, also known as a linear transformation, is a function between two vector spaces.")
]
#only("2")[
#voiceover("What makes it special is that it preserves two key operations: vector addition and scalar multiplication.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Preservation of Vector Addition]
#v(40pt)
#only("1-")[- For any vectors $u, v$: $T(u + v) = T(u) + T(v)$ ➕]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create vectors
u = np.array([1, 2])
v = np.array([3, 1])

# Create a linear transformation matrix
T = np.array([[1, 1], [0, 1]])

# Apply transformation
Tu = T @ u
Tv = T @ v
Tuv = T @ (u + v)

# Plot original vectors
plt.quiver([0, 0], [0, 0], [u[0], v[0]], [u[1], v[1]], angles='xy', scale_units='xy', scale=1, color=['b', 'g'])
plt.text(u[0], u[1], 'u', color='b', fontsize=14)
plt.text(v[0], v[1], 'v', color='g', fontsize=14)

# Plot transformed vectors
plt.quiver([0, 0, Tu[0]+Tv[0]], [0, 0, Tu[1]+Tv[1]], [Tu[0], Tv[0], -Tuv[0]], [Tu[1], Tv[1], -Tuv[1]], angles='xy', scale_units='xy', scale=1, color=['c', 'm', 'r'])
plt.text(Tu[0], Tu[1], 'T(u)', color='c', fontsize=14)
plt.text(Tv[0], Tv[1], 'T(v)', color='m', fontsize=14)
plt.text(Tu[0]+Tv[0], Tu[1]+Tv[1], 'T(u+v)', color='r', fontsize=14)

plt.xlim(-1, 5)
plt.ylim(-1, 5)
plt.grid()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("First, let's look at the preservation of vector addition. For any two vectors u and v, a linear mapping T applied to the sum of u and v is equal to the sum of T applied to u and T applied to v.")
]
#only("2")[
#voiceover("Here's a visualization. The blue and green vectors are u and v. When we apply the linear mapping T, we get the cyan and magenta vectors T of u and T of v. Notice that when we add u and v first and then apply T, shown in red, we get the same result as adding T of u and T of v.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Preservation of Scalar Multiplication]
#v(40pt)
#only("1-")[- For any vector $u$ and scalar $c$: $T(c u) = c T(u)$ 🔢]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a vector and scalar
u = np.array([2, 1])
c = 2

# Create a linear transformation matrix
T = np.array([[1, 1], [0, 1]])

# Apply transformation
Tu = T @ u
Tcu = T @ (c * u)

# Plot original vector
plt.quiver(0, 0, u[0], u[1], angles='xy', scale_units='xy', scale=1, color='b')
plt.text(u[0], u[1], 'u', color='b', fontsize=14)

# Plot scaled vector
plt.quiver(0, 0, c*u[0], c*u[1], angles='xy', scale_units='xy', scale=1, color='g')
plt.text(c*u[0], c*u[1], 'cu', color='g', fontsize=14)

# Plot transformed vectors
plt.quiver(0, 0, Tu[0], Tu[1], angles='xy', scale_units='xy', scale=1, color='c')
plt.text(Tu[0], Tu[1], 'T(u)', color='c', fontsize=14)
plt.quiver(0, 0, Tcu[0], Tcu[1], angles='xy', scale_units='xy', scale=1, color='m')
plt.text(Tcu[0], Tcu[1], 'T(cu)', color='m', fontsize=14)

plt.xlim(-1, 6)
plt.ylim(-1, 6)
plt.grid()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Next, let's consider the preservation of scalar multiplication. For any vector u and scalar c, a linear mapping T applied to the product of c and u is equal to c times T applied to u.")
]
#only("2")[
#voiceover("In this visualization, the blue vector is u. When we scale it by a factor of 2, we get the green vector cu. Applying the linear mapping T to u gives us the cyan vector T of u. And if we scale u first and then apply T, shown in magenta, we get the same result as scaling T of u by 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear mapping: function between vector spaces]
#v(20pt)
#only("2-")[- Preserves vector addition: $T(u + v) = T(u) + T(v)$]
#v(20pt)
#only("3-")[- Preserves scalar multiplication: $T(c u) = c T(u)$]
#only("1")[
#voiceover("To summarize, a linear mapping is a function between two vector spaces.")
]
#only("2")[
#voiceover("It preserves vector addition, meaning that T of u plus v equals T of u plus T of v.")
]
#only("3")[
#voiceover("It also preserves scalar multiplication, so T of cu equals c times T of u. These properties are what define a linear mapping and make it a fundamental concept in linear algebra.")
]
]