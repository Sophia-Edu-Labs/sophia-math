#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspace Criteria]
#v(40pt)
#only("1-")[For a subset $S$ of a vector space $V$ to be a subspace, it must satisfy:]
#v(20pt)
#only("2-")[1. Contains the zero vector $mat(0;0;...;0)$ 🎯]
#v(20pt)
#only("3-")[2. Closed under vector addition ➕]
#v(20pt)
#only("4-")[3. Closed under scalar multiplication ✖]
#only("1")[
#voiceover("For a subset S of a vector space V to be a subspace, it must satisfy three criteria.")
]
#only("2")[
#voiceover("First, the subset S must contain the zero vector. This means that the vector with all components equal to zero must be an element of S.")
]
#only("3")[
#voiceover("Second, the subset S must be closed under vector addition. This means that if we take any two vectors from S and add them together, the resulting vector must also be in S.")
]
#only("4")[
#voiceover("Third, the subset S must be closed under scalar multiplication. This means that if we take any vector from S and multiply it by a scalar, the resulting vector must also be in S.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Let $V = RR^2$ and $S = \{mat(x;y) | y = 2x\}$. Is $S$ a subspace of $V$? 🤔]
#v(20pt)
#only("2-")[1. Zero vector: $mat(0;0) ∈ S$ ✅]
#v(20pt)
#only("3-")[2. Vector addition: If $mat(x_1;y_1), mat(x_2;y_2) ∈ S$, then $mat(x_1+x_2;y_1+y_2) ∈ S$ ✅]
#v(20pt)
#only("4-")[3. Scalar multiplication: If $mat(x;y) ∈ S$ and $c ∈ RR$, then $c mat(x;y) ∈ S$ ✅]
#only("1")[
#voiceover("Let's consider an example. Let V be the vector space R squared and S be the set of all vectors (x; y) where y equals 2x. Is S a subspace of V?")
]
#only("2")[
#voiceover("First, we check if S contains the zero vector. The zero vector (0; 0) satisfies the condition y equals 2x, so it is in S.")
]
#only("3")[
#voiceover("Next, we check closure under vector addition. If we take any two vectors (x1; y1) and (x2; y2) from S, their sum (x1 plus x2; y1 plus y2) also satisfies the condition y equals 2x, so it is in S.")
]
#only("4")[
#voiceover("Finally, we check closure under scalar multiplication. If we take any vector (x; y) from S and multiply it by a scalar c, the resulting vector (cx; cy) still satisfies the condition y equals 2x, so it is in S.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y = 2 * x

plt.figure(figsize=(6, 6))
plt.plot(x, y, 'b-', label='Subspace S')
plt.quiver(0, 0, 1, 2, angles='xy', scale_units='xy', scale=1, color='r', label='Example vector in S')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.legend()
plt.title('Subspace S in R^2')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization of the subspace S in R squared. The blue line represents all vectors (x; y) where y equals 2x. The red arrow is an example vector in S. As we can see, S forms a line passing through the origin, which is a subspace of R squared.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The subset $S = \{mat(x;y) | y = 2x\}$ is a subspace of $RR^2$ because:]
#v(20pt)
#only("2-")[1. Contains the zero vector 🎯]
#v(20pt)
#only("3-")[2. Closed under vector addition ➕]
#v(20pt)
#only("4-")[3. Closed under scalar multiplication ✖]
#only("1")[
#voiceover("In conclusion, the subset S equals the set of all vectors (x; y) where y equals 2x is a subspace of R squared because:")
]
#only("2")[
#voiceover("It contains the zero vector,")
]
#only("3")[
#voiceover("It is closed under vector addition,")
]
#only("4")[
#voiceover("And it is closed under scalar multiplication.")
]
]