#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspaces 🚀]
#v(40pt)
#only("1-")[- Subset of a vector space]
#v(20pt)
#only("2-")[- Itself a vector space under the same operations]
#only("1")[
#voiceover("A subspace is a subset of a vector space...")
]
#only("2")[
#voiceover("...that is itself a vector space under the same operations as the parent space.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: $RR^2$ and a Line]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y = 2*x 

fig, ax = plt.subplots(figsize=(6, 6))
ax.plot(x, y, 'r', label='Subspace: Line')
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.set_title('$RR^2$ and a Line Subspace')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Consider the vector space $RR^2$, the plane. A line passing through the origin, like y equals 2x, is a subspace of $RR^2$.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why is the Line a Subspace? ✅]
#v(40pt)
#only("1-")[1. Contains the zero vector $(0, 0)$]
#v(20pt)
#only("2-")[2. Closed under vector addition]
#v(20pt)
#only("3-")[3. Closed under scalar multiplication]
#only("1")[
#voiceover("The line is a subspace because it contains the zero vector (0, 0)...")
]
#only("2")[
#voiceover("...it's closed under vector addition - adding two vectors on the line results in another vector on the line...")
]
#only("3")[
#voiceover("...and it's closed under scalar multiplication - multiplying a vector on the line by a scalar results in another vector on the line.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Subspace: subset & vector space 🔍]
#v(20pt)
#only("2-")[- Must contain zero vector, be closed under +, × 🧮]
#v(20pt)
#only("3-")[- Examples: lines, planes in $RR^n$ 📈]
#only("1")[
#voiceover("In summary, a subspace is a subset of a vector space that is itself a vector space under the same operations.")
]
#only("2")[
#voiceover("To be a subspace, a subset must contain the zero vector, and be closed under vector addition and scalar multiplication.")
]
#only("3")[
#voiceover("Common examples of subspaces include lines and planes passing through the origin in $RR^n$.")
]
]