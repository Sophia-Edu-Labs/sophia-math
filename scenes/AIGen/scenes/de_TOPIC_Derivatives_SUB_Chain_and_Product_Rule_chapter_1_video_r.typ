#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Produktregel 📚]
  #v(40pt)
  #only("1-")[- Wird verwendet, um Produkte von Funktionen zu differenzieren 🔢]
  #only("2-")[- Hilft, komplexe Ableitungsprobleme zu lösen 🧩]
  #only("3-")[- Lass uns ihre Anwendung überprüfen 🔍]

  #only("1")[
    #voiceover("Lass uns die Produktregel überprüfen, ein wichtiges Werkzeug in der Analysis.")
  ]
  #only("2")[
    #voiceover("Diese Regel ist unerlässlich, wenn wir das Produkt von zwei oder mehr Funktionen differenzieren müssen.")
  ]
  #only("3")[
    #voiceover("Sie ermöglicht es uns, komplexe Ableitungsprobleme in einfachere Teile zu zerlegen. Lass uns sehen, wie es funktioniert.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Produktregel]
  #v(40pt)
  #only("1-")[
    $"Gegeben" f(x) "und" g(x):$
  ]
  #v(20pt)
  #only("2-")[
    $dif/"dx" (f(x) dot g(x)) = f'(x) dot g(x) + f(x) dot g'(x)$
  ]
  #v(20pt)
  #only("3-")[
    Wo:
    - $f'(x)$ ist die Ableitung von $f(x)$
    - $g'(x)$ ist die Ableitung von $g(x)$
  ]

  #only("1")[
    #voiceover("Die Produktregel wird verwendet, wenn wir zwei Funktionen multipliziert haben.")
  ]
  #only("2")[
    #voiceover("Sie besagt, dass die Ableitung von f von x mal g von x gleich der Ableitung von f mal g plus f mal der Ableitung von g ist.")
  ]
  #only("3")[
    #voiceover("Hier steht f Strich von x für die Ableitung von f und g Strich von x für die Ableitung von g.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispielanwendung 🔢]
  #v(40pt)
  #only("1-")[
    Finde $dif/"dx" (x^2 dot sin(x))$
  ]
  #v(20pt)
  #only("2-")[
    Sei $f(x) = x^2$ und $g(x) = sin(x)$
  ]
  #v(20pt)
  #only("3-")[
    $f'(x) = 2x$
  ]
  #only("4-")[
    $g'(x) = cos(x)$
  ]
  #v(20pt)
  #only("5-")[
    $dif/"dx" (x^2 dot sin(x)) = 2x dot sin(x) + x^2 dot cos(x)$
  ]

  #only("1")[
    #voiceover("Lass uns die Produktregel anwenden, um die Ableitung von x Quadrat mal Sinus von x zu finden.")
  ]
  #only("2")[
    #voiceover("Wir setzen f von x gleich x Quadrat und g von x gleich Sinus von x.")
  ]
  #only("3")[
    #voiceover("Die Ableitung von x Quadrat ist 2x.")
  ]
  #only("4")[
    #voiceover("Und die Ableitung von Sinus von x ist Kosinus von x.")
  ]
  #only("5")[
    #voiceover("Angewendet auf die Produktregel erhalten wir 2x mal Sinus von x plus x Quadrat mal Kosinus von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Produktregel: $dif/"dx" (f dot g) = f' dot g + f dot g'$ 🔑]
  #only("2-")[- Zerlegt komplexe Ableitungen in einfachere Teile 🧩]
  #only("3-")[- Nützlich für Produkte von Funktionen 🔢]
  #only("4-")[- Übung macht den Meister! 💪]

  #only("1")[
    #voiceover("Zusammengefasst ermöglicht uns die Produktregel, das Produkt von zwei Funktionen zu differenzieren.")
  ]
  #only("2")[
    #voiceover("Sie zerlegt komplexe Ableitungen in einfachere Teile, die wir separat behandeln können.")
  ]
  #only("3")[
    #voiceover("Diese Regel ist unglaublich nützlich, wenn es um Produkte von Funktionen in der Analysis geht.")
  ]
  #only("4")[
    #voiceover("Denke daran, Übung ist der Schlüssel zur Beherrschung der Produktregel und ihrer effektiven Anwendung!")
  ]
]