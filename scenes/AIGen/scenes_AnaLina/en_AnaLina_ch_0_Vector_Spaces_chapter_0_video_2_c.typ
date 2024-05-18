#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Space Properties]
#v(40pt)
Which of the following is a property of a vector space?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Closure under addition]#only("2-")[#text(fill:green)[a) Closure under addition]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Closure under scalar multiplication]#only("3-")[#text(fill:green)[b) Closure under scalar multiplication]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Existence of a zero vector]#only("4-")[#text(fill:green)[c) Existence of a zero vector]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above]]
#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Closure under addition is indeed a property of vector spaces. This means that the sum of any two vectors in the space is also a vector in the space.")]
#only("3")[#voiceover("Closure under scalar multiplication is also a property. If you multiply any vector in the space by a scalar, the result is still in the vector space.")]
#only("4")[#voiceover("The existence of a zero vector is another crucial property. This is the vector that, when added to any other vector, gives that same vector.")]
#only("5")[#voiceover("Since all of these are properties of vector spaces, the correct answer is d) All of the above. Let's look at each property in more detail.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Closure Properties 🔒]
#v(40pt)
- If $vec(u)$ and $vec(v)$ are in the vector space $V$, then:
  - $vec(u) + vec(v)$ is also in $V$ (closure under addition ➕)
  - $c vec(u)$ is also in $V$ for any scalar $c$ (closure under scalar multiplication ✖)
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define vectors
u = np.array([1, 2])
v = np.array([3, 1])

# Plot vectors
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, u[0], u[1], angles='xy', scale_units='xy', scale=1, color='b', label='u')
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='g', label='v')
plt.quiver(0, 0, u[0]+v[0], u[1]+v[1], angles='xy', scale_units='xy', scale=1, color='r', label='u+v')
plt.quiver(0, 0, 2*u[0], 2*u[1], angles='xy', scale_units='xy', scale=1, color='purple', label='2u')

plt.xlim(-1, 6)
plt.ylim(-1, 6)
plt.grid()
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[#voiceover("The closure properties ensure that vector spaces are closed under certain operations.")]
#only("2")[#voiceover("For example, if we have two vectors u and v in a vector space V, then their sum u plus v is also in V. This is closure under addition.")]
#only("3")[#voiceover("Similarly, if we multiply any vector u in V by a scalar c, the result c times u is also in V. This is closure under scalar multiplication.")]
#only("4")[#voiceover("These properties are essential for vector spaces and allow us to freely perform these operations while staying within the space.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zero Vector 0️⃣]
#v(40pt)
- Every vector space contains a unique zero vector $vec(0)$
- For any vector $vec(u)$ in the space:
  - $vec(u) + vec(0) = vec(u)$
  - $0 vec(u) = vec(0)$
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define vectors
u = np.array([2, 1])
zero = np.array([0, 0])

# Plot vectors
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, u[0], u[1], angles='xy', scale_units='xy', scale=1, color='b', label='u')
plt.quiver(0, 0, zero[0], zero[1], angles='xy', scale_units='xy', scale=1, color='r', label='0')
plt.quiver(u[0], u[1], zero[0], zero[1], angles='xy', scale_units='xy', scale=1, color='g', label='u+0')

plt.xlim(-1, 4)
plt.ylim(-1, 4)
plt.grid()
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[#voiceover("Every vector space contains a special vector called the zero vector.")]
#only("2")[#voiceover("When you add the zero vector to any other vector u, you get u back. It's like adding zero to a number.")]
#only("3")[#voiceover("Also, if you multiply any vector u by the scalar zero, you get the zero vector. This is similar to multiplying a number by zero.")]
#only("4")[#voiceover("The zero vector is a crucial part of the structure of vector spaces and plays a role similar to the number zero in regular arithmetic.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
The key properties of a vector space $V$ are:
- Closure under addition: $vec(u) + vec(v)$ is in $V$ if $vec(u)$ and $vec(v)$ are in $V$
- Closure under scalar multiplication: $c vec(u)$ is in $V$ if $vec(u)$ is in $V$ and $c$ is a scalar
- Existence of a zero vector $vec(0)$ such that $vec(u) + vec(0) = vec(u)$ for all $vec(u)$ in $V$
#v(20pt)
#only("2-")[There are other properties too, like the existence of negative vectors and the distributive property, but these are the key ones that define a vector space. 🌟]
#only("1")[#voiceover("In summary, the key properties of a vector space are closure under addition and scalar multiplication, and the existence of a zero vector.")]
#only("2")[#voiceover("There are other properties too, like the existence of negative vectors and the distributive property, but these are the ones that fundamentally define what a vector space is.")]
#only("3")[#voiceover("Understanding these properties is crucial for working with vector spaces and linear algebra in general.")]
#only("4")[#voiceover("Great work on identifying all of these properties! You've got a solid grasp on the foundations of vector spaces.")]
]