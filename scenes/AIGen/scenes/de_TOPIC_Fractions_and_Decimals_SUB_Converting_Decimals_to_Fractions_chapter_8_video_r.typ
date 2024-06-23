#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Umwandlung von komplexen Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Gegeben: eine komplexe Dezimalzahl wie $0.375$]
#v(20pt)
#only("2-")[- Gesucht: ein Bruch $a/b$]
#v(20pt)
#only("3-")[- Schrittweise Umwandlung von komplexen Dezimalzahlen in Brüche. 📏]
#v(20pt)
#only("4-")[- Nützlich zur Vereinfachung von Berechnungen und zum besseren Verständnis von Zahlen. 🔍]
#only("1")[
#voiceover("Lass uns überprüfen, wie man eine komplexe Dezimalzahl, wie null Komma drei sieben fünf, in einen Bruch umwandelt.")
]
#only("2")[
#voiceover("Wir möchten diese Zahl als Bruch darstellen, also etwas über etwas.")
]
#only("3")[
#voiceover("Hier ist der Schritt-für-Schritt-Prozess zur Umwandlung von komplexen Dezimalzahlen in Brüche.")
]
#only("4")[
#voiceover("Diese Methode ist nützlich, um Berechnungen zu vereinfachen und Zahlen besser zu verstehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von komplexen Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#v(20pt)
#only("4-")[- Beispiel: $0.375$ wird zu $375/1000$.]
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
#voiceover("Zum Beispiel wird null Komma drei sieben fünf zu dreihundertfünfundsiebzig über eintausend.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.375$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen in $0.375$. Es gibt 3 Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen: $375$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^3 = 1000$: $375/1000$. ➗]
#v(20pt)
#only("4-")[- Schritt 4: Vereinfache den Bruch: $375/1000 = 3/8$.]
#only("1")[
#voiceover("Lass uns ein Beispiel ansehen. Bei null Komma drei sieben fünf zählst du die Dezimalstellen: Es gibt drei.")
]
#only("2")[
#voiceover("Entferne das Dezimalzeichen, um dreihundertfünfundsiebzig zu erhalten.")
]
#only("3")[
#voiceover("Dann teilst du dreihundertfünfundsiebzig durch eintausend, weil es drei Dezimalstellen gibt. Also dreihundertfünfundsiebzig über eintausend.")
]
#only("4")[
#voiceover("Schließlich vereinfache den Bruch. Dreihundertfünfundsiebzig über eintausend vereinfacht sich zu drei Achtel.")
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
#v(20pt)
#only("4-")[- Vereinfache den Bruch. 🔄]
#only("1")[
#voiceover("Zusammengefasst: Zuerst zählst du die Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen.")
]
#only("3")[
#voiceover("Dann teilst du durch eine Eins mit Nullen, eine Null für jede Dezimalstelle.")
]
#only("4")[
#voiceover("Schließlich vereinfache den Bruch. Das war's!")
]
]