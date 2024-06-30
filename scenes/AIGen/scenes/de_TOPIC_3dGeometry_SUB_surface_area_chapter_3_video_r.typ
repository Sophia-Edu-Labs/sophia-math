#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Oberfläche von Quadern 📦]
  #v(40pt)
  #only("1-")[- Quader sind 3D-Formen mit rechteckigen Flächen 🧊]
  #only("2-")[- Die Oberfläche ist die Gesamtfläche aller Flächen 🔲]
  #only("3-")[- Formel: SA = 2("lw"+ "lh" + "wh") 📏]
  #only("4-")[- Nützlich für Verpackungen, Bauwesen und mehr! 🏗️]
  
  #only("1")[
    #voiceover("Lass uns die Oberfläche von Quadern wiederholen. Quader, auch bekannt als rechteckige Prismen, sind dreidimensionale Formen mit sechs rechteckigen Flächen.")
  ]
  #only("2")[
    #voiceover("Die Oberfläche eines Quaders ist die Gesamtfläche aller seiner Flächen. Dies ist in vielen realen Anwendungen wichtig.")
  ]
  #only("3")[
    #voiceover("Wir berechnen dies mit der Formel: Oberfläche gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("4")[
    #voiceover("Das Verständnis dieses Konzepts ist in Bereichen wie Verpackungsdesign, Bauwesen und sogar im Alltag beim Umgang mit kastenförmigen Objekten entscheidend.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Formel in Aktion 🧮]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
for side in sides:
    x = [vertex[0] for vertex in side + [side[0]]]
    y = [vertex[1] for vertex in side + [side[0]]]
    z = [vertex[2] for vertex in side + [side[0]]]
    ax.plot(x, y, z, 'b')

# Label dimensions
ax.text(l/2, -0.5, 0, 'l = 4', fontsize=12)
ax.text(l+0.5, w/2, 0, 'w = 3', fontsize=12)
ax.text(l+0.5, w, h/2, 'h = 2', fontsize=12)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("Lass uns unsere Formel auf diesen Quader anwenden. Wir haben einen Quader mit einer Länge von 4, einer Breite von 3 und einer Höhe von 2.")
  ]
  
  #only("2-")[SA = 2("lw"+ "lh" + "wh")]
  #only("3-")[= 2((4 × 3) + (4 × 2) + (3 × 2))]
  #only("4-")[= 2(12 + 8 + 6)]
  #only("5-")[= 2(26) = 52 Quadrat-Einheiten]
  
  #only("2")[
    #voiceover("Wir verwenden unsere Formel: Oberfläche gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("3")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir zwei mal die Summe aus vier mal drei, vier mal zwei und drei mal zwei.")
  ]
  #only("4")[
    #voiceover("Dies vereinfacht sich zu zwei mal die Summe aus zwölf, acht und sechs.")
  ]
  #only("5")[
    #voiceover("Das ergibt zwei mal sechsundzwanzig, was zweiundfünfzig Quadrat-Einheiten entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unbekannte Dimensionen berechnen 🕵️]
  #v(20pt)
  #only("1-")[- Manchmal kennen wir die Oberfläche, müssen aber eine Dimension finden]
  #only("2-")[- Beispiel: SA = 52, l = 4, w = 3, finde h]
  #only("3-")[52 = 2(4 × 3 + 4h + 3h)]
  #only("4-")[52 = 2(12 + 4h + 3h)]
  #only("5-")[52 = 24 + 14h]
  #only("6-")[28 = 14h]
  #only("7-")[h = 2]
  
  #only("1")[
    #voiceover("Manchmal kennen wir die Oberfläche und zwei Dimensionen, müssen aber die dritte finden. Lass uns sehen, wie wir unsere Formel verwenden können, um eine unbekannte Dimension zu berechnen.")
  ]
  #only("2")[
    #voiceover("Zum Beispiel, nehmen wir an, wir wissen, dass die Oberfläche zweiundfünfzig Quadrat-Einheiten beträgt, die Länge vier und die Breite drei ist. Wir müssen die Höhe finden.")
  ]
  #only("3")[
    #voiceover("Wir beginnen mit unserer Formel und ersetzen SA durch zweiundfünfzig, l durch vier und w durch drei. Die Höhe bleibt h.")
  ]
  #only("4")[
    #voiceover("Vereinfachen wir die bekannte Multiplikation, erhalten wir zweiundfünfzig gleich zwei mal zwölf plus vier h plus drei h.")
  ]
  #only("5")[
    #voiceover("Multiplizieren wir die zwei aus, haben wir zweiundfünfzig gleich vierundzwanzig plus vierzehn h.")
  ]
  #only("6")[
    #voiceover("Subtrahieren wir vierundzwanzig von beiden Seiten, erhalten wir achtundzwanzig gleich vierzehn h.")
  ]
  #only("7")[
    #voiceover("Teilen wir beide Seiten durch vierzehn, finden wir, dass h gleich zwei ist, was zu unserem ursprünglichen Quader passt!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🗝️]
  #v(40pt)
  #only("1-")[- Formel: SA = 2("lw"+ "lh" + "wh") 📏]
  #only("2-")[- Anwendbar auf alle Quader 📦]
  #only("3-")[- Kann zur Berechnung unbekannter Dimensionen verwendet werden 🧮]
  #only("4-")[- Nützlich in realen Szenarien 🌍]
  
  #only("1")[
    #voiceover("Zusammenfassend ist die Schlüssel-Formel für die Oberfläche eines Quaders: Oberfläche gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Diese Formel funktioniert für alle Quader, unabhängig von ihrer Größe.")
  ]
  #only("3")[
    #voiceover("Wir können diese Formel nicht nur zur Berechnung der Oberfläche verwenden, sondern auch zur Berechnung unbekannter Dimensionen, wenn wir andere Informationen haben.")
  ]
  #only("4")[
    #voiceover("Das Verständnis und die Anwendung dieses Konzepts ist in vielen realen Szenarien wertvoll, vom Verpackungsdesign bis zum Bauwesen und darüber hinaus.")
  ]
]