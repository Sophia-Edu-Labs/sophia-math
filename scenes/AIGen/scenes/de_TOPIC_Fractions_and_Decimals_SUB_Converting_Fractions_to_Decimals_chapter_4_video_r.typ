#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Komplexe Brüche in Dezimalzahlen umwandeln 🔢]
  #v(40pt)
  #only("1-")[- Brüche sind nicht immer Zehnerpotenzen 🤔]
  #only("2-")[- Wir brauchen eine Methode zur Umwandlung 🔄]
  #only("3-")[- Lass uns den Prozess durchgehen 📝]

  #only("1")[
    #voiceover("Lass uns überprüfen, wie wir komplexere Brüche in Dezimalzahlen umwandeln. Wir stoßen oft auf Brüche, die nicht sofort Zehnerpotenzen sind.")
  ]
  #only("2")[
    #voiceover("In diesen Fällen brauchen wir eine Methode, um diese Brüche in eine Form zu bringen, die leichter als Dezimalzahl auszudrücken ist.")
  ]
  #only("3")[
    #voiceover("Lass uns diesen Prozess Schritt für Schritt durchgehen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Der Umwandlungsprozess 🔄]
  #v(40pt)
  #only("1-")[1. Beginne mit einem komplexen Bruch ➗]
  #only("2-")[2. Finde einen äquivalenten Bruch mit dem Nenner 10, 100, 1000, usw. 🔍]
  #only("3-")[3. Teile den Zähler durch den Nenner 🧮]
  #only("4-")[4. Schreibe es als Dezimalzahl ✏️]

  #only("1")[
    #voiceover("Unser Prozess beginnt mit einem komplexen Bruch, der keinen Nenner hat, der eine Zehnerpotenz ist.")
  ]
  #only("2")[
    #voiceover("Der entscheidende Schritt ist, einen äquivalenten Bruch zu finden, der einen Nenner hat, der eine Zehnerpotenz ist - wie 10, 100 oder 1000.")
  ]
  #only("3")[
    #voiceover("Sobald wir diesen äquivalenten Bruch haben, teilen wir einfach den Zähler durch den Nenner.")
  ]
  #only("4")[
    #voiceover("Diese Division gibt uns unsere Dezimaldarstellung.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von 3/4 in eine Dezimalzahl 🌟]
  #v(20pt)
  #only("1-")[
    #align(center)[$ 3/4 = ? $]
  ]
  #only("2-")[
    #align(center)[$ 3/4 = (3 dot 25)/(4 dot 25) = 75/100 $]
  ]
  #only("3-")[
    #align(center)[$ 75/100 = 0.75 $]
  ]

  #only("1")[
    #voiceover("Lass uns diesen Prozess mit einem Beispiel überprüfen. Angenommen, wir wollen drei Viertel in eine Dezimalzahl umwandeln.")
  ]
  #only("2")[
    #voiceover("Wir multiplizieren sowohl den Zähler als auch den Nenner mit 25. Das ergibt 75 durch 100, was ein äquivalenter Bruch mit einem Nenner ist, der eine Zehnerpotenz ist.")
  ]
  #only("3")[
    #voiceover("Nun können wir leicht sehen, dass 75 geteilt durch 100 0,75 ergibt. Und das ist unsere Dezimaldarstellung von drei Vierteln!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Komplexe Brüche in äquivalente Brüche mit Zehnerpotenzen umwandeln 🔄]
  #only("2-")[- Multipliziere sowohl den Zähler als auch den Nenner mit derselben Zahl 🔢]
  #only("3-")[- Teile, um die Dezimaldarstellung zu erhalten ➗]
  #only("4-")[- Übung macht den Meister! 💪]

  #only("1")[
    #voiceover("Zusammenfassend: Wenn wir komplexe Brüche in Dezimalzahlen umwandeln, konvertieren wir sie zuerst in äquivalente Brüche mit Zehnerpotenzen.")
  ]
  #only("2")[
    #voiceover("Wir tun dies, indem wir sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren.")
  ]
  #only("3")[
    #voiceover("Dann teilen wir einfach, um unsere Dezimaldarstellung zu erhalten.")
  ]
  #only("4")[
    #voiceover("Denke daran, dieser Prozess erfordert Übung. Je mehr du diese Umwandlungen übst, desto einfacher wird es!")
  ]
]