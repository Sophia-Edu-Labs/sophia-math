#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche]
#v(40pt)
#only("1-")[- Situation: Du hast eine Dezimalzahl wie $0.005$]
#v(20pt)
#only("2-")[- Ziel: Diese in einen Bruch umwandeln]
#v(20pt)
#only("3-")[- Warum: Vereinfacht Berechnungen und verbessert das Verständnis von Zahlen 🔍]
#only("1")[
#voiceover("Stell dir vor, du hast eine Dezimalzahl wie null Komma null null fünf.")
]
#only("2")[
#voiceover("Und du möchtest diese in einen Bruch umwandeln.")
]
#only("3")[
#voiceover("Dies ist eine nützliche Fähigkeit, um Berechnungen zu vereinfachen und Zahlen besser zu verstehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Anzahl der Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#v(20pt)
#only("4-")[- Beispiel: $0.005$ wird zu $5/1000$.]
#only("1")[
#voiceover("Hier ist eine kurze Übersicht der Schritte, die wir unternehmen müssen, um Dezimalzahlen mit führenden Nullen in Brüche umzuwandeln. Zuerst zählen wir die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilen wir die resultierende Zahl durch eine Eins, gefolgt von Nullen. Die Anzahl der Nullen wird durch die Anzahl der Dezimalstellen bestimmt. Für jede Dezimalstelle fügen wir eine Null hinzu.")
]
#only("4")[
#voiceover("Und das ergibt unseren endgültigen Bruch. Zum Beispiel wird null Komma null null fünf zu fünf durch eintausend.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.005$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen in $0.005$. Es gibt 3 Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen: $5$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^3 = 1000$: $5/1000$. ➗]
#v(20pt)
#only("1")[
#voiceover("Lass uns ein Beispiel durchgehen. Um null Komma null null fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt drei Dezimalstellen: Die Null, die Null und die Fünf.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünf ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir fünf durch eine Eins, gefolgt von drei Nullen. Eine kurze Erinnerung: Wir machen das, weil null Komma null null fünf drei Dezimalstellen hat, also teilen wir es durch eine Eins mit drei Nullen. So erhalten wir fünf durch eintausend. Und das war's schon! Wir bekommen, dass null Komma null null fünf gleich fünf durch eintausend ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Entferne das Dezimalzeichen. ✂️]
#v(20pt)
#only("3-")[- Teile durch eine Zehnerpotenz. ➗]
#only("1")[
#voiceover("Also, eine kurze Zusammenfassung: Um eine Dezimalzahl mit führenden Nullen in einen Bruch umzuwandeln, zähle zuerst die Dezimalstellen.")
]
#only("2")[
#voiceover("Dann entferne das Dezimalzeichen.")
]
#only("3")[
#voiceover("Als nächstes teile durch eine Eins mit Nullen, eine Null für jede Dezimalstelle. Und das war's schon!")
]
]