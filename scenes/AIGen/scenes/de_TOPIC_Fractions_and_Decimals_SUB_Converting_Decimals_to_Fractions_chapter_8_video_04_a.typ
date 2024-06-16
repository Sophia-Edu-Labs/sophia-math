#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit beim Erkennen der richtigen Antwort! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Komplexe Dezimalzahlen in Brüche umwandeln]

#v(40pt)

#only("2-")[#text()[$6.789$]]
// Die Dezimalzahl 6.789 wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir beginnen mit der Dezimalzahl sechs Komma sieben acht neun.")
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
#only("4-")[- Schritt 4: Vereinfache den Bruch. 🧮]

#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns kurz die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
#only("4")[
#voiceover("Zum Schluss vereinfachst du den Bruch, wenn möglich.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $6.789$ in einen Bruch]

#v(40pt)

#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $6.789$. $arrow$ Es gibt 3 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 6789$.]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $1000 arrow 6789/1000$.]
#v(20pt)
#only("4-")[- Schritt 4: 🧮 Vereinfache den Bruch: $arrow 6789/1000$.]

#only("1")[
#voiceover("Nun wenden wir diese Schritte auf die Dezimalzahl sechs Komma sieben acht neun an. Zuerst zählen wir die Dezimalstellen. Es gibt drei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns sechs tausend siebenhundert neunundachtzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir sechs tausend siebenhundert neunundachtzig durch eine Eins, gefolgt von drei Nullen, da sechs Komma sieben acht neun drei Dezimalstellen hat. Also erhalten wir sechs tausend siebenhundert neunundachtzig durch tausend.")
]
#only("4")[
#voiceover("Zum Schluss prüfen wir, ob der Bruch vereinfacht werden kann. In diesem Fall ist sechs tausend siebenhundert neunundachtzig durch tausend bereits in seiner einfachsten Form. Daher ist der Bruch, der sechs Komma sieben acht neun entspricht, sechs tausend siebenhundert neunundachtzig durch tausend.")
]
]