#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Dezimalzahlen in Brüche umwandeln]
#v(40pt)
#only("1-")[- Gegeben: Dezimalzahl wie $0.75$]
#v(20pt)
#only("2-")[- Gesucht: Bruch $square/square$]
#v(20pt)
#only("3-")[- Dezimalzahlen Schritt für Schritt in Brüche umwandeln. 📏]
#v(20pt)
#only("4-")[- Nützlich, um Berechnungen zu vereinfachen und Zahlen besser zu verstehen. 🔍]
#only("1")[
#voiceover("Lass uns überprüfen, wie man eine Dezimalzahl wie null Komma sieben fünf in einen Bruch umwandelt.")
]
#only("2")[
#voiceover("Wir wollen diese Zahl als Bruch darstellen, also etwas über etwas.")
]
#only("3")[
#voiceover("Hier ist der Schritt-für-Schritt-Prozess, um Dezimalzahlen in Brüche umzuwandeln.")
]
#only("4")[
#voiceover("Diese Methode ist nützlich, um Berechnungen zu vereinfachen und Zahlen besser zu verstehen.")
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
#v(20pt)
#only("4-")[- Beispiel: $0.75$ wird zu $75/100$.]
#only("1")[
#voiceover("Zuerst zähle die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entferne das Dezimalzeichen.")
]
#only("3")[
#voiceover("Dann teile die resultierende Zahl durch eine Eins, gefolgt von Nullen. Füge für jede Dezimalstelle eine Null hinzu.")
]
#only("4")[
#voiceover("Zum Beispiel wird null Komma sieben fünf zu fünfundsiebzig Hundertstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.75$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen in $0.75$. Es gibt 2 Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen: $75$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^2 = 100$: $75/100$. ➗]
#v(20pt)
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Bei null Komma sieben fünf zähle die Dezimalstellen: Es gibt zwei.")
]
#only("2")[
#voiceover("Entferne das Dezimalzeichen, um fünfundsiebzig zu erhalten.")
]
#only("3")[
#voiceover("Dann teile fünfundsiebzig durch hundert, weil es zwei Dezimalstellen gibt. Also fünfundsiebzig Hundertstel.")
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
#voiceover("Zusammengefasst: Zuerst zähle die Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entferne das Dezimalzeichen.")
]
#only("3")[
#voiceover("Dann teile durch eine Eins mit Nullen, eine Null für jede Dezimalstelle. Das war's!")
]
]