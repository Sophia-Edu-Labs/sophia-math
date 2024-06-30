#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von Würfeln]
  #v(40pt)

  #only("1-")[#align(center)[#box(width: 100pt, height: 100pt, stroke: black)[📦]]]
  
  #only("2-")[- Jede Seite ist ein Quadrat]
  #v(20pt)
  #only("3-")[- 6 identische Seiten]
  #v(20pt)
  #only("4-")[- Fläche einer Seite: $s^2$]
  #v(20pt)
  #only("5-")[- Gesamte Oberfläche: $6s^2$]

  #only("1")[
    #voiceover("Stell dir vor, du verpackst ein Geschenk. Wie viel Geschenkpapier würdest du benötigen? Hier kommt das Konzept der Oberfläche ins Spiel, besonders bei würfelförmigen Objekten.")
  ]
  #only("2")[
    #voiceover("Lass uns die Oberfläche eines Würfels betrachten. Zunächst einmal ist jede Seite eines Würfels ein perfektes Quadrat.")
  ]
  #only("3")[
    #voiceover("Ein Würfel hat sechs identische Seiten - denk daran: oben, unten, vorne, hinten, links und rechts.")
  ]
  #only("4")[
    #voiceover("Die Fläche einer Seite ist einfach die Seitenlänge zum Quadrat. Wenn wir die Seitenlänge s nennen, dann ist die Fläche einer Seite s zum Quadrat.")
  ]
  #only("5")[
    #voiceover("Da es sechs identische Seiten gibt, multiplizieren wir die Fläche einer Seite mit 6. Also ist die gesamte Oberfläche eines Würfels 6 mal s zum Quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
  #v(40pt)

  #only("1-")[Beispiel: Würfel mit einer Seitenlänge von 5 cm]
  #v(20pt)
  #only("2-")[- Fläche einer Seite: $5^2 = 25"cm"^2$]
  #v(20pt)
  #only("3-")[- Gesamte Oberfläche: $6 dot 25 = 150"cm"^2$]
  #v(40pt)
  #only("4-")[Formel: $"SA" = 6s^2$]

  #only("1")[
    #voiceover("Lass uns ein Beispiel durchgehen, um zu sehen, wie wir die Oberfläche berechnen. Angenommen, wir haben einen Würfel mit einer Seitenlänge von 5 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Zuerst berechnen wir die Fläche einer Seite. Die Seitenlänge beträgt 5 cm, also ist die Fläche einer Seite 5 zum Quadrat, was 25 Quadratzentimetern entspricht.")
  ]
  #only("3")[
    #voiceover("Jetzt multiplizieren wir das mit 6, um die gesamte Oberfläche zu erhalten. 6 mal 25 sind 150 Quadratzentimeter.")
  ]
  #only("4")[
    #voiceover("Im Allgemeinen können wir dies als Formel ausdrücken: Die Oberfläche, SA, entspricht 6 mal s zum Quadrat, wobei s die Seitenlänge des Würfels ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Oberfläche von Würfeln]
  #v(40pt)

  #only("1-")[- Ein Würfel hat 6 quadratische Seiten]
  #v(20pt)
  #only("2-")[- Fläche einer Seite: $s^2$]
  #v(20pt)
  #only("3-")[- Gesamte Oberfläche: $"SA" = 6s^2$]
  #v(20pt)
  #only("4-")[- Nützlich für Anwendungen im Alltag 🎁📦]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir über die Oberfläche von Würfeln gelernt haben. Zunächst einmal hat ein Würfel 6 quadratische Seiten.")
  ]
  #only("2")[
    #voiceover("Die Fläche einer Seite ist die Seitenlänge zum Quadrat.")
  ]
  #only("3")[
    #voiceover("Um die gesamte Oberfläche zu erhalten, multiplizieren wir die Fläche einer Seite mit 6. Das ergibt die Formel: Oberfläche entspricht 6 mal s zum Quadrat.")
  ]
  #only("4")[
    #voiceover("Dieses Konzept ist unglaublich nützlich in Anwendungen des Alltags, vom Geschenkverpacken bis hin zum Verpackungsdesign. Das Verständnis der Oberfläche hilft uns, Materialien effizient zu nutzen und praktische Probleme zu lösen.")
  ]
]