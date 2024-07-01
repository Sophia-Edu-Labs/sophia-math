#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns eine Übung zum Berechnen des Volumens eines Quaders lösen.")
  ]
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
  #v(40pt)
  
  #only("2-")[
    Berechne das Volumen eines Quaders mit den Maßen:
    #v(10pt)
    - Länge: 8 m
    - Breite: 2 m
    - Höhe: 3 m
  ]
  
  #only("2")[
    #voiceover("Berechne das Volumen eines Quaders mit den folgenden Maßen: Länge 8 Meter, Breite 2 Meter und Höhe 3 Meter.")
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
    #voiceover("Hier ist eine visuelle Darstellung des Quaders mit den gegebenen Maßen. Denke daran, um das Volumen zu berechnen, müssen wir Länge, Breite und Höhe multiplizieren.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne das Volumen eines Quaders mit den Maßen $8 	ext{ m} 	imes 2 	ext{ m} 	imes 3 	ext{ m}$.", 
answerOptions: ("$\\text{Volumen} = 48 \, \\text{m}^3$", "$\\text{Volumen} = -92 \, \\text{m}^3$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volumen} = \key{a} \, \\text{m}^3$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)