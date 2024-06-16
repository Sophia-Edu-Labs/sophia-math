#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einführung: Dezimalzahlen mit mehreren Stellen in Brüche umwandeln]
#v(40pt)
#only("1-")[- Gegeben: Dezimalzahl wie $0.1234$]
#v(20pt)
#only("2-")[- Gesucht: Bruch $square/square$]
#v(20pt)
#only("3-")[- Schrittweise Umwandlung von Dezimalzahlen in Brüche. 📏]
#v(20pt)
#only("4-")[- Nützliche Fähigkeit zur Vereinfachung von Berechnungen und zum besseren Verständnis von Zahlen. 🔍]
#only("1")[
#voiceover("Stell dir vor, du hast eine Dezimalzahl, wie null Komma eins zwei drei vier.")
]
#only("2")[
#voiceover("Und du möchtest diese Zahl beibehalten, aber als Bruch schreiben, also als etwas über etwas anderes.")
]
#only("3")[
#voiceover("Wir werden nun eine einfache Methode lernen, um Dezimalzahlen schrittweise in Brüche umzuwandeln.")
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
#only("2-")[- Schritt 2: Entferne das Dezimalkomma. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#v(20pt)
#only("4-")[- Beispiel: $0.1234$ wird zu $1234/10000$.]
#only("1")[
#voiceover("Hier ist eine kurze Übersicht der Schritte, die wir unternehmen müssen, um Dezimalzahlen in Brüche umzuwandeln. Zuerst zählen wir die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilen wir die resultierende Zahl durch eine Eins, gefolgt von Nullen. Die Anzahl der Nullen wird durch die Anzahl der Dezimalstellen bestimmt. Für jede Dezimalstelle fügen wir eine Null hinzu.")
]
#only("4")[
#voiceover("Und das gibt uns unsere endgültige Dezimalzahl. Zum Beispiel wird null Komma eins zwei drei vier zu eintausendzweihundertvierunddreißig durch zehntausend.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.1234$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen in $0.1234$. Es gibt 4 Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalkomma: $1234$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^4 = 10000$: $1234/10000$. ➗]
#v(20pt)
#only("1")[
#voiceover("Lass uns ein Beispiel durchgehen. Um null Komma eins zwei drei vier in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt vier Dezimalstellen: Die eins, die zwei, die drei und die vier.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma, was uns eintausendzweihundertvierunddreißig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir eintausendzweihundertvierunddreißig durch eine Eins, gefolgt von vier Nullen. Zur Erinnerung: Wir machen das, weil 0.1234 vier Dezimalstellen hat, also teilen wir es durch eine Eins mit vier Nullen. So erhalten wir eintausendzweihundertvierunddreißig durch zehntausend. Und das war's schon! Wir erhalten, dass 0.1234 gleich eintausendzweihundertvierunddreißig durch zehntausend ist.")
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
#voiceover("Als nächstes teile durch eine Eins mit Nullen, eine Null für jede Dezimalstelle. Und das war's schon!")
]
]