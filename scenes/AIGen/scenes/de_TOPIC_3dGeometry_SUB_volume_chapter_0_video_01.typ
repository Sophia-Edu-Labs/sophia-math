#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in das Volumen von Würfeln]
  #v(40pt)

  #only("1-")[#align(center)[#text(size: 24pt)[🧊 Was ist in einem Würfel? 🤔]]]
  #v(20pt)
  #only("2-")[- Volumen: Menge an Raum in einem 3D-Objekt 📦]
  #v(20pt)
  #only("3-")[- Würfel: Spezielle 3D-Formen mit gleichen Seiten 🎲]
  #v(20pt)
  #only("4-")[- Frage: Wie berechnen wir das Volumen eines Würfels? 🧮]

  #only("1")[
    #voiceover("Stell dir vor, du hast eine Schachtel, die wie ein perfekter Würfel geformt ist. Hast du dich jemals gefragt, wie viel Zeug du darin unterbringen könntest?")
  ]
  #only("2")[
    #voiceover("Hier kommt das Konzept des Volumens ins Spiel. Volumen ist die Menge an Raum in einem dreidimensionalen Objekt.")
  ]
  #only("3")[
    #voiceover("Würfel sind besonders, weil alle ihre Seiten gleich sind. Denk an einen Würfel - er ist ein perfektes Beispiel für einen Würfel!")
  ]
  #only("4")[
    #voiceover("Also, wie finden wir das Volumen eines Würfels heraus? Lass uns das gemeinsam erkunden!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung des Würfelvolumens]
  #v(40pt)

  #only("1-")[#align(center)[#text(size: 24pt)[Seitenlänge → Volumen]]]
  #v(20pt)
  #only("2-")[- Volumen eines Würfels = Seitenlänge × Seitenlänge × Seitenlänge]
  #v(20pt)
  #only("3-")[- Mathematische Notation: $V = s^3$]
  #v(20pt)
  #only("4-")[- Beispiel: Würfel mit 2 cm Seitenlänge]
  #v(20pt)
  #only("5-")[  $V = 2"cm" dot 2"cm" dot 2"cm" = 8"cm"^3$]

  #only("1")[
    #voiceover("Um das Volumen eines Würfels zu finden, müssen wir nur eine Sache wissen: die Länge seiner Seite.")
  ]
  #only("2")[
    #voiceover("Das Volumen eines Würfels wird berechnet, indem die Seitenlänge dreimal mit sich selbst multipliziert wird. Das liegt daran, dass ein Würfel in drei Dimensionen ausgedehnt ist: Länge, Breite und Höhe.")
  ]
  #only("3")[
    #voiceover("In der mathematischen Notation schreiben wir dies als V gleich s hoch drei, wobei V das Volumen und s die Seitenlänge ist.")
  ]
  #only("4")[
    #voiceover("Schauen wir uns ein Beispiel an. Stell dir vor, wir haben einen Würfel mit einer Seitenlänge von 2 Zentimetern.")
  ]
  #only("5")[
    #voiceover("Um sein Volumen zu berechnen, multiplizieren wir 2 Zentimeter mit 2 Zentimetern mit 2 Zentimetern. Das ergibt 8 Kubikzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[- Volumen: Raum in einem 3D-Objekt 📦]
  #v(20pt)
  #only("2-")[- Formel für das Würfelvolumen: $V = s^3$ 🧮]
  #v(20pt)
  #only("3-")[- Einfach mit einer Messung zu berechnen! 📏]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir gelernt haben. Volumen ist die Menge an Raum in einem dreidimensionalen Objekt wie unserem Würfel.")
  ]
  #only("2")[
    #voiceover("Um das Volumen eines Würfels zu finden, verwenden wir die Formel V gleich s hoch drei, wobei s die Länge einer Seite des Würfels ist.")
  ]
  #only("3")[
    #voiceover("Das macht die Berechnung des Volumens eines Würfels wirklich einfach - wir müssen nur eine Seite messen! Denke daran, das Verständnis von Volumen hilft uns in vielen realen Situationen, vom Packen von Kisten bis zum Entwerfen von Gebäuden. Erforsche weiter!")
  ]
]