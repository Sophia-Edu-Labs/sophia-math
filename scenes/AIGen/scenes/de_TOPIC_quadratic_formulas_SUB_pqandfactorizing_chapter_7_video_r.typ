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
  #only("2-")[- Zwei Hauptmethoden: p-q-Formel und Faktorisierung 🧮]
  #only("3-")[- Lass uns diese Methoden Schritt für Schritt durchgehen 📝]
  
  #only("1")[
    #voiceover("Lass uns das Lösen quadratischer Gleichungen überprüfen. Diese Gleichungen sind in vielen realen Anwendungen, von der Physik bis zur Wirtschaft, entscheidend.")
  ]
  #only("2")[
    #voiceover("Wir konzentrieren uns auf zwei Hauptmethoden zum Lösen quadratischer Gleichungen: die p-q-Formel und die Faktorisierung.")
  ]
  #only("3")[
    #voiceover("Lass uns diese Methoden Schritt für Schritt durchgehen, um unser Verständnis aufzufrischen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die p-q-Formel Methode 🔢]
  #v(40pt)
  #only("1-")[1️⃣ Standardform: $x^2 + p x + q = 0$]
  #only("2-")[2️⃣ p-q-Formel: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$]
  #only("3-")[3️⃣ Beispiel: $x^2 - 5x + 6 = 0$]
  #only("4-")[   $p = -5$, $q = 6$]
  #only("5-")[   $x_(1,2) = 5/2 ± sqrt((5/2)^2 - 6)$]
  #only("6-")[   $x_1 = 3$, $x_2 = 2$]
  
  #only("1")[
    #voiceover("Lass uns mit der p-q-Formel Methode beginnen. Zuerst muss unsere Gleichung in der Standardform sein: x Quadrat plus p x plus q gleich null.")
  ]
  #only("2")[
    #voiceover("Die p-q-Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("Lass uns dies an einem Beispiel anwenden: x Quadrat minus 5x plus 6 gleich null.")
  ]
  #only("4")[
    #voiceover("Wir erkennen, dass p gleich minus 5 und q gleich 6 ist.")
  ]
  #only("5")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir x gleich 5 durch 2, plus oder minus die Quadratwurzel von 5 durch 2 zum Quadrat minus 6.")
  ]
  #only("6")[
    #voiceover("Das Lösen ergibt unsere zwei Lösungen: x gleich 3 und x gleich 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Faktorisierungsmethode 🧩]
  #v(40pt)
  #only("1-")[1️⃣ Umschreiben als: $(x - r)(x - s) = 0$]
  #only("2-")[2️⃣ Lösungen: $x = r$ oder $x = s$]
  #only("3-")[3️⃣ Beispiel: $x^2 - 5x + 6 = 0$]
  #only("4-")[   $(x - 3)(x - 2) = 0$]
  #only("5-")[   $x = 3$ oder $x = 2$]
  
  #only("1")[
    #voiceover("Nun lass uns die Faktorisierungsmethode überprüfen. Das Ziel ist es, unsere Gleichung als Produkt von zwei Faktoren gleich null umzuschreiben.")
  ]
  #only("2")[
    #voiceover("Sobald wir diese Form haben, sind unsere Lösungen die Werte, die jeden Faktor null machen.")
  ]
  #only("3")[
    #voiceover("Lass uns das gleiche Beispiel verwenden: x Quadrat minus 5x plus 6 gleich null.")
  ]
  #only("4")[
    #voiceover("Wir können dies als x minus 3 mal x minus 2 gleich null faktorisieren.")
  ]
  #only("5")[
    #voiceover("Daraus ergibt sich, dass x gleich 3 oder x gleich 2 ist, was uns die gleichen Lösungen wie zuvor gibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- p-q-Formel: Algebraische Lösung 🧮]
  #only("2-")[- Faktorisierung: Visueller Ansatz 👁️]
  #only("3-")[- Beide Methoden sind gültig und nützlich 👍]
  #only("4-")[- Wähle basierend auf der Form der Gleichung und deiner persönlichen Vorliebe 🤔]
  
  #only("1")[
    #voiceover("Zusammenfassend bietet die p-q-Formel eine algebraische Lösung, die für alle quadratischen Gleichungen funktioniert.")
  ]
  #only("2")[
    #voiceover("Die Faktorisierung bietet einen visuellen Ansatz und kann bei einfacheren Gleichungen schneller sein.")
  ]
  #only("3")[
    #voiceover("Beide Methoden sind gültig und liefern dir die richtigen Lösungen.")
  ]
  #only("4")[
    #voiceover("Wähle die Methode basierend auf der Form deiner Gleichung und deiner persönlichen Vorliebe. Übe beide, um im Lösen quadratischer Gleichungen sicher zu werden!")
  ]
]