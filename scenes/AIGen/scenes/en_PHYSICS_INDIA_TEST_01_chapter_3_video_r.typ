#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Electric Fields in Conductors 🔌]
#v(40pt)
#only("1-")[- Conductors contain free electrons ⚛️]
#only("2-")[- Applied electric field causes electron movement 🔄]
#only("3-")[- Result: Electric current ⚡]
#only("1")[
#voiceover("Let's review the concept of electric fields in conductors. We'll start by recalling that conductors contain free electrons.")
]
#only("2")[
#voiceover("When we apply an electric field to a conductor, these free electrons begin to move.")
]
#only("3")[
#voiceover("This movement of electrons results in what we call an electric current. Let's explore this process in more detail.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conductor Structure 🔍]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(8, 6))

# Draw conductor outline
rect = plt.Rectangle((0, 0), 10, 6, fill=False, ec='black')
ax.add_patch(rect)

# Add electrons
np.random.seed(42)
x = np.random.uniform(0.5, 9.5, 50)
y = np.random.uniform(0.5, 5.5, 50)
ax.scatter(x, y, c='blue', s=50, label='Free electrons')

# Add positive ions
x_ions = np.random.uniform(0.5, 9.5, 20)
y_ions = np.random.uniform(0.5, 5.5, 20)
ax.scatter(x_ions, y_ions, c='red', s=80, marker='^', label='Positive ions')

ax.set_xlim(0, 10)
ax.set_ylim(0, 6)
ax.set_aspect('equal')
ax.axis('off')

plt.legend(loc='upper right')
plt.title('Structure of a Conductor')
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]
#only("1")[
#voiceover("Here's a simplified representation of a conductor. The blue dots represent free electrons, which can move freely within the conductor. The red triangles represent positive ions, which are fixed in place in the conductor's structure.")
]
#only("2-")[- Free electrons (blue) can move 🔵]
#only("3-")[- Positive ions (red) are fixed ▲]
#only("2")[
#voiceover("The key feature of a conductor is that the blue electrons are free to move throughout the material.")
]
#only("3")[
#voiceover("In contrast, the red positive ions are fixed in place and form the conductor's lattice structure.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Applied Electric Field ⚡]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(8, 6))

# Draw conductor outline
rect = plt.Rectangle((0, 0), 10, 6, fill=False, ec='black')
ax.add_patch(rect)

# Add electrons
np.random.seed(42)
x = np.random.uniform(0.5, 9.5, 50)
y = np.random.uniform(0.5, 5.5, 50)
ax.scatter(x, y, c='blue', s=50, label='Free electrons')

# Add positive ions
x_ions = np.random.uniform(0.5, 9.5, 20)
y_ions = np.random.uniform(0.5, 5.5, 20)
ax.scatter(x_ions, y_ions, c='red', s=80, marker='^', label='Positive ions')

# Add electric field lines
for i in range(1, 10):
    ax.arrow(0, i*0.6, 10, 0, head_width=0.2, head_length=0.3, fc='g', ec='g', alpha=0.6)

ax.set_xlim(0, 10)
ax.set_ylim(0, 6)
ax.set_aspect('equal')
ax.axis('off')

plt.legend(loc='upper right')
plt.title('Conductor in an Electric Field')
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]
#only("1")[
#voiceover("Now, let's apply an electric field to our conductor. The green arrows represent the direction of the electric field. Notice how the field lines are parallel and evenly spaced, indicating a uniform electric field.")
]
#only("2-")[- Electric field exerts force on electrons 🔋]
#only("3-")[- Electrons accelerate opposite to field direction ↔️]
#only("2")[
#voiceover("When we apply this electric field, it exerts a force on the free electrons in the conductor.")
]
#only("3")[
#voiceover("As a result, these electrons begin to accelerate in the direction opposite to the electric field.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Resulting Electric Current 🔌]
#v(40pt)
#only("1-")[- Electron movement creates current ⚡]
#only("2-")[- Current direction: opposite to electron flow 🔄]
#only("3-")[- Magnitude depends on field strength and material 📊]
#only("1")[
#voiceover("The movement of these electrons in response to the applied electric field creates what we call an electric current.")
]
#only("2")[
#voiceover("Interestingly, while the electrons move in one direction, we define the current as flowing in the opposite direction.")
]
#only("3")[
#voiceover("The strength of this current depends on both the strength of the applied electric field and the properties of the conducting material.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points Recap 📝]
#v(40pt)
#only("1-")[- Conductors have free electrons ⚛️]
#only("2-")[- Applied E-field causes electron movement 🔄]
#only("3-")[- Electron flow results in electric current ⚡]
#only("4-")[- Current direction opposite to electron flow 🔌]
#only("1")[
#voiceover("Let's recap the key points. First, conductors contain free electrons that can move within the material.")
]
#only("2")[
#voiceover("When we apply an electric field to a conductor, these free electrons begin to move in response to the field.")
]
#only("3")[
#voiceover("This flow of electrons results in what we call an electric current.")
]
#only("4")[
#voiceover("Remember, the direction of the current is defined as opposite to the direction of electron flow.")
]
]