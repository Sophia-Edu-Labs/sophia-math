#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Scalar Multiplication of Vectors]
  #v(40pt)

  #only("1-")[- Given: Vector (0, 5) and scalar 7]
  #v(20pt)
  #only("2-")[- Multiply each component by 7:]
  #v(10pt)
  #only("3-")[  $7 dot (0, 5) = (7 dot 0, 7 dot 5)$]
  #v(20pt)
  #only("4-")[- Result: $(0, 35)$]

  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step.")
  ]

  #only("2")[
    #voiceover("To multiply a vector by a scalar, we multiply each component of the vector by the scalar.")
  ]

  #only("3")[
    #voiceover("In this case, we're multiplying the vector (0, 5) by the scalar 7. So, we multiply 0 by 7, and 5 by 7.")
  ]

  #only("4")[
    #voiceover("This gives us 7 times 0, which is 0, and 7 times 5, which is 35. Therefore, the result is the vector (0, 35).")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualization]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
v = np.array([0, 5])
v_scaled = np.array([0, 35])

# Create the plot
fig, ax = plt.subplots(figsize=(8, 8))

# Plot the vectors
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original (0, 5)')
ax.quiver(0, 0, v_scaled[0], v_scaled[1], angles='xy', scale_units='xy', scale=1, color='red', label='Scaled (0, 35)')

# Set limits and aspect
ax.set_xlim(-1, 1)
ax.set_ylim(0, 40)
ax.set_aspect('equal')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Scalar Multiplication of Vector')

# Add grid and legend
ax.grid(True)
ax.legend()

plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]]

  #only("1")[
    #voiceover("Let's visualize this scalar multiplication. The blue vector represents our original vector (0, 5).")
  ]

  #only("2")[
    #voiceover("When we multiply it by 7, we get the red vector, which is (0, 35). Notice how it's 7 times longer than the original vector, but still points in the same direction.")
  ]

  #only("3")[
    #voiceover("This illustrates a key property of scalar multiplication: it changes the magnitude of the vector, but not its direction.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points]
  #v(40pt)

  #only("1-")[- Scalar multiplication scales a vector 📏]
  #v(20pt)
  #only("2-")[- Changes magnitude, not direction 🧭]
  #v(20pt)
  #only("3-")[- Formula: $c dot (x, y) = (c dot x, c dot y)$]

  #only("1")[
    #voiceover("To summarize, scalar multiplication scales a vector. In this case, we scaled our vector by a factor of 7.")
  ]

  #only("2")[
    #voiceover("It's important to remember that scalar multiplication changes the magnitude of a vector, but not its direction.")
  ]

  #only("3")[
    #voiceover("The general formula for scalar multiplication is: c times the vector (x, y) equals the vector (c times x, c times y), where c is the scalar.")
  ]
]