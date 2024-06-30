#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von zusammengesetzten Figuren]
  #v(40pt)
  
  #only("1-")[- Stell Dir vor, Du entwirfst eine einzigartige Verpackung 📦]
  #v(20pt)
  #only("2-")[- Komplexe Formen in der Architektur 🏛️]
  #v(20pt)
  #only("3-")[- Berechnung der benötigten Farbe für eine Skulptur 🎨]
  
  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über die Oberfläche von zusammengesetzten Figuren. Hast Du Dich jemals gefragt, wie man die Menge an Geschenkpapier berechnet, die für eine einzigartig geformte Geschenkbox benötigt wird?")
  ]
  #only("2")[
    #voiceover("Oder vielleicht hast Du komplexe architektonische Designs bewundert und Dich gefragt, wie Ingenieure die Menge an Material für die Außenfläche berechnen?")
  ]
  #only("3")[
    #voiceover("Vielleicht bist Du ein Künstler und versuchst herauszufinden, wie viel Farbe Du für eine Skulptur benötigst? Dies sind alles Situationen, in denen es nützlich ist, die Oberfläche von zusammengesetzten Figuren zu verstehen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Was sind zusammengesetzte Figuren?]
  #v(40pt)
  
  #only("1-")[- Kombination von grundlegenden 3D-Formen]
  #v(20pt)
  #only("2-")[- Beispiele: Würfel + Zylinder, Kugeln + Kegel]
  #v(20pt)
  #only("3-")[- Anwendungen in der realen Welt 🏠🚀🗽]
  
  #only("1")[
    #voiceover("Zusammengesetzte Figuren sind dreidimensionale Objekte, die aus zwei oder mehr grundlegenden Formen zusammengesetzt sind.")
  ]
  #only("2")[
    #voiceover("Zum Beispiel könnte man eine Figur haben, die teilweise ein Würfel und teilweise ein Zylinder ist, oder vielleicht eine Kombination aus einer Kugel und einem Kegel.")
  ]
  #only("3")[
    #voiceover("Diese Arten von Formen sind überall um uns herum - in Gebäuden, Fahrzeugen, Denkmälern und mehr. Das Verständnis, wie man mit ihnen arbeitet, ist in vielen Bereichen entscheidend.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ansatz zur Berechnung der Oberfläche]
  #v(40pt)
  
  #only("1-")[1. Bestimme die einzelnen Formen]
  #v(20pt)
  #only("2-")[2. Berechne die Oberflächen der einzelnen Formen]
  #v(20pt)
  #only("3-")[3. Ziehe die überlappenden Flächen ab]
  #v(20pt)
  #only("4-")[4. Summiere die verbleibenden Flächen]
  
  #only("1")[
    #voiceover("Nun, lass uns unseren Ansatz zur Berechnung der Oberfläche dieser zusammengesetzten Figuren aufschlüsseln. Zuerst müssen wir die grundlegenden Formen identifizieren, die unsere zusammengesetzte Figur bilden.")
  ]
  #only("2")[
    #voiceover("Als nächstes berechnen wir die Oberfläche jeder einzelnen Form mit den entsprechenden Formeln.")
  ]
  #only("3")[
    #voiceover("Dann müssen wir die Bereiche berücksichtigen, in denen sich diese Formen überlappen. Wir ziehen diese überlappenden Bereiche ab, um eine doppelte Zählung zu vermeiden.")
  ]
  #only("4")[
    #voiceover("Schließlich summieren wir alle verbleibenden Oberflächen, um die Gesamtoberfläche unserer zusammengesetzten Figur zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: Zylinder auf einem Würfel]
  #v(20pt)
  
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 1]
x, y = np.meshgrid(r, r)
ax.plot_surface(x, y, np.zeros_like(x), alpha=0.5)
ax.plot_surface(x, y, np.ones_like(x), alpha=0.5)
for z in r:
    ax.plot3D([0, 1], [0, 0], [z, z], 'b')
    ax.plot3D([0, 1], [1, 1], [z, z], 'b')
    ax.plot3D([0, 0], [0, 1], [z, z], 'b')
    ax.plot3D([1, 1], [0, 1], [z, z], 'b')

# Cylinder
theta = np.linspace(0, 2*np.pi, 100)
z = np.linspace(1, 2, 100)
theta, z = np.meshgrid(theta, z)
x = 0.5 + 0.5*np.cos(theta)
y = 0.5 + 0.5*np.sin(theta)
ax.plot_surface(x, y, z, alpha=0.5)

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 2)
ax.set_box_aspect((1,1,2))
ax.set_axis_off()

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  
  #only("2-")[
    $"SA"_"total" = "SA"_"cube" + "SA"_"cylinder" - "SA"_"overlap"$
  ]
  
  #only("1")[
    #voiceover("Schauen wir uns ein Beispiel an. Hier haben wir einen Zylinder, der auf einem Würfel sitzt. Wie würden wir die Oberfläche dieser zusammengesetzten Figur berechnen?")
  ]
  #only("2")[
    #voiceover("Wir können dies mathematisch ausdrücken als: Die Gesamtoberfläche ist gleich der Oberfläche des Würfels plus der Oberfläche des Zylinders, minus der Fläche, in der sie sich überlappen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Zusammengesetzte Figuren: Kombination von Grundformen]
  #v(20pt)
  #only("2-")[- Ansatz: Identifizieren, Berechnen, Überlappungen abziehen, Summieren]
  #v(20pt)
  #only("3-")[- Anwendungen in Design und Ingenieurwesen]
  
  #only("1")[
    #voiceover("Zusammenfassend sind zusammengesetzte Figuren Kombinationen von grundlegenden dreidimensionalen Formen.")
  ]
  #only("2")[
    #voiceover("Unser Ansatz zur Berechnung ihrer Oberfläche umfasst das Identifizieren der einzelnen Formen, das Berechnen der Oberflächen, das Abziehen überlappender Bereiche und das Summieren der Ergebnisse.")
  ]
  #only("3")[
    #voiceover("Dieses Konzept hat zahlreiche Anwendungen in Bereichen wie Design, Ingenieurwesen und Architektur. Es zu verstehen, ermöglicht es uns, komplexe Probleme mit einzigartigen Formen und Strukturen zu lösen.")
  ]
]