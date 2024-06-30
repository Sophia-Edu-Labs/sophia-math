#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche zusammengesetzter Figuren]
  #v(40pt)
  
  #only("1-")[#align(center)[
    #box(width: 200pt, height: 150pt)[
      #morphchildren(id: "composite_shape")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle

fig, ax = plt.subplots()
ax.add_patch(Rectangle((0, 0), 4, 3, fill=False))
ax.add_patch(Circle((4, 1.5), 1.5, fill=False))
ax.set_xlim(-0.5, 6)
ax.set_ylim(-0.5, 3.5)
ax.set_aspect('equal', adjustable='box')
ax.axis('off')
plt.show()
          ```,
          width: 200pt),
        )
      ]
    ]
  ]]
  
  #only("2-")[- Zusammengesetzte Figur: Kombination einfacher Formen]
  #v(20pt)
  #only("3-")[- Oberfläche = Summe der Flächen der einzelnen Teile]
  #v(20pt)
  #only("4-")[- Überlappende Bereiche abziehen]
  
  #only("1")[
    #voiceover("Stell dir vor, du entwirfst ein neues Logo für den Robotik-Club deiner Schule. Du hast ein Design, das ein Rechteck und einen Kreis kombiniert. Wie würdest du die Oberfläche dieses Logos berechnen, wenn du es anmalen müsstest?")
  ]
  
  #only("2")[
    #voiceover("Dies ist ein Beispiel für eine zusammengesetzte Figur - eine Form, die aus zwei oder mehr einfachen Formen besteht.")
  ]
  
  #only("3")[
    #voiceover("Um die Oberfläche einer zusammengesetzten Figur zu finden, müssen wir die Oberflächen aller einzelnen Teile addieren.")
  ]
  
  #only("4")[
    #voiceover("Wir müssen jedoch vorsichtig sein. Wenn es überlappende Bereiche zwischen den Formen gibt, müssen wir diese abziehen, um sie nicht doppelt zu zählen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
  #v(40pt)
  
  #only("1-")[#align(center)[
    #box(width: 200pt, height: 150pt)[
      #morphchildren(id: "composite_shape_calc")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle

fig, ax = plt.subplots()
rect = Rectangle((0, 0), 4, 3, fill=False)
circ = Circle((4, 1.5), 1.5, fill=False)
ax.add_patch(rect)
ax.add_patch(circ)
ax.text(2, 1.5, "A", ha='center', va='center')
ax.text(5, 1.5, "B", ha='center', va='center')
ax.text(3.5, 1.5, "C", ha='center', va='center')
ax.set_xlim(-0.5, 6)
ax.set_ylim(-0.5, 3.5)
ax.set_aspect('equal', adjustable='box')
ax.axis('off')
plt.show()
          ```,
          width: 200pt),
        )
      ]
    ]
  ]]
  
  #only("2-")[$ "Total SA" = "SA"_A + "SA"_B - "SA"_C $]
  #v(20pt)
  #only("3-")[A: Rechteck, B: Kreis, C: Überlappung]
  #v(20pt)
  #only("4-")[Denke daran: $ "SA"_"rectangle" = l w $]
  #v(20pt)
  #only("5-")[$ "SA"_"circle" = pi r^2 $]
  
  #only("1")[
    #voiceover("Schauen wir uns unser Logo-Beispiel genauer an. Wir haben ein Rechteck, das wir A nennen, und einen Kreis, den wir B nennen. Der Bereich, in dem sie sich überlappen, nennen wir C.")
  ]
  
  #only("2")[
    #voiceover("Um die gesamte Oberfläche zu berechnen, addieren wir die Oberflächen von A und B und ziehen dann die Oberfläche von C ab. Das ergibt die Formel: Gesamtoberfläche gleich Oberfläche von A plus Oberfläche von B minus Oberfläche von C.")
  ]
  
  #only("3")[
    #voiceover("Hier ist A unser Rechteck, B unser Kreis und C der überlappende Bereich.")
  ]
  
  #only("4")[
    #voiceover("Denke daran, dass die Oberfläche eines Rechtecks durch Multiplikation seiner Länge mit seiner Breite gefunden wird.")
  ]
  
  #only("5")[
    #voiceover("Und die Oberfläche eines Kreises ist pi mal Radius zum Quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Zusammengesetzte Figuren: Kombination einfacher Formen]
  #v(20pt)
  #only("2-")[- Oberfläche = Summe der einzelnen Teile]
  #v(20pt)
  #only("3-")[- Überlappende Bereiche abziehen]
  #v(20pt)
  #only("4-")[- Formel: $ "Total SA" = "SA"_A + "SA"_B - "SA"_C $]
  
  #only("1")[
    #voiceover("Zusammenfassend sind zusammengesetzte Figuren Kombinationen aus einfachen Formen.")
  ]
  
  #only("2")[
    #voiceover("Um ihre Oberfläche zu berechnen, addieren wir die Oberflächen aller einzelnen Teile.")
  ]
  
  #only("3")[
    #voiceover("Aber wir müssen darauf achten, überlappende Bereiche abzuziehen, um sie nicht doppelt zu zählen.")
  ]
  
  #only("4")[
    #voiceover("Das ergibt unsere allgemeine Formel: Gesamtoberfläche gleich die Summe der einzelnen Oberflächen minus alle überlappenden Bereiche. Merke dir dieses Prinzip, und du wirst auch komplexe zusammengesetzte Figuren meistern können!")
  ]
]