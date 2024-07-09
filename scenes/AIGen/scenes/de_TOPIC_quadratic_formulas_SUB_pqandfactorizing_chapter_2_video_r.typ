#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Quadratische Gleichungen lösen 📚]
  #v(40pt)
  #only("1-")[- Quadratische Gleichungen treten in vielen realen Problemen auf 🌍]
  #only("2-")[- Die p-q-Formel ist ein mächtiges Werkzeug, um sie zu lösen 🛠️]
  #only("3-")[- Lass uns überprüfen, wie man sie effektiv nutzt 🔍]

  #only("1")[
    #voiceover("Lass uns das Lösen quadratischer Gleichungen mit der p-q-Formel überprüfen. Quadratische Gleichungen sind in vielen realen Anwendungen wichtig, von der Physik bis zur Wirtschaft.")
  ]
  #only("2")[
    #voiceover("Die p-q-Formel ist ein mächtiges Werkzeug, das es uns ermöglicht, diese Gleichungen schnell und effizient zu lösen.")
  ]
  #only("3")[
    #voiceover("Lass uns überprüfen, wie man diese Formel effektiv nutzt, um quadratische Gleichungen zu lösen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die p-q-Formel 🧮]
  #v(40pt)
  #only("1-")[Standardform: $a x^2 + b x + c = 0$]
  #v(20pt)
  #only("2-")[p-q-Form: $x^2 + p x + q = 0$]
  #v(20pt)
  #only("3-")[p-q-Formel: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$]

  #only("1")[
    #voiceover("Lass uns mit der Überprüfung der Standardform einer quadratischen Gleichung beginnen: a x Quadrat plus b x plus c gleich null, wobei a, b und c Konstanten sind und a nicht null ist.")
  ]
  #only("2")[
    #voiceover("Um die p-q-Formel zu verwenden, müssen wir die Gleichung zuerst in die p-q-Form umwandeln: x Quadrat plus p x plus q gleich null. Hierbei ist p gleich b geteilt durch a und q gleich c geteilt durch a.")
  ]
  #only("3")[
    #voiceover("Die p-q-Formel selbst lautet: x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q. Das gibt uns die beiden Lösungen der quadratischen Gleichung.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Formel anwenden: Schritt für Schritt 👣]
  #v(40pt)
  #only("1-")[1. p und q identifizieren 🔍]
  #only("2-")[2. In die Formel einsetzen ➕]
  #only("3-")[3. Die Lösungen berechnen ✅]

  #only("1")[
    #voiceover("Nun lass uns die Schritte zur Anwendung der p-q-Formel überprüfen. Zuerst müssen wir p und q in unserer Gleichung identifizieren.")
  ]
  #only("2")[
    #voiceover("Als nächstes setzen wir diese Werte in die p-q-Formel ein.")
  ]
  #only("3")[
    #voiceover("Schließlich berechnen wir die Lösungen, indem wir den Ausdruck unter der Quadratwurzel vereinfachen und dann die beiden Werte für x finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: Eine quadratische Gleichung lösen 🌟]
  #v(40pt)
  #only("1-")[Gegebene Gleichung: $x^2 - 6x + 8 = 0$]
  #only("2-")[Identifizieren: $p = -6$, $q = 8$]
  #only("3-")[Anwenden: $x_(1,2) = -(-6)/2 ± sqrt(((-6)/2)^2 - 8)$]
  #only("4-")[Vereinfachen: $x_(1,2) = 3 ± sqrt(9 - 8) = 3 ± 1$]
  #only("5-")[Lösungen: $x_1 = 4$, $x_2 = 2$]

  #only("1")[
    #voiceover("Lass uns ein Beispiel lösen: x Quadrat minus 6x plus 8 gleich null.")
  ]
  #only("2")[
    #voiceover("Zuerst identifizieren wir p und q. Hier ist p gleich minus 6 und q gleich 8.")
  ]
  #only("3")[
    #voiceover("Nun wenden wir die p-q-Formel an: x gleich minus von minus 6 durch 2, plus oder minus die Quadratwurzel von minus 6 durch 2 zum Quadrat minus 8.")
  ]
  #only("4")[
    #voiceover("Vereinfachen ergibt: x gleich 3 plus oder minus die Quadratwurzel von 9 minus 8, was 3 plus oder minus 1 ist.")
  ]
  #only("5")[
    #voiceover("Das gibt uns zwei Lösungen: x1 gleich 4 und x2 gleich 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Wichtige Punkte 📝]
  #v(40pt)
  #only("1-")[- In die p-q-Form umwandeln: $x^2 + p x + q = 0$ 🔄]
  #only("2-")[- Formel anwenden: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$ 🧮]
  #only("3-")[- Übe, p und q schnell zu identifizieren 🏃‍♂️]
  #only("4-")[- Denke daran: In den meisten Fällen gibt es zwei Lösungen ✌️]

  #only("1")[
    #voiceover("Zusammenfassend: Beginne immer damit, deine Gleichung in die p-q-Form umzuwandeln: x Quadrat plus p x plus q gleich null.")
  ]
  #only("2")[
    #voiceover("Dann wende die Formel an: x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q.")
  ]
  #only("3")[
    #voiceover("Übe, p und q schnell zu identifizieren, um deine Problemlösung zu beschleunigen.")
  ]
  #only("4")[
    #voiceover("Und denke daran, in den meisten Fällen findest du zwei Lösungen für deine quadratische Gleichung.")
  ]
]