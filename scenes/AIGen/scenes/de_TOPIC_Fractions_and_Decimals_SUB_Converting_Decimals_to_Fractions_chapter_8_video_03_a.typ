#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung komplexer Dezimalzahlen in Brüche]
#v(40pt)
#only("1")[
#voiceover("Großartige Arbeit beim Versuch der Übung! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung komplexer Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Bestimme den wiederholenden Teil der Dezimalzahl. 🔄]
#v(20pt)
#only("2-")[- Schritt 2: Stelle eine Gleichung auf, die die Dezimalzahl darstellt. ➕]
#v(20pt)
#only("3-")[- Schritt 3: Multipliziere die Gleichung, um das Dezimalkomma zu verschieben. ✖️]
#v(20pt)
#only("4-")[- Schritt 4: Subtrahiere die ursprüngliche Gleichung von der neuen. ➖]
#v(20pt)
#only("5-")[- Schritt 5: Löse die Variable. 🧮]

#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung komplexer Dezimalzahlen in Brüche durchgehen. Zuerst bestimme den wiederholenden Teil der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes stelle eine Gleichung auf, die die Dezimalzahl darstellt.")
]
#only("3")[
#voiceover("Dann multipliziere die Gleichung mit einer Zehnerpotenz, um das Dezimalkomma zu verschieben.")
]
#only("4")[
#voiceover("Danach subtrahiere die ursprüngliche Gleichung von der neuen.")
]
#only("5")[
#voiceover("Schließlich löse die Variable, um den Bruch zu finden.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $4.567$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔄 Bestimme den wiederholenden Teil in $4.567$. $arrow$ Der wiederholende Teil ist $567$.]
#v(20pt)
#only("2-")[- Schritt 2: ➕ Stelle die Gleichung auf: $x = 4.567567...$ ]
#v(20pt)
#only("3-")[- Schritt 3: ✖️ Multipliziere mit $1000$: $1000x = 4567.567567...$ ]
#v(20pt)
#only("4-")[- Schritt 4: ➖ Subtrahiere: $1000x - x = 4567.567567... - 4.567567...$ ]
#v(20pt)
#only("5-")[- Schritt 5: 🧮 Löse für $x$: $999x = 4563 arrow x = 4563/999$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl 4.567 anwenden. Zuerst bestimmen wir den wiederholenden Teil, der 567 ist.")
]
#only("2")[
#voiceover("Als nächstes stellen wir die Gleichung x gleich 4.567567... auf, wobei der wiederholende Teil unendlich weitergeht.")
]
#only("3")[
#voiceover("Dann multiplizieren wir die Gleichung mit tausend, um das Dezimalkomma um drei Stellen nach rechts zu verschieben, was uns tausend x gleich 4567.567567... ergibt.")
]
#only("4")[
#voiceover("Danach subtrahieren wir die ursprüngliche Gleichung von der neuen. Also tausend x minus x gleich 4567.567567... minus 4.567567...")
]
#only("5")[
#voiceover("Schließlich lösen wir für x. Das ergibt 999x gleich 4563, also x gleich 4563 geteilt durch 999. Und das ist der Bruch, der 4.567 entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Bruch vereinfachen]
#v(40pt)
#only("1-")[- Schritt 6: Vereinfache $4563/999$. ]
#v(20pt)
#only("2-")[- $4563/999 = 507/111$ ]
#v(20pt)
#only("3-")[- $507/111 = 169/37$ ]

#only("1")[
#voiceover("Nun lass uns den Bruch 4563 durch 999 vereinfachen.")
]
#only("2")[
#voiceover("Zuerst teilen wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 9 ist. Das ergibt 507 durch 111.")
]
#only("3")[
#voiceover("Als nächstes vereinfachen wir weiter, indem wir durch ihren größten gemeinsamen Teiler, der 3 ist, teilen. Das ergibt 169 durch 37. Also ist der Bruch, der 4.567 entspricht, 169 durch 37.")
]
]