#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit bei der richtigen Beantwortung der Frage! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von komplexen Dezimalzahlen in Brüche]

#v(40pt)

#only("2-")[#text()[$2.345 = ?$]]
#only("2")[
#voiceover("Wir müssen die Dezimalzahl zwei Komma drei vier fünf in einen Bruch umwandeln.")
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
#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zähle die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entferne das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teile die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $2.345$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $2.345$. $arrow$ Es gibt 3 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 2345$.]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $1000 arrow 2345/1000$.]
#only("4-")[- Schritt 4: Vereinfache den Bruch. $arrow 469/200$.]

#only("1")[
#voiceover("Wenden wir nun diese Schritte auf die Dezimalzahl zwei Komma drei vier fünf an. Zuerst zählen wir die Dezimalstellen. Es gibt drei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns zwei tausend drei hundert fünfundvierzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir zwei tausend drei hundert fünfundvierzig durch eine Eins, gefolgt von drei Nullen, da es drei Dezimalstellen gibt. Das ergibt zwei tausend drei hundert fünfundvierzig durch tausend.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir den Bruch. Zwei tausend drei hundert fünfundvierzig durch tausend vereinfacht sich zu vier hundert neunundsechzig durch zweihundert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[Der Bruch, der $2.345$ entspricht, ist $469/200$.]

#only("1")[
#voiceover("Der Bruch, der zwei Komma drei vier fünf entspricht, ist also vier hundert neunundsechzig durch zweihundert. Gut gemacht!")
]
]