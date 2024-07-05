#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vector Addition]
  #v(40pt)

  #only("1-")[
    Given vectors: $vec(a) = (5, 7)$ and $vec(b) = (2, -3)$
  ]
  #v(20pt)

  #only("2-")[
    Sum: $vec(s) = vec(a) + vec(b)$
  ]
  #v(20pt)

  #only("3-")[
    $vec(s) = (5, 7) + (2, -3)$
  ]
  #v(20pt)

  #only("4-")[
    $vec(s) = (5+2, 7+(-3))$
  ]
  #v(20pt)

  #only("5-")[
    $vec(s) = (7, 4)$
  ]

  #only("1")[
    #voiceover("Great job! You've correctly found the sum of the vectors. Let's go through the solution step-by-step.")
  ]

  #only("2")[
    #voiceover("To add two vectors, we add their corresponding components. Let's call our sum vector s.")
  ]

  #only("3")[
    #voiceover("We start with our two vectors: (5, 7) and (2, -3).")
  ]

  #only("4")[
    #voiceover("Now, we add the x-components: 5 plus 2 equals 7. Then, we add the y-components: 7 plus negative 3 equals 4.")
  ]

  #only("5")[
    #voiceover("Therefore, the sum of the vectors (5, 7) and (2, -3) is (7, 4).")
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

fig, ax = plt.subplots(figsize=(10, 8))

# Define vectors
a = np.array([5, 7])
b = np.array([2, -3])
s = a + b

# Plot vectors
ax.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a (5, 7)')
ax.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b (2, -3)')
ax.quiver(0, 0, s[0], s[1], angles='xy', scale_units='xy', scale=1, color='g', label='s (7, 4)')
ax.quiver(a[0], a[1], b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', linestyle='dotted')

# Set limits and labels
ax.set_xlim(-1, 8)
ax.set_ylim(-4, 8)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vector Addition')
ax.grid(True)
ax.legend()

plt.show()
        ```,
        width: 360pt
      ),
    )
  ]
]

  #only("1")[
    #voiceover("Now, let's visualize this vector addition. In this graph, we can see the two original vectors and their sum.")
  ]

  #only("2")[
    #voiceover("The red vector represents a, which is (5, 7). The blue vector represents b, which is (2, -3).")
  ]

  #only("3")[
    #voiceover("The green vector represents their sum s, which we calculated to be (7, 4).")
  ]

  #only("4")[
    #voiceover("Notice how the sum vector s forms the diagonal of the parallelogram created by vectors a and b. This is a key property of vector addition.")
  ]
]