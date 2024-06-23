#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Einführung in das Umwandeln von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Stell Dir vor, Du hast eine Dezimalzahl wie $0.125$.]
#v(20pt)
#only("2-")[- Wie können wir das als Bruch schreiben?]
#v(20pt)
#only("3-")[- Lass es uns Schritt für Schritt herausfinden! 📏]
#only("1")[
#voiceover("Stell Dir vor, Du hast eine Dezimalzahl, wie null Komma eins zwei fünf.")
]
#only("2")[
#voiceover("Und Du möchtest diese Zahl als Bruch schreiben, also als etwas über etwas anderes.")
]
#only("3")[
#voiceover("Lass uns herausfinden, wie man Dezimalzahlen Schritt für Schritt in Brüche umwandelt!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zum Umwandeln von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Anzahl der Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalkomma. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#v(20pt)
#only("4-")[- Beispiel: $0.125$ wird zu $125/1000$.]
#only("1")[
#voiceover("Hier ist ein kurzer Überblick über die Schritte, um Dezimalzahlen in Brüche umzuwandeln. Zuerst zählen wir die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilen wir die resultierende Zahl durch eine Eins, gefolgt von Nullen. Die Anzahl der Nullen wird durch die Anzahl der Dezimalstellen bestimmt. Für jede Dezimalstelle fügen wir eine Null hinzu.")
]
#only("4")[
#voiceover("Zum Beispiel wird null Komma eins zwei fünf zu einhundertfünfundzwanzig über eintausend.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandeln von $0.125$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen in $0.125$. Es gibt 3 Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalkomma: $125$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^3 = 1000$: $125/1000$. ➗]
#v(20pt)
#only("1")[
#voiceover("Lass uns ein Beispiel durchgehen. Um null Komma eins zwei fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt drei Dezimalstellen: die Eins, die Zwei und die Fünf.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma, was uns einhundertfünfundzwanzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir einhundertfünfundzwanzig durch eine Eins, gefolgt von drei Nullen. Zur Erinnerung, das machen wir, weil null Komma eins zwei fünf drei Dezimalstellen hat, also teilen wir es durch eine Eins mit drei Nullen. So erhalten wir einhundertfünfundzwanzig über eintausend. Und das war's schon! Wir bekommen, dass null Komma eins zwei fünf gleich einhundertfünfundzwanzig über eintausend ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Entferne das Dezimalkomma. ✂️]
#v(20pt)
#only("3-")[- Teile durch eine Zehnerpotenz. ➗]
#only("1")[
#voiceover("Also, eine kurze Zusammenfassung: Um eine Dezimalzahl in einen Bruch umzuwandeln, zähle zuerst die Dezimalstellen.")
]
#only("2")[
#voiceover("Dann entferne das Dezimalkomma.")
]
#only("3")[
#voiceover("Teile dann durch eine Eins mit Nullen, eine Null für jede Dezimalstelle. Und das war's schon!")
]
]