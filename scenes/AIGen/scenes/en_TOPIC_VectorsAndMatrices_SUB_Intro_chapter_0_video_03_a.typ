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
    #align(center)[
      $vec(a) = (3, 4)$
      #v(10pt)
      $vec(b) = (1, 2)$
    ]
  ]

  #only("2-")[
    #v(20pt)
    #align(center)[
      $vec(a) + vec(b) = (3, 4) + (1, 2)$
    ]
  ]

  #only("3-")[
    #v(20pt)
    #align(center)[
      $= (3+1, 4+2)$
    ]
  ]

  #only("4-")[
    #v(20pt)
    #align(center)[
      $= (4, 6)$
    ]
  ]

  #only("1")[
    #voiceover("Great job! You've correctly solved this vector addition problem. Let's walk through the solution step-by-step. We start with two vectors: vector a, which is (3, 4), and vector b, which is (1, 2).")
  ]

  #only("2")[
    #voiceover("To add these vectors, we add their corresponding components. So, we're adding (3, 4) and (1, 2).")
  ]

  #only("3")[
    #voiceover("This means we add the first components: 3 plus 1, and then the second components: 4 plus 2.")
  ]

  #only("4")[
    #voiceover("So, our final result is the vector (4, 6). This is the sum of the two original vectors.")
  ]

  #only("5-")[
    #v(40pt)
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
a = np.array([3, 4])
b = np.array([1, 2])
c = a + b

# Create the plot
plt.figure(figsize=(8, 8))
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

# Plot vectors
plt.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a (3,4)')
plt.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b (1,2)')
plt.quiver(0, 0, c[0], c[1], angles='xy', scale_units='xy', scale=1, color='g', label='a+b (4,6)')

# Set limits and labels
plt.xlim(-1, 6)
plt.ylim(-1, 7)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Vector Addition')
plt.legend()
plt.grid(True)

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]

  #only("5")[
    #voiceover("Here's a visual representation of our vector addition. The red vector represents a, the blue vector represents b, and the green vector is their sum, a plus b. As you can see, adding vectors is like following one vector and then the other, which leads us to the same point as the sum vector.")
  ]
]]