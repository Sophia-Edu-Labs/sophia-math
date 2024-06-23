#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche]
#v(40pt)
#only("1-")[- Dezimalzahlen mit führenden Nullen folgen denselben Regeln. 📏]
#v(20pt)
#only("2-")[- Zähle die Dezimalstellen für den Nenner. 🔢]
#v(20pt)
#only("3-")[- Beispiel: $0.007$]
#only("1")[
#voiceover("Lass uns überprüfen, wie man Dezimalzahlen mit führenden Nullen in Brüche umwandelt. Es gelten dieselben Regeln wie bei anderen Dezimalzahlen.")
]
#only("2")[
#voiceover("Wir zählen die Anzahl der Dezimalstellen, um den Nenner zu bestimmen.")
]
#only("3")[
#voiceover("Zum Beispiel betrachten wir die Dezimalzahl null Komma null null sieben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen mit führenden Nullen]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalkomma. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#v(20pt)
#only("4-")[- Beispiel: $0.007$ wird zu $7/1000$.]
#only("1")[
#voiceover("Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalkomma.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen. Füge eine Null für jede Dezimalstelle hinzu.")
]
#only("4")[
#voiceover("Zum Beispiel wird null Komma null null sieben zu sieben durch eintausend.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.007$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen in $0.007$. Es gibt 3 Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalkomma: $7$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^3 = 1000$: $7/1000$. ➗]
#v(20pt)
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Bei null Komma null null sieben zählst du die Dezimalstellen: Es gibt drei.")
]
#only("2")[
#voiceover("Entferne das Dezimalkomma, um sieben zu erhalten.")
]
#only("3")[
#voiceover("Dann teilst du sieben durch eintausend, weil es drei Dezimalstellen gibt. Also sieben durch eintausend.")
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
#voiceover("Zusammengefasst: Zuerst zählst du die Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalkomma.")
]
#only("3")[
#voiceover("Dann teilst du durch eine Eins mit Nullen, eine Null für jede Dezimalstelle. Das war's!")
]
]