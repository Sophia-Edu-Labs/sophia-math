#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von Quadern]
  #v(40pt)
  
  #only("1-")[#align(center)[#image("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Cuboid.png/240px-Cuboid.png", width: 200pt)]]
  
  #only("2-")[- Quader: 3D-Form mit 6 rechteckigen Flächen 📦]
  #v(20pt)
  #only("3-")[- Oberfläche: Gesamtfläche aller Flächen 🔢]
  #v(20pt)
  #only("4-")[- Nicht alle Flächen müssen identisch sein! 🔍]

  #only("1")[
    #voiceover("Stell dir vor, du verpackst ein Geschenk. Wie viel Geschenkpapier würdest du benötigen? Diese Frage führt uns zur Erkundung der Oberfläche von Quadern.")
  ]
  #only("2")[
    #voiceover("Ein Quader, auch bekannt als rechteckiges Prisma, ist eine dreidimensionale Form mit sechs rechteckigen Flächen.")
  ]
  #only("3")[
    #voiceover("Die Oberfläche eines Quaders ist die Gesamtfläche all dieser Flächen. Es ist, als ob du berechnen würdest, wie viel Farbe du benötigst, um die gesamte Box zu bedecken.")
  ]
  #only("4")[
    #voiceover("Ein wichtiger Punkt ist, dass nicht alle Flächen eines Quaders notwendigerweise identisch sind. Denke an eine Schuhschachtel - die Ober- und Unterseite sind gleich, aber die Seiten könnten unterschiedlich sein.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
  #v(40pt)
  
  #only("1-")[- Summe der Flächen aller 6 Seiten ➕]
  #v(20pt)
  #only("2-")[- Fläche eines Rechtecks = Länge × Breite]
  #v(20pt)
  #only("3-")[- Für einen Quader mit den Maßen l, w, h:]
  #v(10pt)
  #only("4-")[  $"SA" = 2(l w + l h + w h)$]

  #only("1")[
    #voiceover("Um die Oberfläche eines Quaders zu finden, müssen wir die Flächen aller sechs Seiten summieren.")
  ]
  #only("2")[
    #voiceover("Denke daran, jede Seite ist ein Rechteck, und die Fläche eines Rechtecks wird berechnet, indem man seine Länge mit seiner Breite multipliziert.")
  ]
  #only("3")[
    #voiceover("Für einen Quader mit der Länge l, der Breite w und der Höhe h, können wir die Oberfläche mit einer Formel ausdrücken.")
  ]
  #only("4")[
    #voiceover("Die Oberfläche ist gleich zwei mal die Summe von Länge mal Breite, plus Länge mal Höhe, plus Breite mal Höhe. Dies berücksichtigt alle sechs Seiten des Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: Geschenkbox]
  #v(40pt)
  
  #only("1-")[- Maße: 30cm × 20cm × 10cm 📏]
  #v(20pt)
  #only("2-")[- Berechnung der Oberfläche:]
  #v(10pt)
  #only("3-")[  $"SA" = 2(30 dot 20 + 30 dot 10 + 20 dot 10)$]
  #v(10pt)
  #only("4-")[  $"SA" = 2(600 + 300 + 200) = 2(1100) = 2200"cm"^2$]

  #only("1")[
    #voiceover("Lass uns dies auf unser Geschenkbox-Beispiel anwenden. Angenommen, wir haben eine Box, die 30 Zentimeter lang, 20 Zentimeter breit und 10 Zentimeter hoch ist.")
  ]
  #only("2")[
    #voiceover("Um die Oberfläche zu berechnen, verwenden wir unsere Formel.")
  ]
  #only("3")[
    #voiceover("Wir multiplizieren 30 mit 20 für die Ober- und Unterseite, 30 mit 10 für die Vorder- und Rückseite und 20 mit 10 für die Seiten. Dann addieren wir diese und multiplizieren mit 2.")
  ]
  #only("4")[
    #voiceover("Das ergibt 2200 Quadratzentimeter. So viel Geschenkpapier würden wir benötigen, um die gesamte Box zu bedecken!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Oberfläche = Summe aller Flächen 🧮]
  #v(20pt)
  #only("2-")[- Quader: 6 rechteckige Flächen, nicht alle identisch 📦]
  #v(20pt)
  #only("3-")[- Formel: $"SA" = 2(l w + l h + w h)$ 📐]
  #v(20pt)
  #only("4-")[- Praktische Anwendungen: Verpacken, Malen, etc. 🎁🖌️]

  #only("1")[
    #voiceover("Zusammengefasst ist die Oberfläche eines Quaders die Summe der Flächen aller seiner Seiten.")
  ]
  #only("2")[
    #voiceover("Denke daran, ein Quader hat sechs rechteckige Flächen, und diese Flächen müssen nicht alle identisch sein.")
  ]
  #only("3")[
    #voiceover("Wir können die Oberfläche mit der Formel berechnen: Oberfläche ist gleich zwei mal die Summe von Länge mal Breite, plus Länge mal Höhe, plus Breite mal Höhe.")
  ]
  #only("4")[
    #voiceover("Das Verständnis der Oberfläche hat praktische Anwendungen, vom Verpacken von Geschenken bis zum Streichen von Räumen. Erforsche weiter, und du wirst viele weitere Anwendungen für dieses Konzept finden!")
  ]
]