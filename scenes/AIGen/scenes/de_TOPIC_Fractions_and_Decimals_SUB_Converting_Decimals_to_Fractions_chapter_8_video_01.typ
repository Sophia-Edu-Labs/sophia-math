#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einführung in die Umwandlung von komplexen Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Stell dir vor, du hast eine Dezimalzahl wie $0.875$]
#v(20pt)
#only("2-")[- Du möchtest sie als Bruch $a/b$ schreiben]
#v(20pt)
#only("3-")[- Wir lernen eine Schritt-für-Schritt-Methode, um dies zu tun 📏]
#v(20pt)
#only("4-")[- Diese Fähigkeit vereinfacht Berechnungen und hilft, Zahlen besser zu verstehen 🔍]
#only("1")[
#voiceover("Stell dir vor, du hast eine Dezimalzahl, wie null Komma acht sieben fünf.")
]
#only("2")[
#voiceover("Und du möchtest sie als Bruch schreiben, also als etwas über etwas anderes.")
]
#only("3")[
#voiceover("Wir werden jetzt eine einfache Methode lernen, um Dezimalzahlen Schritt für Schritt in Brüche umzuwandeln.")
]
#only("4")[
#voiceover("Dies ist eine nützliche Fähigkeit, um Berechnungen zu vereinfachen und Zahlen besser zu verstehen.")
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
#only("4-")[- Beispiel: $0.875$ wird zu $875/1000$.]
#only("1")[
#voiceover("Hier ist ein kurzer Überblick über die Schritte, die wir unternehmen müssen, um Dezimalzahlen in Brüche umzuwandeln. Zuerst zählen wir die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilen wir die resultierende Zahl durch eine Eins, gefolgt von Nullen. Die Anzahl der Nullen wird durch die Anzahl der Dezimalstellen bestimmt. Für jede Dezimalstelle fügen wir eine Null hinzu.")
]
#only("4")[
#voiceover("Und das gibt uns unsere endgültige Dezimalzahl. Zum Beispiel wird null Komma acht sieben fünf zu achthundertfünfundsiebzig durch eintausend.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.875$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen in $0.875$. Es gibt 3 Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen: $875$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^3 = 1000$: $875/1000$. ➗]
#v(20pt)
#only("1")[
#voiceover("Lass uns ein Beispiel durchgehen. Um null Komma acht sieben fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt drei Dezimalstellen: Die acht, die sieben und die fünf.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns achthundertfünfundsiebzig gibt.")
]
#only("3")[
#voiceover("Dann teilen wir achthundertfünfundsiebzig durch eine Eins, gefolgt von drei Nullen. Zur Erinnerung, das machen wir, weil 0.875 drei Dezimalstellen hat, also teilen wir durch eine Eins mit drei Nullen. So erhalten wir achthundertfünfundsiebzig durch eintausend. Und das war's schon! Wir erhalten, dass 0.875 gleich achthundertfünfundsiebzig durch eintausend ist.")
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
#voiceover("Also eine kurze Zusammenfassung: Um eine Dezimalzahl in einen Bruch umzuwandeln, zähle zuerst die Dezimalstellen.")
]
#only("2")[
#voiceover("Dann entferne das Dezimalzeichen.")
]
#only("3")[
#voiceover("Als nächstes teile durch eine Eins mit Nullen, eine Null für jede Dezimalstelle. Und das war's schon!")
]
]