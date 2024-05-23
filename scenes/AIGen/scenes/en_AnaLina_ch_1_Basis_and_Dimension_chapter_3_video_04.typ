#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap how to find a basis for a vector space. 🎯")
]
#text(size: 30pt, weight: "bold")[Finding a Basis]
// The title "Finding a Basis" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("To find a basis, we start with a set of vectors that span the entire vector space. This ensures that our basis covers all possible vectors in the space. 🌐")
]
#only("2-")[- Start with a spanning set 🌐]
// The point "Start with a spanning set" is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("However, this spanning set might have some redundancy. We want our basis to be as compact as possible. 🧹")
]
#only("3-")[- Remove linearly dependent vectors 🧹]
// The point "Remove linearly dependent vectors" is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("So, we remove any linearly dependent vectors from our spanning set. These are vectors that can be expressed as a linear combination of the others. 🎨")
]
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v1 = np.array([1, 2])
v2 = np.array([2, 4])
v3 = np.array([1, 0])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='v1')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='v2 (dependent)')
plt.quiver(0, 0, v3[0], v3[1], angles='xy', scale_units='xy', scale=1, color='g', label='v3')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 3)
plt.ylim(-1, 5)
plt.legend()
plt.title('Linearly Dependent Vectors')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// The figure shows three vectors v1, v2, and v3, where v2 is a scalar multiple of v1 and thus linearly dependent. This figure is shown from slide 4 onward.
#v(20pt)
#only("5")[
#voiceover("What remains after this process is a linearly independent set of vectors that still spans the entire vector space. And that's our basis! 🎉")
]
#only("5-")[- Remaining set is a basis 🎉]
// The point "Remaining set is a basis" is shown from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("Let's look at an example. Consider the vector space spanned by these three vectors: (1, 2), (2, 4), and (1, 0). 🧮")
]
#text(size: 30pt, weight: "bold")[Example]
// The title "Example" is shown on this slide
#v(40pt)
#only("2-")[Spanning set: $\{mat(1;2), mat(2;4), mat(1;0)\}$]
// The spanning set is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("We can see that (2, 4) is just a scalar multiple of (1, 2). Specifically, (2, 4) = 2 * (1, 2). So (2, 4) is linearly dependent and can be removed. 🧹")
]
#only("3-")[Remove $mat(2;4)$: $mat(2;4) = 2 mat(1;2)$ 🧹]
// The removal of (2, 4) and the reason is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("The remaining vectors, (1, 2) and (1, 0), are linearly independent and still span the space. Thus, they form a basis. 🎉")
]
#only("4-")[Basis: $\{mat(1;2), mat(1;0)\}$ 🎉]
// The resulting basis is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("To summarize, finding a basis is a two-step process: 🎯")
]
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("2")[
#voiceover("First, start with a set of vectors that span the vector space. This is your spanning set. 🌐")
]
#only("2-")[1. Start with a spanning set 🌐]
#v(20pt)
#only("3")[
#voiceover("Second, remove any linearly dependent vectors from this spanning set. 🧹")
]
#only("3-")[2. Remove linearly dependent vectors 🧹]
#v(20pt)
#only("4")[
#voiceover("What you're left with is a linearly independent spanning set, which is exactly what a basis is. 🎉")
]
#only("4-")[Result: Basis 🎉]
#v(20pt)
#only("5")[
#voiceover("Remember, a basis is the most efficient way to describe a vector space. It's a fundamental concept in linear algebra. 🌟")
]
#only("5-")[Basis = Fundamental concept 🌟]
]