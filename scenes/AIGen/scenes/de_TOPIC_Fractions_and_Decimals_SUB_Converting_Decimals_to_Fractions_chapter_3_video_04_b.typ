#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
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
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $1.25$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $1.25$. $arrow$ Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 125$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 125/100$ ]
#v(20pt)
#only("4-")[- Schritt 4: Vereinfache den Bruch: $arrow 5/4$ ]

#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf die Dezimalzahl 1.25 an ... Um eins Komma zwei fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns einhundertfünfundzwanzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir einhundertfünfundzwanzig durch eine Eins gefolgt von zwei Nullen. Da 1.25 zwei Dezimalstellen hat, teilen wir durch einhundert. So erhalten wir einhundertfünfundzwanzig durch einhundert.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir den Bruch. Der größte gemeinsame Teiler von einhundertfünfundzwanzig und einhundert ist fünfundzwanzig. Also teilen wir sowohl den Zähler als auch den Nenner durch fünfundzwanzig, was uns fünf Viertel ergibt. Und das war's, wir sind fertig! Die Lösung ist fünf Viertel.")
]
]