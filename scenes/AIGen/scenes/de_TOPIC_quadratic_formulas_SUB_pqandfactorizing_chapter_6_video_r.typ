#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rückblick: Faktorisierung quadratischer Gleichungen 🧮]
  #v(40pt)
  #only("1-")[- Quadratische Gleichungen treten in vielen realen Problemen auf 🌍]
  #only("2-")[- Faktorisierung ist eine Schlüsselmethodik, um sie zu lösen ✅]
  #only("3-")[- Lass uns den Prozess mit einigen Beispielen durchgehen 📝]

  #only("1")[
    #voiceover("Lass uns die Faktorisierung quadratischer Gleichungen überprüfen. Quadratische Gleichungen sind in vielen realen Anwendungen wichtig, von der Physik bis zur Wirtschaft.")
  ]
  #only("2")[
    #voiceover("Faktorisierung ist eine mächtige Methode, um diese Gleichungen zu lösen. Sie ermöglicht es uns, komplexe Ausdrücke in einfachere Teile zu zerlegen.")
  ]
  #only("3")[
    #voiceover("Wir werden den Prozess Schritt für Schritt mit einigen Beispielen durchgehen, um unser Verständnis zu festigen und unsere Geschwindigkeit zu verbessern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Faktorisierungsprozess 🔍]
  #v(40pt)
  #only("1-")[1. Identifiziere die quadratische Gleichung: $a x^2 + b x + c = 0$]
  #only("2-")[2. Finde zwei Zahlen, die:
    - Multiplizieren, um $a c$ zu ergeben
    - Addieren, um $b$ zu ergeben]
  #only("3-")[3. Schreibe den mittleren Term mit diesen Zahlen um]
  #only("4-")[4. Gruppiere die Terme und faktoriere gemeinsame Faktoren aus]
  #only("5-")[5. Setze jeden Faktor auf null und löse]

  #only("1")[
    #voiceover("Lass uns den Faktorisierungsprozess überprüfen. Zuerst identifizieren wir die quadratische Gleichung in der Standardform a x Quadrat plus b x plus c gleich null.")
  ]
  #only("2")[
    #voiceover("Als nächstes finden wir zwei Zahlen, die multiplizieren, um a c zu ergeben, und addieren, um b zu ergeben. Dies ist oft der kniffligste Teil.")
  ]
  #only("3")[
    #voiceover("Dann schreiben wir den mittleren Term mit den gefundenen Zahlen um.")
  ]
  #only("4")[
    #voiceover("Danach gruppieren wir die Terme und faktorisieren gemeinsame Faktoren aus.")
  ]
  #only("5")[
    #voiceover("Schließlich setzen wir jeden Faktor auf null und lösen nach x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: $x^2 + 5x + 6 = 0$ 🌟]
  #v(20pt)
  #only("1-")[1. Identifiziere: $a=1$, $b=5$, $c=6$]
  #only("2-")[2. Finde Zahlen: $2$ und $3$ (2 × 3 = 6, 2 + 3 = 5)]
  #only("3-")[3. Schreibe um: $x^2 + 2x + 3x + 6 = 0$]
  #only("4-")[4. Gruppiere und faktoriere: $(x^2 + 2x) + (3x + 6) = 0$
               $x(x + 2) + 3(x + 2) = 0$
               $(x + 3)(x + 2) = 0$]
  #only("5-")[5. Löse: $x = -3$ oder $x = -2$]

  #only("1")[
    #voiceover("Lass uns ein Beispiel durchgehen: x Quadrat plus 5x plus 6 gleich null. Wir identifizieren a gleich 1, b gleich 5 und c gleich 6.")
  ]
  #only("2")[
    #voiceover("Wir müssen zwei Zahlen finden, die multiplizieren, um 6 zu ergeben, und addieren, um 5 zu ergeben. Diese Zahlen sind 2 und 3.")
  ]
  #only("3")[
    #voiceover("Wir schreiben den mittleren Term um: x Quadrat plus 2x plus 3x plus 6 gleich null.")
  ]
  #only("4")[
    #voiceover("Nun gruppieren wir die Terme: x Quadrat plus 2x, plus 3x plus 6 gleich null. Wir faktorisieren die gemeinsamen Faktoren aus: x mal x plus 2, plus 3 mal x plus 2 gleich null. Dies ergibt x plus 3 mal x plus 2 gleich null.")
  ]
  #only("5")[
    #voiceover("Schließlich setzen wir jeden Faktor auf null und lösen. x gleich minus 3 oder x gleich minus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📚]
  #v(40pt)
  #only("1-")[- Faktorisierung ist eine mächtige Methode für quadratische Gleichungen 💪]
  #only("2-")[- Wichtige Schritte: identifizieren, Zahlen finden, umschreiben, gruppieren, lösen 🔑]
  #only("3-")[- Übung verbessert Geschwindigkeit und Genauigkeit 🏃‍♂️]
  #only("4-")[- Denke daran: Nicht alle quadratischen Gleichungen lassen sich leicht faktorisieren 🤔]

  #only("1")[
    #voiceover("Zusammenfassend ist die Faktorisierung eine mächtige Methode zur Lösung quadratischer Gleichungen.")
  ]
  #only("2")[
    #voiceover("Die wichtigsten Schritte sind: die Koeffizienten identifizieren, die richtigen Zahlen finden, die Gleichung umschreiben, Terme gruppieren und lösen.")
  ]
  #only("3")[
    #voiceover("Denke daran, Übung ist entscheidend, um deine Geschwindigkeit und Genauigkeit bei der Faktorisierung zu verbessern.")
  ]
  #only("4")[
    #voiceover("Denke jedoch daran, dass nicht alle quadratischen Gleichungen leicht faktorisierbar sind. In solchen Fällen können andere Methoden wie die quadratische Formel notwendig sein.")
  ]
]