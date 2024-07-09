#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Quadratische Gleichungen lösen 📊]
  #v(40pt)
  #only("1-")[- Quadratische Gleichungen treten in vielen realen Problemen auf 🌍]
  #only("2-")[- Mehrere Lösungsverfahren: Faktorisierung, quadratische Ergänzung, Mitternachtsformel 🧮]
  #only("3-")[- Lass uns diese Methoden mit Beispielen durchgehen 📝]

  #only("1")[
    #voiceover("Lass uns das Lösen quadratischer Gleichungen überprüfen. Diese Gleichungen sind in vielen realen Anwendungen wichtig, von der Physik bis zur Wirtschaft.")
  ]
  #only("2")[
    #voiceover("Es gibt mehrere Methoden, um sie zu lösen, einschließlich Faktorisierung, quadratischer Ergänzung und der Mitternachtsformel.")
  ]
  #only("3")[
    #voiceover("Lass uns diese Methoden mit einigen Beispielen überprüfen, um unsere Problemlösungsfähigkeiten zu verbessern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Methode 1: Faktorisierung 🔍]
  #v(40pt)
  #only("1-")[Betrachte: $x^2 + 5x + 6 = 0$]
  #only("2-")[Faktorisieren: $(x + 2)(x + 3) = 0$]
  #only("3-")[Setze jeden Faktor auf null:]
  #only("4-")[   $x + 2 = 0$ oder $x + 3 = 0$]
  #only("5-")[Löse: $x = -2$ oder $x = -3$]

  #only("1")[
    #voiceover("Beginnen wir mit der Faktorisierung. Betrachte die Gleichung x Quadrat plus 5x plus 6 gleich 0.")
  ]
  #only("2")[
    #voiceover("Wir können dies faktorisieren als x plus 2 mal x plus 3 gleich 0.")
  ]
  #only("3")[
    #voiceover("Nun setzen wir jeden Faktor auf null.")
  ]
  #only("4")[
    #voiceover("Das gibt uns x plus 2 gleich 0 oder x plus 3 gleich 0.")
  ]
  #only("5")[
    #voiceover("Lösen wir diese, erhalten wir x gleich minus 2 oder x gleich minus 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Methode 2: Mitternachtsformel 🔬]
  #v(40pt)
  #only("1-")[Für $a x^2 + b x + c = 0$]
  #only("2-")[Verwende: $x = (-b plus.minus sqrt(b^2 - 4a c)) / (2a)$]
  #only("3-")[Beispiel: $2x^2 - 5x - 3 = 0$]
  #only("4-")[$a=2$, $b=-5$, $c=-3$]
  #only("5-")[$x = (5 plus.minus sqrt((-5)^2 - 4(2)(-3))) / (2(2))$]
  #only("6-")[$x = (5 plus.minus sqrt(25 + 24)) / 4 = (5 plus.minus 7) / 4$]
  #only("7-")[$x = 3$ oder $x = -1/2$]

  #only("1")[
    #voiceover("Nun lass uns die Mitternachtsformel überprüfen. Für eine allgemeine quadratische Gleichung ax Quadrat plus bx plus c gleich 0,")
  ]
  #only("2")[
    #voiceover("verwenden wir die Formel: x gleich minus b plus oder minus die Quadratwurzel von b Quadrat minus 4ac, alles geteilt durch 2a.")
  ]
  #only("3")[
    #voiceover("Lass uns dies auf die Gleichung 2x Quadrat minus 5x minus 3 gleich 0 anwenden.")
  ]
  #only("4")[
    #voiceover("Hier ist a gleich 2, b gleich minus 5 und c gleich minus 3.")
  ]
  #only("5")[
    #voiceover("Setzen wir diese Werte in unsere Formel ein, erhalten wir x gleich 5 plus oder minus die Quadratwurzel von minus 5 Quadrat minus 4 mal 2 mal minus 3, alles geteilt durch 2 mal 2.")
  ]
  #only("6")[
    #voiceover("Vereinfachen wir das, erhalten wir x gleich 5 plus oder minus die Quadratwurzel von 49, alles geteilt durch 4, was 5 plus oder minus 7, geteilt durch 4 ist.")
  ]
  #only("7")[
    #voiceover("Das gibt uns x gleich 3 oder x gleich minus ein halb.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Quadratische Gleichungen: $a x^2 + b x + c = 0$ 📊]
  #only("2-")[- Faktorisierung: nützlich für einfache Gleichungen 🧩]
  #only("3-")[- Mitternachtsformel: funktioniert für alle quadratischen Gleichungen 🔬]
  #only("4-")[- Übe verschiedene Methoden für Effizienz 💪]

  #only("1")[
    #voiceover("Zusammenfassend haben wir das Lösen quadratischer Gleichungen in der Form ax Quadrat plus bx plus c gleich 0 überprüft.")
  ]
  #only("2")[
    #voiceover("Die Faktorisierung ist nützlich für einfachere Gleichungen und hilft, algebraische Intuition zu entwickeln.")
  ]
  #only("3")[
    #voiceover("Die Mitternachtsformel ist ein mächtiges Werkzeug, das für alle quadratischen Gleichungen funktioniert.")
  ]
  #only("4")[
    #voiceover("Übe verschiedene Methoden, um quadratische Gleichungen effizient zu lösen. Dies wird deine Problemlösungsfähigkeiten und Genauigkeit in verschiedenen mathematischen Kontexten verbessern.")
  ]
]