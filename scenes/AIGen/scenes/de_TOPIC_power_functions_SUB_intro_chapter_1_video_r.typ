#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rückblick: Kubische Funktionen 📊]
  #v(40pt)
  #only("1-")[- Modellierung komplexer realer Phänomene 🌍]
  #only("2-")[- Erweiterung quadratischer Funktionen 📈]
  #only("3-")[- Lass uns die allgemeine Form überprüfen 🔍]

  #only("1")[
    #voiceover("Lass uns kubische Funktionen überprüfen. Diese sind essentiell für die Modellierung komplexer realer Phänomene, die quadratische Funktionen nicht erfassen können.")
  ]
  #only("2")[
    #voiceover("Kubische Funktionen erweitern das Konzept der quadratischen Funktionen durch die Einführung eines Terms dritten Grades.")
  ]
  #only("3")[
    #voiceover("Lass uns die allgemeine Form einer kubischen Funktion überprüfen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Allgemeine Form von Kubischen Funktionen]
  #v(40pt)
  #only("1-")[
    #align(center)[
      $ f(x) = a x^3 + b x^2 + c x + d $
    ]
  ]
  #v(20pt)
  #only("2-")[Wo:]
  #only("3-")[- $a ≠ 0$ (definierendes Merkmal) 🔑]
  #only("4-")[- $b$, $c$, $d$ können beliebige reelle Zahlen sein 🔢]
  #only("5-")[- $a$, $b$, $c$, $d$ sind Konstanten ⚖️]

  #only("1")[
    #voiceover("Die allgemeine Form einer kubischen Funktion ist f von x gleich a x hoch drei plus b x hoch zwei plus c x plus d.")
  ]
  #only("2")[
    #voiceover("Lass uns aufschlüsseln, was jeder Teil bedeutet:")
  ]
  #only("3")[
    #voiceover("a ist nicht gleich null. Das ist entscheidend, weil es die Funktion kubisch macht.")
  ]
  #only("4")[
    #voiceover("b, c und d können beliebige reelle Zahlen sein, einschließlich null.")
  ]
  #only("5")[
    #voiceover("a, b, c und d sind alle Konstanten, das heißt, sie ändern sich nicht, wenn sich x ändert.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Kubische Funktionen 📝]
  #v(40pt)
  #only("1-")[- Form: $f(x) = a x^3 + b x^2 + c x + d$ 📊]
  #only("2-")[- $a ≠ 0$ definiert die kubische Natur 🔑]
  #only("3-")[- $b$, $c$, $d$ sind beliebige reelle Zahlen 🔢]
  #only("4-")[- Alle Koeffizienten sind Konstanten ⚖️]
  #only("5-")[- Modelliert komplexe Phänomene 🌍]

  #only("1")[
    #voiceover("Zusammenfassend haben wir überprüft, dass eine kubische Funktion die Form f von x gleich a x hoch drei plus b x hoch zwei plus c x plus d hat.")
  ]
  #only("2")[
    #voiceover("Der Koeffizient a darf nicht null sein, da dies die kubische Natur der Funktion definiert.")
  ]
  #only("3")[
    #voiceover("Die Koeffizienten b, c und d können beliebige reelle Zahlen sein.")
  ]
  #only("4")[
    #voiceover("Alle Koeffizienten - a, b, c und d - sind Konstanten.")
  ]
  #only("5")[
    #voiceover("Das Verständnis von kubischen Funktionen ermöglicht es uns, komplexe Phänomene in verschiedenen Bereichen zu modellieren, von der Physik bis zur Wirtschaft.")
  ]
]