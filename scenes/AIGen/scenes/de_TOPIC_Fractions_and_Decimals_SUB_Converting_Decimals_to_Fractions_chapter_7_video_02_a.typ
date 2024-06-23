#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Super, du hast das richtig erkannt! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit mehr Komplexität in Brüche]

#v(40pt)

#only("2-")[#text()[$3.042$]]
// Die Dezimalzahl 3.042 wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir betrachten also die Dezimalzahl drei Komma null vier zwei.")
]
]


#slide()[
#only("1")[
#voiceover("Um diese Dezimalzahl in einen Bruch umzuwandeln, folgen wir einigen Schritten. Lass uns mit dem ersten Schritt beginnen.")
]

#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]

#v(40pt)

#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
// Der erste Schritt wird ab Folie 1 angezeigt

#only("2-")[- Schritt 2: Entferne das Dezimalkomma. ✂️]
// Der zweite Schritt wird ab Folie 2 angezeigt

#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
// Der dritte Schritt wird ab Folie 3 angezeigt

#only("1")[
#voiceover("Zuerst zählen wir die Anzahl der Dezimalstellen in der Dezimalzahl.")
]

#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma aus der Zahl.")
]

#only("3")[
#voiceover("Dann teilen wir die resultierende Zahl durch eine Eins gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $3.042$ in einen Bruch]

#v(40pt)

#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $3.042$. $arrow$Es gibt 3 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalkomma: $arrow 3042$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $1000 arrow 3042/1000$ ]

#only("1")[
#voiceover("Nun wenden wir diese Schritte auf die Dezimalzahl drei Komma null vier zwei an. Um drei Komma null vier zwei in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt drei Dezimalstellen.")
]

#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma, was uns dreitausend zweiundvierzig ergibt.")
]

#only("3")[
#voiceover("Dann teilen wir dreitausend zweiundvierzig durch eine Eins gefolgt von drei Nullen. Da drei Komma null vier zwei drei Dezimalstellen hat, teilen wir es durch eintausend. Also erhalten wir dreitausend zweiundvierzig durch eintausend.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Bruch vereinfachen]

#v(40pt)

#only("1-")[- Schritt 4: Vereinfache den Bruch, wenn möglich. 🧮]
#v(20pt)
#only("2-")[- $3042/1000 = 1521/500$]

#only("1")[
#voiceover("Schließlich vereinfachen wir den Bruch, wenn möglich. In diesem Fall können wir dreitausend zweiundvierzig durch eintausend vereinfachen.")
]

#only("2")[
#voiceover("Indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der zwei ist, teilen, erhalten wir eintausend fünfhunderteinundzwanzig durch fünfhundert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[- Der Bruch, der $3.042$ entspricht, ist $1521/500$. 🎉]

#only("1")[
#voiceover("Der Bruch, der drei Komma null vier zwei entspricht, ist also eintausend fünfhunderteinundzwanzig durch fünfhundert. Gute Arbeit!")
]
]