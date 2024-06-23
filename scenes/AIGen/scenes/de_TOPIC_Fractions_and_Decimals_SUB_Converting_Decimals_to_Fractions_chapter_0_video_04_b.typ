#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
Welcher Bruch entspricht $0.7$?
#v(40pt)
#only("1-")[Die richtige Antwort ist $7/10$]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")]
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
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.7$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.7$. $arrow$Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 7$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 7/10$ ]

#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf die Dezimalzahl null Komma sieben an. Zuerst zählen wir die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns sieben ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir sieben durch eine Eins, gefolgt von einer Null. Da null Komma sieben eine Dezimalstelle hat, teilen wir durch zehn. So erhalten wir sieben Zehntel. Und das war's, wir sind fertig! Die Lösung ist sieben Zehntel.")
]
]