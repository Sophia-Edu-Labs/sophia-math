#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Scalar Multiplication of Vectors]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $(2, 3) dot 4 = (8, 12)$
    ]
  ]

  #v(20pt)

  #only("2-")[
    - Multiply each component by the scalar
  ]

  #v(10pt)

  #only("3-")[
    #align(center)[
      $(2 dot 4, 3 dot 4) = (8, 12)$
    ]
  ]

  #v(20pt)

  #only("4-")[
    - Result: $(8, 12)$
  ]

  #only("1")[
    #voiceover("Great job! You've got the correct answer. Let's walk through the solution step-by-step.")
  ]

  #only("2")[
    #voiceover("When we multiply a vector by a scalar, we multiply each component of the vector by that scalar.")
  ]

  #only("3")[
    #voiceover("In this case, we're multiplying the vector (2, 3) by the scalar 4. So, we multiply 2 by 4 and 3 by 4.")
  ]

  #only("4")[
    #voiceover("This gives us 8 for the first component and 12 for the second component, resulting in the vector (8, 12).")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Geometric Interpretation]
  #v(40pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

        import matplotlib.pyplot as plt
import numpy as np

# Create vectors
v = np.array([2, 3])
v_scaled = 4 * v

# Create the plot
fig, ax = plt.subplots(figsize=(10, 10))

# Plot the original vector
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original (2, 3)')

# Plot the scaled vector
ax.quiver(0, 0, v_scaled[0], v_scaled[1], angles='xy', scale_units='xy', scale=1, color='red', label='Scaled 4(2, 3)')

# Set limits and aspect
ax.set_xlim(-1, 9)
ax.set_ylim(-1, 13)
ax.set_aspect('equal')

# Add grid and labels
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

# Show the plot
plt.title('Scalar Multiplication of Vector')
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

  #only("1")[
    #voiceover("Now, let's visualize what scalar multiplication does to a vector geometrically.")
  ]

  #only("2")[
    #voiceover("In this graph, the blue arrow represents our original vector (2, 3).")
  ]

  #only("3")[
    #voiceover("The red arrow shows the result of multiplying this vector by 4, which gives us (8, 12).")
  ]

  #only("4")[
    #voiceover("As you can see, scalar multiplication stretches or shrinks the vector while keeping its direction the same. In this case, our vector has been stretched to four times its original length.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points]
  #v(40pt)

  #only("1-")[
    - Scalar multiplication affects magnitude, not direction 📏
  ]

  #only("2-")[
    - Multiply each component by the scalar 🔢
  ]

  #only("3-")[
    - Negative scalars reverse direction ↩️
  ]

  #only("4-")[
    - Scalar 0 results in zero vector 0️⃣
  ]

  #only("1")[
    #voiceover("Let's summarize some key points about scalar multiplication of vectors.")
  ]

  #only("2")[
    #voiceover("First, scalar multiplication changes the magnitude of a vector, but not its direction, unless the scalar is negative.")
  ]

  #only("3")[
    #voiceover("Second, to perform scalar multiplication, we multiply each component of the vector by the scalar.")
  ]

  #only("4")[
    #voiceover("Third, if we multiply by a negative scalar, the direction of the vector is reversed.")
  ]

  #only("5")[
    #voiceover("Lastly, multiplying any vector by the scalar 0 always results in the zero vector.")
  ]
]