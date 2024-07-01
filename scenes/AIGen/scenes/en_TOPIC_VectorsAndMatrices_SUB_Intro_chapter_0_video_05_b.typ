#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vector Dimension]
  #v(40pt)

  #only("1-")[Given vector: $v = (-2, 4, 3, -5)$]
  #v(20pt)

  #only("2-")[Dimension = Number of components]
  #v(20pt)

  #only("3-")[Count the components: ]
  #only("3-")[1. $-2$]
  #only("4-")[2. $4$]
  #only("5-")[3. $3$]
  #only("6-")[4. $-5$]
  #v(20pt)

  #only("7-")[Therefore, dimension = 4]

  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step by step.")
  ]

  #only("2")[
    #voiceover("The dimension of a vector is simply the number of components it has.")
  ]

  #only("3")[
    #voiceover("Let's count the components of our vector. The first component is negative 2.")
  ]

  #only("4")[
    #voiceover("The second component is 4.")
  ]

  #only("5")[
    #voiceover("The third component is 3.")
  ]

  #only("6")[
    #voiceover("And the fourth component is negative 5.")
  ]

  #only("7")[
    #voiceover("We've counted four components in total. Therefore, the dimension of this vector is 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visual Representation]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots()

vector = [-2, 4, 3, -5]
x = np.arange(1, len(vector) + 1)

ax.stem(x, vector, linefmt='C0-', markerfmt='C0o', bottom=0)
ax.axhline(y=0, color='k', linestyle='--', linewidth=0.5)

ax.set_xticks(x)
ax.set_xticklabels(['1st', '2nd', '3rd', '4th'])
ax.set_xlabel('Component')
ax.set_ylabel('Value')
ax.set_title('Vector Components')

for i, v in enumerate(vector):
    ax.text(i+1, v, f' {v}', verticalalignment='bottom')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]

  #only("1")[
    #voiceover("Here's a visual representation of our vector. Each stem represents a component of the vector.")
  ]

  #only("2")[
    #voiceover("As we can see, there are four stems, corresponding to the four components of our vector.")
  ]

  #only("3")[
    #voiceover("This visual clearly shows why the dimension of the vector is 4 - it's the number of distinct components or coordinates needed to specify the vector.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Importance of Dimension]
  #v(40pt)

  #only("1-")[- Determines the space the vector lives in 🌌]
  #v(20pt)

  #only("2-")[- For this vector: 4D space 🚀]
  #v(20pt)

  #only("3-")[- Each component represents a direction 🧭]
  #v(20pt)

  #only("4-")[- Crucial for operations like:
    - Addition ➕
    - Dot product 🔢
    - Linear transformations 🔄]

  #only("1")[
    #voiceover("Understanding the dimension of a vector is crucial because it tells us about the space in which the vector exists.")
  ]

  #only("2")[
    #voiceover("Our vector, with a dimension of 4, exists in a four-dimensional space. While we can't visualize this directly, it's an important concept in higher mathematics and physics.")
  ]

  #only("3")[
    #voiceover("Each component of the vector represents a direction in this 4D space, just like x, y, and z components represent directions in 3D space.")
  ]

  #only("4")[
    #voiceover("The dimension is crucial for various vector operations. For instance, you can only add vectors of the same dimension, and the dot product is only defined for vectors with the same number of components. It's also essential in understanding linear transformations.")
  ]
]