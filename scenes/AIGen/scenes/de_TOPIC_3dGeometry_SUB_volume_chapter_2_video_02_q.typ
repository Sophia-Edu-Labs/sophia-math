#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
  #v(40pt)

  #only("1-")[Wie berechnet man das Volumen eines Quaders? 📦]
  #v(20pt)

  #only("2-")[a) Länge × Breite × Höhe]
  #v(10pt)
  #only("3-")[b) Länge + Breite + Höhe]
  #v(10pt)
  #only("4-")[c) Länge × Breite × Breite]
  #v(10pt)
  #only("5-")[d) Länge × Höhe × Höhe]

  #only("1")[
    #voiceover("Lass uns erkunden, wie man das Volumen eines Quaders berechnet. Ein Quader, auch bekannt als rechteckiges Prisma, ist eine dreidimensionale Form mit sechs rechteckigen Flächen.")
  ]

  #only("2")[
    #voiceover("Wird es berechnet, indem man die Länge, Breite und Höhe multipliziert?")
  ]

  #only("3")[
    #voiceover("Oder vielleicht, indem man die Länge, Breite und Höhe addiert?")
  ]

  #only("4")[
    #voiceover("Könnte es die Länge multipliziert mit der Breite zum Quadrat sein?")
  ]

  #only("5")[
    #voiceover("Oder vielleicht die Länge multipliziert mit der Höhe zum Quadrat?")
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
    #voiceover("Schau dir diese visuelle Darstellung eines Quaders an. Überlege, wie seine dreidimensionale Natur mit der Berechnung seines Volumens zusammenhängen könnte.")
  ]
]]

//Typ: MC 
#questionDef( 
questionText: "Wie berechnet man das Volumen eines Quaders?", 
answerOptions: ("$\\text{Länge} \\times \\text{Breite} \\times \\text{Höhe}$", "$\\text{Länge} + \\text{Breite} + \\text{Höhe}$", "$\\text{Länge} \\times \\text{Breite} \\times \\text{Breite}$", "$\\text{Länge} \\times \\text{Höhe} \\times \\text{Höhe}$"),
correctAnswerIndex: 0 
)