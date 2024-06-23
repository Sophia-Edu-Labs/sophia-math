#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Lass uns gemeinsam Schritt für Schritt die Lösung durchgehen.")
]

#text(size: 30pt, weight: "bold")[Dezimalzahlen in Brüche umwandeln]

#v(40pt)

#only("2-")[#text()[$0.9$]]
#only("2")[
#voiceover("Gegeben ist die Dezimalzahl null Komma neun.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]

#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns die Schritte zur Umwandlung von Dezimalzahlen in Brüche kurz durchgehen. Zuerst zählst Du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst Du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst Du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $0.9$ in einen Bruch umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.9$. $arrow$ Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 9$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 9/10$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl null Komma neun anwenden. Zuerst zählen wir die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns neun ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir neun durch eine Eins, gefolgt von einer Null. Da null Komma neun eine Dezimalstelle hat, teilen wir durch zehn. So erhalten wir neun Zehntel. Und das war's! Die Lösung ist neun Zehntel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Dezimalzahl: $0.9$]
#v(20pt)
#only("2-")[- Bruch: $9/10$]

#only("1")[
#voiceover("Zusammenfassend haben wir die Dezimalzahl null Komma neun in den Bruch neun Zehntel umgewandelt.")
]
]