#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Würfels]
  #v(40pt)
  Wie berechnet man das Volumen eines Würfels?
  #v(20pt)
  #only("-1")[a) Seitenlänge × Seitenlänge]#only("2-")[#text(fill:red)[a) Seitenlänge × Seitenlänge]]
  #v(10pt)
  #only("-2")[b) 6 × Seitenlänge]#only("3-")[#text(fill:red)[b) 6 × Seitenlänge]]
  #v(10pt)
  #only("-3")[c) Seitenlänge × Seitenlänge × Seitenlänge]#only("4-")[#text(fill:green)[c) Seitenlänge × Seitenlänge × Seitenlänge]]
  #v(10pt)
  #only("-4")[d) Seitenlänge × Seitenlänge × Höhe]#only("5-")[#text(fill:red)[d) Seitenlänge × Seitenlänge × Höhe]]

  #only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen, warum c die richtige Antwort ist und warum die anderen falsch sind.")]
  #only("2")[#voiceover("Option a, Seitenlänge mal Seitenlänge, ist falsch. Diese Formel berechnet tatsächlich die Fläche einer Seite des Würfels, nicht sein Volumen.")]
  #only("3")[#voiceover("Option b, 6 mal Seitenlänge, ist ebenfalls falsch. Diese Formel berechnet die Summe der Längen aller Kanten eines Würfels, nicht sein Volumen.")]
  #only("4")[#voiceover("Option c, Seitenlänge mal Seitenlänge mal Seitenlänge, ist die richtige Antwort! Diese Formel gibt uns das Volumen eines Würfels.")]
  #only("5")[#voiceover("Option d, Seitenlänge mal Seitenlänge mal Höhe, ist für einen Würfel falsch. Während diese Formel für rechteckige Prismen funktioniert, sind bei einem Würfel alle Seiten gleich, sodass wir nicht zwischen Seitenlänge und Höhe unterscheiden müssen.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verständnis des Würfelvolumens]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = [
    [0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
    [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]
]

# Cube edges
edges = [
    [0, 1], [1, 2], [2, 3], [3, 0],  # bottom face
    [4, 5], [5, 6], [6, 7], [7, 4],  # top face
    [0, 4], [1, 5], [2, 6], [3, 7]   # connecting edges
]

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*[vertices[i] for i in edge]), color="b")

# Label axes
ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

# Set axis limits
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

# Add text annotations
ax.text(0.5, -0.1, 0, "side length", ha='center')
ax.text(-0.1, 0.5, 0, "side length", va='center')
ax.text(0, 0, 0.5, "side length", va='center')

plt.title("Cube Dimensions")
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Ein Würfel mit beschrifteten Dimensionen]
      )
    ]
  ]]
  #only("1")[#voiceover("Lass uns einen Würfel visualisieren, um sein Volumen besser zu verstehen. Ein Würfel hat drei Dimensionen: Länge, Breite und Höhe. Bei einem Würfel sind all diese Dimensionen gleich und wir nennen dies die 'Seitenlänge'.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumenformel]
  #v(40pt)
  #only("1-")[Volumen eines Würfels = Seitenlänge × Seitenlänge × Seitenlänge]
  #v(20pt)
  #only("2-")[Oder kürzer: $V = s^3$]
  #v(20pt)
  #only("3-")[Wobei $s$ die Seitenlänge ist]
  #only("1")[#voiceover("Das Volumen eines Würfels wird berechnet, indem die Seitenlänge dreimal mit sich selbst multipliziert wird. Dies liegt daran, dass wir den Raum innerhalb eines dreidimensionalen Objekts finden.")]
  #only("2")[#voiceover("Wir können dies kürzer schreiben als V gleich s hoch drei, wobei s die Seitenlänge darstellt.")]
  #only("3")[#voiceover("Diese Formel funktioniert, weil ein Würfel gleiche Länge, Breite und Höhe hat, die alle durch s dargestellt werden.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispielrechnung]
  #v(20pt)
  #only("1-")[Lass uns das Volumen eines Würfels mit einer Seitenlänge von 4 cm berechnen:]
  #v(20pt)
  #only("2-")[$ V = s^3 = 4"cm" × 4"cm" × 4"cm" = 64"cm"^3 $]
  #v(40pt)
  #only("3-")[💡 Denke daran: Die Einheit für Volumen ist Kubikeinheiten (z.B. cm³)]
  #only("1")[#voiceover("Lass uns ein Beispiel versuchen. Angenommen, wir haben einen Würfel mit einer Seitenlänge von 4 Zentimetern.")]
  #only("2")[#voiceover("Wir setzen 4 in unsere Formel ein: V gleich 4 Zentimeter mal 4 Zentimeter mal 4 Zentimeter, was 64 Kubikzentimeter ergibt.")]
  #only("3")[#voiceover("Denke daran, dass die Einheit für Volumen immer Kubikeinheiten ist. In diesem Fall sind es Kubikzentimeter.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)
  #only("1-")[- Volumen eines Würfels = Seitenlänge³]
  #v(20pt)
  #only("2-")[- Alle Seiten eines Würfels sind gleich]
  #v(20pt)
  #only("3-")[- Einheiten sind wichtig! (z.B. cm³, m³, usw.)]
  #v(20pt)
  #only("4-")[- Übe mit verschiedenen Seitenlängen, um dieses Konzept zu meistern]
  #only("1")[#voiceover("Zusammenfassend wird das Volumen eines Würfels berechnet, indem die Seitenlänge hoch drei genommen wird.")]
  #only("2")[#voiceover("Denke daran, dass alle Seiten eines Würfels gleich sind, weshalb wir denselben Wert dreimal verwenden.")]
  #only("3")[#voiceover("Vergiss nicht, Einheiten in deiner Antwort anzugeben, typischerweise Kubikeinheiten wie Kubikzentimeter oder Kubikmeter.")]
  #only("4")[#voiceover("Um dieses Konzept wirklich zu verstehen, versuche, die Volumen von Würfeln mit verschiedenen Seitenlängen zu berechnen. Mit Übung wirst du dieses wichtige geometrische Prinzip meistern!")]
]