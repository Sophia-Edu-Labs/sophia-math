#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
  #v(40pt)

  #only("1-")[How do you calculate the volume of a cuboid? 📦]
  #v(20pt)

  #only("2-")[a) Length × Width × Height]
  #v(10pt)
  #only("3-")[b) Length + Width + Height]
  #v(10pt)
  #only("4-")[c) Length × Width × Width]
  #v(10pt)
  #only("5-")[d) Length × Height × Height]

  #only("1")[
    #voiceover("Let's explore how to calculate the volume of a cuboid. A cuboid, also known as a rectangular prism, is a three-dimensional shape with six rectangular faces.")
  ]

  #only("2")[
    #voiceover("Is it calculated by multiplying the length, width, and height?")
  ]

  #only("3")[
    #voiceover("Or perhaps by adding the length, width, and height?")
  ]

  #only("4")[
    #voiceover("Could it be the length multiplied by the width squared?")
  ]

  #only("5")[
    #voiceover("Or maybe it's the length multiplied by the height squared?")
  ]

  #v(20pt)
  #only("6-")[
    #align(center)[
      #box(width: 200pt, height: 150pt)[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

              import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Plotting the cuboid
ax.bar3d(0, 0, 0, l, w, h, shade=True)

# Setting labels
ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])
ax.set_zticks([])

plt.title('Cuboid')
plt.show()
            ```,
            width: 200pt
          ),
        )
      ]
    ]
  ]

  #only("6")[
    #voiceover("Take a look at this visual representation of a cuboid. Consider how its three-dimensional nature might relate to the calculation of its volume.")
  ]
]]

//Type: MC 
#questionDef( 
questionText: "How do you calculate the volume of a cuboid?", 
answerOptions: ("$\\text{Length} \\times \\text{Width} \\times \\text{Height}$", "$\\text{Length} + \\text{Width} + \\text{Height}$", "$\\text{Length} \\times \\text{Width} \\times \\text{Width}$", "$\\text{Length} \\times \\text{Height} \\times \\text{Height}$"),
correctAnswerIndex: 0 
)