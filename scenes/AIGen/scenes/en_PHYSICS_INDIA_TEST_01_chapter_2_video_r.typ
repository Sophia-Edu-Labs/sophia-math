#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Conductors and Free Electrons ⚡]
#v(40pt)
#only("1-")[- Electrical conductivity is crucial in many applications 🔌]
#only("2-")[- Conductors allow easy flow of electric current 🌊]
#only("3-")[- Free electrons play a key role in this process 🔬]
#only("1")[
#voiceover("Let's review the concept of conductors and free electrons. Electrical conductivity is a fundamental property that's crucial in many applications, from household wiring to complex electronic devices.")
]
#only("2")[
#voiceover("Conductors are materials that allow electric current to flow easily through them. This property is what makes them so useful in electrical systems.")
]
#only("3")[
#voiceover("The key to understanding how conductors work lies in the concept of free electrons. Let's explore this further.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conductors and Free Electrons]
#v(40pt)
#only("1-")[- Conductors have loosely bound outer electrons 🔓]
#only("2-")[- These electrons can move freely within the material 🏃‍♂️]
#only("3-")[- Applied electric field causes electron movement 🔋➡️]
#only("4-")[- This movement constitutes electric current 💡]
#only("1")[
#voiceover("Conductors, such as metals, have a unique atomic structure. In these materials, the outer electrons of the atoms are loosely bound to their nuclei.")
]
#only("2")[
#voiceover("These loosely bound electrons can move freely within the material. They're often called 'free electrons' or 'conduction electrons'.")
]
#only("3")[
#voiceover("When an electric field is applied to a conductor, these free electrons respond by moving in the direction opposite to the electric field.")
]
#only("4")[
#voiceover("This coordinated movement of free electrons is what we call an electric current.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization of Free Electrons]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

# Function to create atom positions
def create_atoms(n, m):
    x = np.arange(n)
    y = np.arange(m)
    return np.meshgrid(x, y)

# Function to create electron positions
def create_electrons(n, m, num_electrons):
    return np.random.rand(2, num_electrons) * [n, m]

# No electric field
ax1.set_title("No Electric Field")
X1, Y1 = create_atoms(5, 5)
e_x1, e_y1 = create_electrons(5, 5, 20)

ax1.plot(X1, Y1, 'ro', markersize=10)  # Atoms
ax1.plot(e_x1, e_y1, 'bo', markersize=5, alpha=0.7)  # Electrons
ax1.set_xlim(-0.5, 4.5)
ax1.set_ylim(-0.5, 4.5)
ax1.set_xticks([])
ax1.set_yticks([])

# With electric field
ax2.set_title("Applied Electric Field")
X2, Y2 = create_atoms(5, 5)
e_x2, e_y2 = create_electrons(5, 5, 20)

ax2.plot(X2, Y2, 'ro', markersize=10)  # Atoms
ax2.plot(e_x2, e_y2, 'bo', markersize=5, alpha=0.7)  # Electrons
ax2.set_xlim(-0.5, 4.5)
ax2.set_ylim(-0.5, 4.5)
ax2.set_xticks([])
ax2.set_yticks([])

# Add arrow to represent electric field
ax2.arrow(2, 4.7, 0, -4, head_width=0.2, head_length=0.3, fc='g', ec='g', width=0.05)
ax2.text(2.2, 2.5, 'E', color='green', fontsize=12)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Free electrons in a conductor with and without an electric field],
)
]
]
]
#only("1")[
#voiceover("Let's visualize how free electrons behave in a conductor. On the left, we see a conductor with no electric field applied. The red dots represent the atoms in the conductor's lattice, while the blue dots represent free electrons. Notice how the electrons are randomly distributed.")
]
#only("2")[
#voiceover("On the right, we see the same conductor but with an electric field applied, represented by the green arrow. Observe how the free electrons have shifted towards the top of the conductor, opposite to the direction of the electric field. This collective movement of electrons is what we call an electric current.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points 📝]
#v(40pt)
#only("1-")[- Conductors have free electrons 🔓]
#only("2-")[- Free electrons move when electric field is applied ⚡]
#only("3-")[- This movement creates electric current 💡]
#only("4-")[- Understanding this is crucial for electrical engineering ⚙️]
#only("1")[
#voiceover("Let's recap the key points. First, conductors have free electrons that can move within the material.")
]
#only("2")[
#voiceover("When an electric field is applied to a conductor, these free electrons move in response to the field.")
]
#only("3")[
#voiceover("This movement of free electrons is what we call an electric current.")
]
#only("4")[
#voiceover("Understanding this behavior of free electrons in conductors is fundamental to electrical engineering and helps explain how electricity flows in circuits.")
]
]