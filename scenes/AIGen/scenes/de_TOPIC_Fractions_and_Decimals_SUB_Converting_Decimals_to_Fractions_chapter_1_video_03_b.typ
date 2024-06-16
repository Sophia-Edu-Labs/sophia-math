#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt gemeinsam durch.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]

#v(40pt)

#only("2-")[#text()[$0.4$]]
// Die Dezimalzahl 0,4 wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir betrachten die Dezimalzahl null Komma vier.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalkomma. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]

#only("1")[
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalkomma aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.4$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.4$. $arrow$Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalkomma: $arrow 4$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 4/10$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl null Komma vier anwenden. Zuerst zählen wir die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma, was uns vier ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir vier durch eine Eins, gefolgt von einer Null. Da null Komma vier eine Dezimalstelle hat, teilen wir durch zehn. So erhalten wir vier Zehntel. Und das war's, wir sind fertig! Die Lösung ist vier Zehntel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Bruch vereinfachen]
#v(40pt)
#only("1-")[- Schritt 4: Vereinfache den Bruch. ➗]
#v(20pt)
#only("2-")[$4/10 = 2/5$]

#only("1")[
#voiceover("Zum Schluss vereinfachen wir den Bruch. Dazu finden wir den größten gemeinsamen Teiler des Zählers und des Nenners.")
]
#only("2")[
#voiceover("In diesem Fall ist der größte gemeinsame Teiler von vier und zehn zwei. Also teilen wir sowohl den Zähler als auch den Nenner durch zwei, was uns zwei Fünftel ergibt. Daher ist null Komma vier gleich zwei Fünftel.")
]
]