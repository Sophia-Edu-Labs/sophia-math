#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns gemeinsam Schritt für Schritt die Lösung durchgehen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]

#v(40pt)

#only("2-")[#text()[$0.8$]]
#only("2")[
#voiceover("Wir haben die Dezimalzahl null Komma acht gegeben.")
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
#voiceover("Bevor wir die Übung lösen, lass uns kurz die Schritte zur Umwandlung von Dezimalzahlen in Brüche in Erinnerung rufen. Zuerst zählst Du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst Du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst Du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.8$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.8$. $arrow$ Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 8$.]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 8/10$.]
#v(20pt)
#only("4-")[- Vereinfache den Bruch: $8/10 = 4/5$.]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl null Komma acht anwenden. Zuerst zählen wir die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns acht ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir acht durch eine Eins, gefolgt von einer Null. Da null Komma acht eine Dezimalstelle hat, teilen wir es durch zehn. So erhalten wir acht Zehntel.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir den Bruch acht Zehntel, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der zwei ist, teilen. Das ergibt vier Fünftel. Und das war's, wir sind fertig! Die Lösung ist vier Fünftel.")
]
]