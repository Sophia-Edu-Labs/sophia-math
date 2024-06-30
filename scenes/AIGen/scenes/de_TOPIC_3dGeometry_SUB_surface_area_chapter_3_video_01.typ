#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Quaders: Ein Überblick]
  #v(20pt)

  #only("1-")[#align(center)[#image("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Cuboid.png/220px-Cuboid.png", width: 150pt)]]
  
  #only("2-")[- Quader: 3D-Form mit 6 rechteckigen Flächen 📦]
  #v(10pt)
  #only("3-")[- Dimensionen: Länge (l), Breite (w), Höhe (h)]
  #v(10pt)
  #only("4-")[- Oberfläche: Summe der Flächen aller Seiten]

  #only("1")[
    #voiceover("Lass uns die Oberfläche eines Quaders überprüfen. Stell dir vor, du verpackst ein Geschenk. Wie viel Geschenkpapier würdest du benötigen?")
  ]

  #only("2")[
    #voiceover("Ein Quader, auch bekannt als rechteckiges Prisma, ist eine dreidimensionale Form mit sechs rechteckigen Flächen.")
  ]

  #only("3")[
    #voiceover("Er hat drei Dimensionen: Länge, Breite und Höhe. Wir bezeichnen diese normalerweise als l, w und h.")
  ]

  #only("4")[
    #voiceover("Die Oberfläche eines Quaders ist die Gesamtfläche aller seiner Seiten. Es ist wie das Berechnen, wie viel Geschenkpapier du benötigst, um die gesamte Box zu bedecken.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel und Berechnung]
  #v(20pt)

  #only("1-")[- Formel: $"SA" = 2(l w + l h + w h)$]
  #v(10pt)
  #only("2-")[- Jede Fläche erscheint zweimal]
  #v(10pt)
  #only("3-")[- Beispiel: $l = 3"cm", w = 4"cm", h = 5"cm$]
  #v(10pt)
  #only("4-")[  $"SA" = 2(3 dot 4 + 3 dot 5 + 4 dot 5)$]
  #v(5pt)
  #only("5-")[  $    = 2(12 + 15 + 20)$]
  #v(5pt)
  #only("6-")[  $    = 2(47) = 94 "cm"^2$]

  #only("1")[
    #voiceover("Die Formel für die Oberfläche eines Quaders ist SA gleich 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]

  #only("2")[
    #voiceover("Wir multiplizieren mit 2, weil jede Fläche zweimal auf dem Quader erscheint. Zum Beispiel gibt es zwei Flächen mit Länge mal Breite.")
  ]

  #only("3")[
    #voiceover("Lass uns ein Beispiel durchgehen. Angenommen, wir haben einen Quader mit einer Länge von 3 Zentimetern, einer Breite von 4 Zentimetern und einer Höhe von 5 Zentimetern.")
  ]

  #only("4")[
    #voiceover("Wir setzen diese Werte in unsere Formel ein. SA gleich 2 mal die Summe aus 3 mal 4, 3 mal 5 und 4 mal 5.")
  ]

  #only("5")[
    #voiceover("Vereinfacht ergibt das 2 mal die Summe aus 12, 15 und 20.")
  ]

  #only("6")[
    #voiceover("Wenn wir diese addieren und mit 2 multiplizieren, erhalten wir eine Gesamtoberfläche von 94 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(20pt)

  #only("1-")[- Quader: 6 rechteckige Flächen 📦]
  #v(10pt)
  #only("2-")[- Dimensionen: Länge (l), Breite (w), Höhe (h)]
  #v(10pt)
  #only("3-")[- Formel für die Oberfläche: $"SA" = 2(l w + l h + w h)$]
  #v(10pt)
  #only("4-")[- Praktische Anwendung: Verpacken, Streichen, benötigtes Material 🎁🖌️]

  #only("1")[
    #voiceover("Zusammenfassend ist ein Quader eine dreidimensionale Form mit sechs rechteckigen Flächen.")
  ]

  #only("2")[
    #voiceover("Er wird durch drei Dimensionen definiert: Länge, Breite und Höhe.")
  ]

  #only("3")[
    #voiceover("Die Oberfläche wird mit der Formel berechnet: SA gleich 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]

  #only("4")[
    #voiceover("Das Verständnis der Oberfläche ist für viele reale Anwendungen wichtig, wie das Verpacken von Geschenken, das Streichen von Räumen oder das Berechnen des benötigten Materials für den Bau. Übe weiter, und du wirst dieses Konzept im Handumdrehen beherrschen!")
  ]
]