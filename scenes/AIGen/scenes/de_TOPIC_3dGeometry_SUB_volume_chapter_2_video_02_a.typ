#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
  #v(40pt)
  #only("1-")[Wie berechnet man das Volumen eines Quaders?]
  #v(40pt)
  #only("-1")[a) Länge × Breite × Höhe]#only("2-")[#text(fill:green)[a) Länge × Breite × Höhe]]
  #v(10pt)
  #only("-2")[b) Länge + Breite + Höhe]#only("3-")[#text(fill:red)[b) Länge + Breite + Höhe]]
  #v(10pt)
  #only("-3")[c) Länge × Breite × Breite]#only("4-")[#text(fill:red)[c) Länge × Breite × Breite]]
  #v(10pt)
  #only("-4")[d) Länge × Höhe × Höhe]#only("5-")[#text(fill:red)[d) Länge × Höhe × Höhe]]
  #v(40pt)

  #only("1")[#voiceover("Großartig! Du hast diese Frage richtig beantwortet. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
  #only("2")[#voiceover("Option a, Länge mal Breite mal Höhe, ist tatsächlich die richtige Formel zur Berechnung des Volumens eines Quaders. Diese Formel erfasst alle drei Dimensionen des Quaders und gibt uns sein Gesamtvolumen.")]
  #only("3")[#voiceover("Option b, Länge plus Breite plus Höhe, ist falsch. Das Addieren der Dimensionen würde uns nur die Summe der Kanten des Quaders geben, nicht sein Volumen.")]
  #only("4")[#voiceover("Option c, Länge mal Breite mal Breite, ist ebenfalls falsch. Diese Formel wiederholt die Breite zweimal und vernachlässigt die Höhe.")]
  #only("5")[#voiceover("Zuletzt ist Option d, Länge mal Höhe mal Höhe, aus dem gleichen Grund wie c falsch. Sie wiederholt die Höhe und lässt die Breite aus.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verständnis des Quader-Volumens]
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
length, width, height = 4, 3, 2

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [length, 0, 0], [length, width, 0], [0, width, 0],
    [0, 0, height], [length, 0, height], [length, width, height], [0, width, height]
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
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot(x + [x[0]], y + [y[0]], z + [z[0]], color='b')

# Add dimension labels
ax.text(length/2, -0.5, 0, "Length", color='r', fontsize=12)
ax.text(length+0.5, width/2, 0, "Width", color='r', fontsize=12)
ax.text(length+0.5, width+0.5, height/2, "Height", color='r', fontsize=12)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cuboid Dimensions')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [Quader mit beschrifteten Dimensionen]
      )
    ]
  ]]
  #only("1")[#voiceover("Lass uns einen Quader visualisieren, um sein Volumen besser zu verstehen. Wie du sehen kannst, hat ein Quader drei Dimensionen: Länge, Breite und Höhe. Um sein Volumen zu finden, müssen wir alle drei dieser Dimensionen berücksichtigen.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumenformel erklärt]
  #v(40pt)
  #only("1-")[Volumen = Länge × Breite × Höhe]
  #v(20pt)
  #only("2-")[📏 Länge: Wie lang der Quader ist]
  #v(10pt)
  #only("3-")[↔️ Breite: Wie breit der Quader ist]
  #v(10pt)
  #only("4-")[↕️ Höhe: Wie hoch der Quader ist]
  #v(20pt)
  #only("5-")[🧊 Volumen: Der Raum innerhalb des Quaders]
  
  #only("1")[#voiceover("Die Formel für das Volumen eines Quaders ist einfach: Länge mal Breite mal Höhe.")]
  #only("2")[#voiceover("Die Länge ist, wie lang der Quader von einem Ende zum anderen ist.")]
  #only("3")[#voiceover("Die Breite ist, wie breit der Quader von Seite zu Seite ist.")]
  #only("4")[#voiceover("Und die Höhe ist, wie hoch der Quader von oben nach unten ist.")]
  #only("5")[#voiceover("Wenn wir diese drei Dimensionen miteinander multiplizieren, erhalten wir den gesamten Raum innerhalb des Quaders, also sein Volumen.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Warum diese Formel funktioniert]
  #v(40pt)
  #only("1-")[🔢 Sie zählt alle Einheitswürfel im Inneren]
  #v(20pt)
  #only("2-")[🔁 Wiederholte Addition wird zu Multiplikation]
  #v(20pt)
  #only("3-")[3️⃣ Alle drei Dimensionen sind notwendig]
  #v(20pt)
  #only("4-")[🎯 Sie gibt den genauen belegten Raum an]
  
  #only("1")[#voiceover("Diese Formel funktioniert, weil sie im Wesentlichen alle Einheitswürfel zählt, die in den Quader passen könnten.")]
  #only("2")[#voiceover("Stell dir vor, du legst Reihen von Würfeln aus, stapelst diese Reihen und wiederholst diesen Vorgang für jede Schicht. Diese wiederholte Addition wird zur Multiplikation.")]
  #only("3")[#voiceover("Wir benötigen alle drei Dimensionen, weil ein Quader sich in drei Richtungen erstreckt. Das Auslassen einer Dimension würde zu einer falschen Berechnung führen.")]
  #only("4")[#voiceover("Durch das Multiplizieren von Länge, Breite und Höhe berechnen wir den genauen Raum, den der Quader einnimmt, also sein Volumen.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)
  #only("1-")[✅ Volumen eines Quaders = Länge × Breite × Höhe]
  #v(20pt)
  #only("2-")[🔑 Denke daran: Alle drei Dimensionen sind entscheidend]
  #v(20pt)
  #only("3-")[💡 Diese Formel gilt für alle Quader, einschließlich Würfel!]
  
  #only("1")[#voiceover("Zusammenfassend: Das Volumen eines Quaders wird immer berechnet, indem man seine Länge, Breite und Höhe multipliziert.")]
  #only("2")[#voiceover("Es ist entscheidend, alle drei Dimensionen in deine Berechnung einzubeziehen. Das Vergessen einer Dimension führt zu einem falschen Ergebnis.")]
  #only("3")[#voiceover("Interessanterweise funktioniert diese Formel für alle Quader, einschließlich Würfel, bei denen Länge, Breite und Höhe gleich sind. Übe weiter, und du wirst dieses Konzept im Handumdrehen beherrschen!")]
]