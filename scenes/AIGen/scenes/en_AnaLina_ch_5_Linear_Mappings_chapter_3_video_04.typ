#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Image of a Linear Mapping]
#v(40pt)
#only("1-")[- $T: V -> W$ is a linear mapping]
#only("2-")[- Image of $T$ is a subset of $W$]
#only("3-")[- $"im"(T) = {w ∈ W | w = T(v) "for some" v ∈ V}$]
// The key points are shown in bullet points, with the definition of the image shown from slide 3 onward
#only("1")[
#voiceover("Let's recap the concept of the image of a linear mapping. Consider a linear mapping T from a vector space V to a vector space W.")
]
#only("2")[
#voiceover("The image of T, denoted as 'im' of T, is a subset of the codomain W.")
]
#only("3")[
#voiceover("More precisely, the image of T is the set of all vectors w in W such that w equals T of v for some vector v in V.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 🎨]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Define the linear mapping T
def T(v):
    return np.array([2*v[0], v[1]])

# Create a meshgrid for V
x = np.linspace(-2, 2, 10)
y = np.linspace(-2, 2, 10)
X, Y = np.meshgrid(x, y)

# Apply the linear mapping T to the meshgrid
Z = np.zeros_like(X)
for i in range(X.shape[0]):
    for j in range(X.shape[1]):
        Z[i,j] = T([X[i,j], Y[i,j]])[1]

# Plot the image of T
ax.plot_surface(X, Y, Z, alpha=0.5, cmap='viridis')

# Plot V
ax.plot(x, y, 0, color='blue', label='V')

# Plot W
x_w = np.linspace(-4, 4, 10)
y_w = np.linspace(-2, 2, 10)
X_w, Y_w = np.meshgrid(x_w, y_w)
Z_w = np.zeros_like(X_w)
ax.plot_surface(X_w, Y_w, Z_w, alpha=0.2, color='red', label='W')

# Add labels and legend
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The figure shows a 3D plot with V represented as a blue plane, W as a red plane, and the image of T as a green surface within W
#only("1")[
#voiceover("Here's a visualization to help understand the image of a linear mapping. The blue plane represents the domain V, the red plane represents the codomain W, and the green surface within W represents the image of T.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Image is a subset of codomain]
#only("2-")[- Every vector in image has a preimage in domain]
#only("3-")[- Helps understand the "reach" of a linear mapping]
// The key takeaways are shown in bullet points
#only("1")[
#voiceover("The key takeaways are: The image is a subset of the codomain W.")
]
#only("2")[
#voiceover("Every vector in the image has a preimage in the domain V, meaning it's 'reachable' by the mapping.")
]
#only("3")[
#voiceover("Understanding the image helps us understand the 'reach' or 'coverage' of a linear mapping within its codomain.")
]
]