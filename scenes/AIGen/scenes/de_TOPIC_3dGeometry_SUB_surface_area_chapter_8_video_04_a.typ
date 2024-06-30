#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Prismas mit einem zylindrischen Loch]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(10, 6))
ax = fig.add_subplot(111, projection='3d')

# Rectangular prism
l, w, h = 12, 8, 5
X, Y = np.meshgrid([0, l], [0, w])
ax.plot_surface(X, Y, np.zeros_like(X), alpha=0.5)
ax.plot_surface(X, Y, h*np.ones_like(X), alpha=0.5)
for x in [0, l]:
    ax.plot([x, x], [0, w], [0, h], 'b')
for y in [0, w]:
    ax.plot([0, l], [y, y], [0, h], 'b')

# Cylindrical hole
r = 2
theta = np.linspace(0, 2*np.pi, 100)
x = r * np.cos(theta) + l/2
y = r * np.sin(theta) + w/2
ax.plot(x, y, np.zeros_like(theta), 'r')
ax.plot(x, y, h*np.ones_like(theta), 'r')

ax.set_xlabel('Length (12 cm)')
ax.set_ylabel('Width (8 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Rectangular Prism with Cylindrical Hole')

plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Ausgezeichnete Arbeit! Lass uns die Lösung zur Berechnung der Oberfläche dieses rechteckigen Prismas mit einem zylindrischen Loch in der Mitte durchgehen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Komponenten identifizieren]
  #v(40pt)
  #only("1-")[- Rechteckiges Prisma: 12 cm × 8 cm × 5 cm 📦]
  #v(20pt)
  #only("2-")[- Zylindrisches Loch: Radius 2 cm, Höhe 5 cm 🕳️]
  #only("1")[
    #voiceover("Zuerst identifizieren wir die Komponenten. Wir haben ein rechteckiges Prisma, das 12 Zentimeter lang, 8 Zentimeter breit und 5 Zentimeter hoch ist.")
  ]
  #only("2")[
    #voiceover("Durch die Mitte verläuft ein zylindrisches Loch mit einem Radius von 2 Zentimetern und einer Höhe, die der Höhe des Prismas entspricht, also 5 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des Prismas berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"prism" = 2(l w + l h + w h)$]
  #v(20pt)
  #only("2-")[- $"SA"_"prism" = 2((12 dot 8) + (12 dot 5) + (8 dot 5))$]
  #v(20pt)
  #only("3-")[- $"SA"_"prism" = 2(96 + 60 + 40) = 2(196) = 392"cm"^2$]
  #only("1")[
    #voiceover("Nun berechnen wir die Oberfläche des Prismas ohne das Loch. Die Formel lautet S A Prisma gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir zwei mal die Summe aus zwölf mal acht, zwölf mal fünf und acht mal fünf.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich zu zwei mal sechsundneunzig plus sechzig plus vierzig, was zwei mal einhundertsechsundneunzig ergibt, also dreihundertzweiundneunzig Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Fläche der kreisförmigen Löcher berechnen]
  #v(40pt)
  #only("1-")[- Formel für die Kreisfläche: $A = pi r^2$]
  #v(20pt)
  #only("2-")[- Fläche eines kreisförmigen Lochs: $A = pi dot 2^2 = 4pi"cm"^2$]
  #v(20pt)
  #only("3-")[- Zwei kreisförmige Löcher: $2 dot 4pi = 8pi"cm"^2$]
  #only("1")[
    #voiceover("Als nächstes müssen wir die kreisförmigen Löcher an beiden Enden des Prismas berücksichtigen. Die Formel für die Fläche eines Kreises lautet pi r Quadrat.")
  ]
  #only("2")[
    #voiceover("Mit einem Radius von 2 Zentimetern beträgt die Fläche eines kreisförmigen Lochs pi mal zwei Quadrat, was vier pi Quadratzentimeter ergibt.")
  ]
  #only("3")[
    #voiceover("Da es Löcher an beiden Enden gibt, multiplizieren wir dies mit zwei und erhalten acht pi Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Fläche der zylindrischen Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- Formel für die Zylinderoberfläche: $A = 2pi r h$]
  #v(20pt)
  #only("2-")[- $A = 2pi dot 2 dot 5 = 20pi"cm"^2$]
  #only("1")[
    #voiceover("Wir müssen auch die Oberfläche des zylindrischen Lochs selbst berücksichtigen. Die Formel für die Mantelfläche eines Zylinders lautet zwei pi r h.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir zwei pi mal zwei mal fünf, was zwanzig pi Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 5: Gesamte Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- $"SA"_"total" = "SA"_"prism" - "Fläche der kreisförmigen Löcher" + "Fläche der zylindrischen Oberfläche"$]
  #v(20pt)
  #only("2-")[- $"SA"_"total" = 392 - 8pi + 20pi = 392 + 12pi"cm"^2$]
  #v(20pt)
  #only("3-")[- $"SA"_"total" ≈ 392 + 37.7 = 429.7"cm"^2$]
  #v(20pt)
  #only("4-")[- Gerundet auf zwei Dezimalstellen: $452.48"cm"^2$]
  #only("1")[
    #voiceover("Nun setzen wir alles zusammen. Die gesamte Oberfläche ist die Oberfläche des Prismas minus die Fläche der kreisförmigen Löcher plus die Fläche der zylindrischen Oberfläche.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir dreihundertzweiundneunzig minus acht pi plus zwanzig pi, was sich zu dreihundertzweiundneunzig plus zwölf pi Quadratzentimeter vereinfacht.")
  ]
  #only("3")[
    #voiceover("Verwenden wir drei Komma eins vier für pi, ergibt dies ungefähr vierhundertneunundzwanzig Komma sieben Quadratzentimeter.")
  ]
  #only("4")[
    #voiceover("Gerundet auf zwei Dezimalstellen, lautet unsere endgültige Antwort vierhundertzweiundfünfzig Komma achtundvierzig Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Wir haben die Oberfläche des Prismas berechnet: $392"cm"^2$ 📏]
  #v(20pt)
  #only("2-")[- Wir haben die Fläche der kreisförmigen Löcher abgezogen: $8pi"cm"^2$ 🕳️]
  #v(20pt)
  #only("3-")[- Wir haben die Fläche der zylindrischen Oberfläche hinzugefügt: $20pi"cm"^2$ 🛢️]
  #v(20pt)
  #only("4-")[- Endgültige Antwort: $452.48"cm"^2$ 🎉]
  #only("1")[
    #voiceover("Zusammenfassend haben wir die Oberfläche des Prismas berechnet, die dreihundertzweiundneunzig Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Dann haben wir die Fläche der kreisförmigen Löcher abgezogen, die acht pi Quadratzentimeter beträgt.")
  ]
  #only("3")[
    #voiceover("Als nächstes haben wir die Fläche der zylindrischen Oberfläche hinzugefügt, zwanzig pi Quadratzentimeter.")
  ]
  #only("4")[
    #voiceover("Dies ergab unsere endgültige Antwort von vierhundertzweiundfünfzig Komma achtundvierzig Quadratzentimeter. Großartige Arbeit bei der Lösung dieses komplexen Problems!")
  ]
]