#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conductors and Free Electrons]
  #v(40pt)
  #only("1-")[- Why do some materials conduct electricity? 🤔]
  #v(20pt)
  #only("2-")[- Imagine a wire in a circuit... ⚡]
  #v(20pt)
  #only("3-")[- What's happening inside? 🔬]
  
  #only("1")[
    #voiceover("Have you ever wondered why some materials conduct electricity while others don't?")
  ]
  #only("2")[
    #voiceover("Picture a wire in an electrical circuit. When we connect it to a battery, electricity flows through it. But what's actually happening inside the wire?")
  ]
  #only("3")[
    #voiceover("To understand this, we need to zoom in and look at the behavior of electrons in different materials. Let's explore this fascinating world of conductors and free electrons!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electrons in Materials]
  #v(40pt)
  #only("1-")[- Atoms: Nucleus + Electrons ⚛️]
  #v(20pt)
  #only("2-")[- Some electrons are tightly bound 🔒]
  #v(20pt)
  #only("3-")[- Others can move more freely 🏃‍♂️]
  
  #only("1")[
    #voiceover("All materials are made up of atoms. Each atom consists of a nucleus surrounded by electrons.")
  ]
  #only("2")[
    #voiceover("In many materials, these electrons are tightly bound to their atoms. They can't move far from their original positions.")
  ]
  #only("3")[
    #voiceover("However, in some materials, certain electrons are less tightly bound. These electrons can move more freely within the material. These are what we call 'free electrons'.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conductors vs. Insulators]
  #v(40pt)
  #only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```
import matplotlib.pyplot as plt
import numpy as np

# Create figure and axis objects
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

# Function to create random points
def random_points(n):
    return np.random.rand(n, 2)

# Conductor
ax1.scatter(*random_points(50).T, c='blue', alpha=0.7, s=50)
ax1.set_title('Conductor')
ax1.set_xlim(0, 1)
ax1.set_ylim(0, 1)
ax1.set_xticks([])
ax1.set_yticks([])

# Insulator
points = random_points(50)
ax2.scatter(points[:, 0], points[:, 1], c='red', alpha=0.7, s=50)
for point in points:
    circle = plt.Circle(point, 0.05, fill=False, color='red')
    ax2.add_artist(circle)
ax2.set_title('Insulator')
ax2.set_xlim(0, 1)
ax2.set_ylim(0, 1)
ax2.set_xticks([])
ax2.set_yticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt
),
)
]
]
]
  #only("2-")[- Conductors: Many free electrons]
  #v(20pt)
  #only("3-")[- Insulators: Few or no free electrons]
  
  #only("1")[
    #voiceover("Let's compare conductors and insulators. In this diagram, blue dots represent free electrons.")
  ]
  #only("2")[
    #voiceover("In conductors, like metals, there are many free electrons. These electrons can move easily when an electric field is applied.")
  ]
  #only("3")[
    #voiceover("In insulators, however, electrons are tightly bound to their atoms, represented by the red circles. They have few or no free electrons, making it difficult for electricity to flow.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- Conductors: Free electrons can move 🏃‍♂️⚡]
  #v(20pt)
  #only("2-")[- Insulators: Electrons remain bound 🔒⚛️]
  #v(20pt)
  #only("3-")[- Electric field causes electron movement in conductors 🔋➡️]
  
  #only("1")[
    #voiceover("To summarize, in conductors, some electrons are free to move when an electric field is applied.")
  ]
  #only("2")[
    #voiceover("In insulators and other non-conducting materials, electrons remain tightly bound to their atoms.")
  ]
  #only("3")[
    #voiceover("This difference in electron behavior is what allows conductors to carry electric current, while insulators resist the flow of electricity. Understanding this concept is crucial for designing electrical circuits and devices!")
  ]
]