#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Vectors 📉]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v = np.array([2, 1])  # Example vector

origin = np.array([[0, 0], [0, 0]])  # Origin point
plt.quiver(*origin, v[0], v[1], angles='xy', scale_units='xy', scale=1)
plt.xlim(-1, 3)
plt.ylim(-1, 3)
plt.grid()
plt.xlabel('x')
plt.ylabel('y')
plt.title('Vector Visualization')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a simple visualization of a vector in a 2D plane. The vector starts at the origin (0, 0) and extends to the point (2, 1). The length of the arrow represents the vector's magnitude, and the direction of the arrow represents its direction.")
]
]]