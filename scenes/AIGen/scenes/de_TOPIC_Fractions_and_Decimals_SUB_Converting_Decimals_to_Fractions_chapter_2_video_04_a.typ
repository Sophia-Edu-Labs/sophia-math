#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit beim Erkennen der richtigen Antwort! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]

#v(40pt)

#only("1-")[Welchem Bruch entspricht $0.125$?]
#v(40pt)
#only("2-")[Die richtige Antwort ist $1/8$]

#only("1")[
#voiceover("Die Frage lautet, welchem Bruch null Komma eins zwei fünf entspricht. Die richtige Antwort ist ein Achtel. Lass uns herausfinden, warum das so ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalkomma. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#v(20pt)
#only("4-")[- Schritt 4: Vereinfache den Bruch. 🧮]

#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalkomma aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
#only("4")[
#voiceover("Schließlich vereinfachst du den Bruch, wenn möglich.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.125$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.125$. $arrow$ Es gibt 3 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalkomma: $arrow 125$.]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $1000 arrow 125/1000$.]
#v(20pt)
#only("4-")[- Schritt 4: 🧮 Vereinfache den Bruch: $arrow 1/8$.]

#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf die Dezimalzahl null Komma eins zwei fünf an. Zuerst zählen wir die Dezimalstellen. Es gibt drei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma, was uns einhundertfünfundzwanzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir einhundertfünfundzwanzig durch eine Eins, gefolgt von drei Nullen. Da null Komma eins zwei fünf drei Dezimalstellen hat, teilen wir es durch eintausend. So erhalten wir einhundertfünfundzwanzig durch eintausend.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir den Bruch. Einhundertfünfundzwanzig geteilt durch eintausend vereinfacht sich zu ein Achtel. Und das war's, wir sind fertig! Die Lösung ist ein Achtel.")
]
]