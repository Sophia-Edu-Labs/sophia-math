#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's solve an exercise about calculating the volume of a cuboid.")
  ]
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
  #v(40pt)
  
  #only("2-")[
    Calculate the volume of a cuboid with dimensions:
    #v(10pt)
    - Length: 8 m
    - Width: 2 m
    - Height: 3 m
  ]
  
  #only("2")[
    #voiceover("Calculate the volume of a cuboid with the following dimensions: length 8 meters, width 2 meters, and height 3 meters.")
  ]
  
  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 8, 2, 3

# Cuboid vertices
x = [0, l, l, 0, 0, l, l, 0]
y = [0, 0, w, w, 0, 0, w, w]
z = [0, 0, 0, 0, h, h, h, h]

# Plot vertices
ax.scatter(x, y, z)

# Plot edges
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
for i in [0, 1, 4, 5]:
    ax.plot([x[i], x[i+1]], [y[i], y[i+1]], [z[i], z[i+1]], 'b')
for i in [0, 1, 2, 3]:
    ax.plot([x[i], x[(i+1)%4]], [y[i], y[(i+1)%4]], [z[i], z[(i+1)%4]], 'b')

# Label dimensions
ax.text(l/2, -0.5, 0, '8 m', ha='center')
ax.text(l, w/2, -0.5, '2 m', ha='center')
ax.text(l+0.5, 0, h/2, '3 m', va='center')

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]]
  ]
  
  #only("3")[
    #voiceover("Here's a visual representation of the cuboid with its given dimensions. Remember, to find the volume, we need to multiply the length, width, and height.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the volume of a cuboid with dimensions $8 	ext{ m} 	imes 2 	ext{ m} 	imes 3 	ext{ m}$.", 
answerOptions: ("$\\text{Volume} = 48 \, \\text{m}^3$", "$\\text{Volume} = -92 \, \\text{m}^3$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volume} = \key{a} \, \\text{m}^3$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)