#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einführung in die Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Stell dir vor, du hast eine Dezimalzahl wie $0.75$.]
#v(20pt)
#only("2-")[- Du möchtest sie als Bruch schreiben, zum Beispiel $3/4$.]
#v(20pt)
#only("3-")[- Dieser Prozess hilft, Berechnungen zu vereinfachen und Zahlen besser zu verstehen. 🔍]
#only("1")[
#voiceover("Stell dir vor, du hast eine Dezimalzahl, wie null Komma sieben fünf.")
]
#only("2")[
#voiceover("Und du möchtest sie als Bruch schreiben, wie drei Viertel.")
]
#only("3")[
#voiceover("Dieser Prozess hilft, Berechnungen zu vereinfachen und Zahlen besser zu verstehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Anzahl der Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#v(20pt)
#only("4-")[- Beispiel: $0.75$ wird zu $75/100$.]
#only("1")[
#voiceover("Hier ist ein kurzer Überblick über die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Zehnerpotenz. Die Zehnerpotenz wird durch die Anzahl der Dezimalstellen bestimmt. Für jede Dezimalstelle fügen wir eine Null hinzu.")
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
#only("4-")[- Vereinfache: $75/100 = 3/4$.]
#only("1")[
#voiceover("Lass uns ein Beispiel durchgehen. Um null Komma sieben fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen: die sieben und die fünf.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünfundsiebzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir fünfundsiebzig durch eine Eins, gefolgt von zwei Nullen. Das liegt daran, dass null Komma sieben fünf zwei Dezimalstellen hat, also teilen wir es durch hundert. Wir erhalten fünfundsiebzig Hundertstel.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir den Bruch. Fünfundsiebzig Hundertstel vereinfacht sich zu drei Viertel.")
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
#only("4-")[- Vereinfache den Bruch. 📏]
#only("1")[
#voiceover("Also, zusammengefasst: Um eine Dezimalzahl in einen Bruch umzuwandeln, zähle zuerst die Dezimalstellen.")
]
#only("2")[
#voiceover("Dann entferne das Dezimalzeichen.")
]
#only("3")[
#voiceover("Als nächstes teile durch eine Zehnerpotenz, wobei die Potenz durch die Anzahl der Dezimalstellen bestimmt wird.")
]
#only("4")[
#voiceover("Schließlich vereinfache den Bruch. Und das war's!")
]
]