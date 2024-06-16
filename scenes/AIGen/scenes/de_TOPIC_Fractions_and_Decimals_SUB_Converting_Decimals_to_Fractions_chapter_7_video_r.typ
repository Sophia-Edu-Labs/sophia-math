#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Dezimalzahlen sind im Alltag üblich. 💵]
#only("2-")[- Manchmal sind Brüche nützlicher. 📏]
#only("3-")[- Lass uns überprüfen, wie man Dezimalzahlen in Brüche umwandelt. 🔄]
#only("1")[
#voiceover("Lass uns den Prozess der Umwandlung von Dezimalzahlen in Brüche überprüfen. Dezimalzahlen sind im Alltag üblich, zum Beispiel beim Umgang mit Geld.")
]
#only("2")[
#voiceover("Manchmal sind jedoch Brüche nützlicher, zum Beispiel bei der Vereinfachung von Berechnungen.")
]
#only("3")[
#voiceover("Lass uns die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen. ✂️]
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#only("4-")[- Beispiel: $0.75$ wird zu $75/100$.]
#only("1")[
#voiceover("Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen. Füge für jede Dezimalstelle eine Null hinzu.")
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
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Bei null Komma sieben fünf zählst du die Dezimalstellen: Es gibt zwei.")
]
#only("2")[
#voiceover("Entferne das Dezimalzeichen, um fünfundsiebzig zu erhalten.")
]
#only("3")[
#voiceover("Dann teilst du fünfundsiebzig durch hundert, weil es zwei Dezimalstellen gibt. Also, fünfundsiebzig Hundertstel.")
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
#voiceover("Zusammengefasst: Zuerst zählst du die Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen.")
]
#only("3")[
#voiceover("Dann teilst du durch eine Eins mit Nullen, eine Null für jede Dezimalstelle. Das war's!")
]
]