#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fortgeschrittenes Volumen von Würfeln]
  #v(40pt)
  #only("1-")[📦 Stell dir vor, du packst Würfel...]
  #v(20pt)
  #only("2-")[🤔 Wie viel Platz nehmen sie ein?]
  #v(20pt)
  #only("3-")[🧮 Hier kommt das Volumen ins Spiel!]
  #v(20pt)
  #only("4-")[📏 Lass uns überprüfen, wie man es berechnet]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über das fortgeschrittene Volumen von Würfeln. Lass uns mit einem Szenario beginnen.")
  ]
  #only("2")[
    #voiceover("Du packst eine Menge würfelförmiger Kisten. Du fragst dich vielleicht, wie viel Platz diese Würfel tatsächlich einnehmen.")
  ]
  #only("3")[
    #voiceover("Hier wird das Konzept des Volumens wichtig. Das Volumen sagt uns, wie viel dreidimensionalen Raum ein Objekt einnimmt.")
  ]
  #only("4")[
    #voiceover("In diesem Video werden wir überprüfen, wie man das Volumen eines Würfels berechnet und einige interessante Eigenschaften erkunden. Lass uns loslegen!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Würfels]
  #v(40pt)
  #only("1-")[📏 Würfel: 3D-Form mit 6 gleichen quadratischen Flächen]
  #v(20pt)
  #only("2-")[🔑 Wichtige Messung: Seitenlänge (s)]
  #v(20pt)
  #only("3-")[🧮 Volumenformel: $V = s^3$]
  #v(20pt)
  #only("4-")[💡 Beispiel: Würfel mit Seite 5 cm]
  #v(20pt)
  #only("5-")[   $V = 5^3 = 5 \cdot 5 \cdot 5 = 125 "cm"^3$]

  #only("1")[
    #voiceover("Lass uns mit den Grundlagen beginnen. Ein Würfel ist eine dreidimensionale Form mit sechs gleichen quadratischen Flächen.")
  ]
  #only("2")[
    #voiceover("Die wichtigste Messung für einen Würfel ist seine Seitenlänge, die wir oft als s bezeichnen.")
  ]
  #only("3")[
    #voiceover("Das Volumen eines Würfels wird mit einer einfachen Formel berechnet: V gleich s hoch drei. Das bedeutet, wir multiplizieren die Seitenlänge dreimal mit sich selbst.")
  ]
  #only("4")[
    #voiceover("Schauen wir uns ein Beispiel an. Angenommen, wir haben einen Würfel mit einer Seitenlänge von 5 Zentimetern.")
  ]
  #only("5")[
    #voiceover("Um sein Volumen zu finden, nehmen wir 5 hoch drei. Das ist 5 mal 5 mal 5, was 125 Kubikzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[📦 Würfel: 3D-Form mit gleichen quadratischen Flächen]
  #v(20pt)
  #only("2-")[📏 Volumen: Raum, den der Würfel einnimmt]
  #v(20pt)
  #only("3-")[🧮 Formel: $V = s^3$]
  #v(20pt)
  #only("4-")[💡 Denke daran: Einheiten werden auch hoch drei genommen!]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir gelernt haben. Ein Würfel ist eine dreidimensionale Form mit sechs gleichen quadratischen Flächen.")
  ]
  #only("2")[
    #voiceover("Das Volumen eines Würfels repräsentiert den dreidimensionalen Raum, den er einnimmt.")
  ]
  #only("3")[
    #voiceover("Wir berechnen dieses Volumen mit der Formel V gleich s hoch drei, wobei s die Länge einer Seite des Würfels ist.")
  ]
  #only("4")[
    #voiceover("Denke daran, wenn wir die Seitenlänge hoch drei nehmen, nehmen wir auch die Einheiten hoch drei. Wenn die Seitenlänge in Zentimetern ist, wird das Volumen in Kubikzentimetern sein.")
  ]
]