#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Generating Sets 🌟]
#v(40pt)
#only("1-")[- Also known as spanning sets 🌐]
#v(20pt)
#only("2-")[- Set of vectors whose linear combinations fill the entire vector space 🧩]
#v(20pt)
#only("3-")[- Does not need to be linearly independent or finite 🔄]
#v(20pt)
#only("4-")[- Must span the space 🌌]

#only("1")[
#voiceover("Let's recap what we've learned about generating sets, also known as spanning sets.")
]
#only("2")[
#voiceover("A generating set is a set of vectors whose linear combinations fill the entire vector space.")
]
#only("3")[
#voiceover("Interestingly, a generating set does not need to be linearly independent or finite.")
]
#only("4")[
#voiceover("However, it must span the space, meaning that every vector in the space can be expressed as a linear combination of the vectors in the generating set.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v1 = np.array([1, 0])
v2 = np.array([0, 1])

# Create a grid of points
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Compute the linear combinations
Z = np.zeros_like(X)
for i in range(X.shape[0]):
    for j in range(X.shape[1]):
        Z[i,j] = X[i,j] * v1[0] + Y[i,j] * v2[1]

# Create the plot
plt.figure(figsize=(6, 6))
plt.contourf(X, Y, Z, alpha=0.5, cmap='viridis')
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Generating Vector 1')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='Generating Vector 2')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Generating Set Spanning $ℝ^2$')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization of a generating set in action. The red and blue arrows represent the generating vectors. The colored plane is the vector space spanned by these vectors, which in this case is the entire $ℝ^2$ space.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Generating sets span the vector space 🌌]
#v(20pt)
#only("2-")[- Linear combinations of generating vectors fill the space 🧩]
#v(20pt)
#only("3-")[- Generating sets can be linearly dependent or infinite 🔄]
#v(20pt)
#only("4-")[- Essential for understanding the structure of vector spaces 🏛️]

#only("1")[
#voiceover("The key takeaway is that generating sets span the vector space.")
]
#only("2")[
#voiceover("This means that every vector in the space can be expressed as a linear combination of the vectors in the generating set.")
]
#only("3")[
#voiceover("Interestingly, generating sets can be linearly dependent or even infinite.")
]
#only("4")[
#voiceover("Understanding generating sets is essential for grasping the structure and properties of vector spaces.")
]
]