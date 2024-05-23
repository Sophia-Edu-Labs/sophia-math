#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Coordinates in Vector Spaces]
#v(40pt)
#only("1-")[- Unique identifier for points 📍]
#v(20pt)
#only("2-")[- Set of numbers 🔢]
#v(20pt)
#only("3-")[- Example in $RR^2$: $(3, 4)$]
#only("1")[
#voiceover("Coordinates are a way to uniquely identify a point in a vector space.")
]
#only("2")[
#voiceover("They are represented by a set of numbers.")
]
#only("3")[
#voiceover("For example, in the two-dimensional real vector space R2, a point can be identified by the coordinates 3 and 4, written as the ordered pair (3, 4).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Coordinates]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the point (3, 4)
ax.scatter(3, 4, color='red', s=100)
ax.annotate('(3, 4)', xy=(3, 4), xytext=(3.1, 4.2), fontsize=12)

# Set the limits and labels for the axes
ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
ax.set_xlabel('x')
ax.set_ylabel('y')

# Add grid lines
ax.grid(True)

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the point (3, 4) in the two-dimensional real vector space R2. The x-coordinate is 3, and the y-coordinate is 4.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimension and Coordinates]
#v(40pt)
#only("1-")[- Dimension: Number of coordinates needed]
#v(20pt)
#only("2-")[- $RR^2$: 2 coordinates $(x, y)$]
#v(20pt)
#only("3-")[- $RR^3$: 3 coordinates $(x, y, z)$]
#only("1")[
#voiceover("The number of coordinates needed to identify a point in a vector space is determined by the dimension of the space.")
]
#only("2")[
#voiceover("In R2, we need two coordinates, typically labeled x and y.")
]
#only("3")[
#voiceover("In R3, we need three coordinates, usually labeled x, y, and z.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Coordinates: Unique identifiers for points 📍]
#v(20pt)
#only("2-")[- Represented by a set of numbers 🔢]
#v(20pt)
#only("3-")[- Dimension determines number of coordinates needed 📏]
#only("1")[
#voiceover("In summary, coordinates are unique identifiers for points in a vector space.")
]
#only("2")[
#voiceover("They are represented by a set of numbers.")
]
#only("3")[
#voiceover("The dimension of the vector space determines the number of coordinates needed to identify a point.")
]
]