#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Given $T: RR^2 -> RR^2$ defined by $T(mat(x; y)) = mat(x + y; x - y)$, find the image of $T$.]
// The exercise is shown from slide 1 onward
#only("1")[
#voiceover("Great job! That's the correct solution. Let's go through it step by step together.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
#only("1-")[- Understand the definition of image 📚]
// The approach of understanding the definition of image is shown from slide 1 onward
#only("2-")[- Analyze the given linear mapping 🔍]
// The approach of analyzing the given linear mapping is shown from slide 2 onward
#only("3-")[- Determine the set of all possible outputs 🎯]
// The approach of determining the set of all possible outputs is shown from slide 3 onward
#only("1")[
#voiceover("To find the image, we first need to understand its definition. The image of a linear mapping is the set of all vectors that can be obtained as outputs of the mapping.")
]
#only("2")[
#voiceover("Next, we analyze the given linear mapping T. It takes a vector (x; y) and maps it to (x plus y; x minus y).")
]
#only("3")[
#voiceover("So, we need to determine the set of all possible vectors that can be obtained in this form.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Let $mat(a; b)$ be an arbitrary vector in $RR^2$.]
#v(20pt)
#only("2-")[For $mat(a; b)$ to be in the image of $T$, there must exist $mat(x; y)$ such that $T(mat(x; y)) = mat(a; b)$.]
#v(20pt)
#only("3-")[This means: $mat(x + y; x - y) = mat(a; b)$]
#v(20pt)
#only("4-")[Equating components: $x + y = a$ and $x - y = b$]
#v(20pt)
#only("5-")[Adding the equations: $(x + y) + (x - y) = a + b$, which simplifies to $2x = a + b$]
#v(20pt)
#only("6-")[Therefore, the image of $T$ is the set of all vectors $mat(a; b)$ such that $a + b$ is even.]
#only("1")[
#voiceover("Let's start by considering an arbitrary vector (a; b) in R-2.")
]
#only("2")[
#voiceover("For this vector to be in the image of T, there must exist a vector (x; y) such that T of (x; y) equals (a; b).")
]
#only("3")[
#voiceover("Using the definition of T, this means (x plus y; x minus y) must equal (a; b).")
]
#only("4")[
#voiceover("Equating the corresponding components, we get two equations: x plus y equals a, and x minus y equals b.")
]
#only("5")[
#voiceover("If we add these two equations, we get 2x equals a plus b.")
]
#only("6")[
#voiceover("This means that a plus b must be an even number for (a; b) to be in the image of T. Therefore, the image of T is the set of all vectors (a; b) such that a plus b is even.")
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

# Create a grid of points
x = np.linspace(-5, 5, 20)
y = np.linspace(-5, 5, 20)
X, Y = np.meshgrid(x, y)

# Compute the sum of components
Z = X + Y

# Create the plot
plt.figure(figsize=(6, 6))
plt.contourf(X, Y, Z, levels=[-4, -2, 0, 2, 4], cmap='coolwarm', alpha=0.5)
plt.colorbar(ticks=[-4, -2, 0, 2, 4], label='a + b')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('Image of T')
plt.xlabel('a')
plt.ylabel('b')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization of the image. The colored bands represent the regions where a plus b is even. Any vector (a; b) falling on these bands is in the image of T.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Image: set of all possible outputs of a mapping 🖼️]
#v(20pt)
#only("2-")[- For $T(mat(x; y)) = mat(x + y; x - y)$, image is all $mat(a; b)$ where $a + b$ is even ➗2️⃣]
#v(20pt)
#only("3-")[- Visualized as alternating bands in $RR^2$ 🌈]
#only("1")[
#voiceover("To summarize, the image of a linear mapping is the set of all possible output vectors.")
]
#only("2")[
#voiceover("For the given mapping T, the image consists of all vectors (a; b) where a plus b is an even number.")
]
#only("3")[
#voiceover("Visually, this appears as alternating bands in the plane.")
]
]