#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Scalar Multiplication of Vectors]
  #v(40pt)

  #only("1-")[- Given: Vector $(1, -2)$ and scalar $-3$]
  #v(20pt)
  #only("2-")[- Step 1: Multiply each component by the scalar]
  #v(20pt)
  #only("3-")[- $-3 dot (1, -2) = (-3 dot 1, -3 dot (-2))$]
  #v(20pt)
  #only("4-")[- $= (-3, 6)$]

  #only("1")[
    #voiceover("Great job! You've correctly solved this problem. Let's walk through the solution step-by-step.")
  ]

  #only("2")[
    #voiceover("To multiply a vector by a scalar, we multiply each component of the vector by the scalar.")
  ]

  #only("3")[
    #voiceover("So, we multiply negative 3 by 1, and negative 3 by negative 2.")
  ]

  #only("4")[
    #voiceover("This gives us negative 3 for the first component, and positive 6 for the second component. Thus, our final answer is the vector negative 3, 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Transformation]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Original vector
v = np.array([1, -2])

# Scaled vector
v_scaled = -3 * v

# Create the plot
fig, ax = plt.subplots(figsize=(10, 10))

# Set the limits and aspect ratio
ax.set_xlim(-7, 7)
ax.set_ylim(-7, 7)
ax.set_aspect('equal')

# Add grid
ax.grid(True, linestyle='--', alpha=0.7)

# Plot the axes
ax.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
ax.axvline(x=0, color='k', linestyle='-', linewidth=0.5)

# Plot the original vector
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original (1, -2)')

# Plot the scaled vector
ax.quiver(0, 0, v_scaled[0], v_scaled[1], angles='xy', scale_units='xy', scale=1, color='red', label='Scaled (-3, 6)')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vector Scaling: (1, -2) → (-3, 6)')

# Add legend
ax.legend()

plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]
]

  #only("1")[
    #voiceover("Let's visualize this transformation. The blue arrow represents our original vector, 1, negative 2. The red arrow shows the result of multiplying this vector by negative 3, giving us the vector negative 3, 6.")
  ]

  #only("2")[
    #voiceover("Notice how the scalar multiplication has not only changed the length of the vector but also its direction. This is because we multiplied by a negative scalar, which reverses the direction of the vector.")
  ]

  #only("3")[
    #voiceover("The magnitude of the vector has been scaled by a factor of 3, and its direction has been reversed. This visual representation helps us understand the geometric meaning of scalar multiplication of vectors.")
  ]
]