#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]

#v(40pt)

#only("2-")[#text()[$0.56$]]
#only("2")[
#voiceover("Wir betrachten also die Dezimalzahl null Komma fünf sechs.")
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
#voiceover("Bevor wir die Aufgabe lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalkomma aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.56$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.56$. $arrow$ Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalkomma: $arrow 56$.]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 56/100$.]
#v(20pt)
#only("4-")[- Schritt 4: Vereinfache den Bruch: $arrow 28/50 arrow 14/25$.]

#only("1")[
#voiceover("Nun wenden wir diese Schritte auf die Dezimalzahl null Komma fünf sechs an. Um null Komma fünf sechs in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma, was uns sechsundfünfzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir sechsundfünfzig durch eine Eins, gefolgt von zwei Nullen. Da null Komma fünf sechs zwei Dezimalstellen hat, teilen wir durch einhundert. So erhalten wir sechsundfünfzig Hundertstel.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir den Bruch. Sechsundfünfzig Hundertstel können zu achtundzwanzig Fünfzigstel vereinfacht werden und weiter zu vierzehn Fünfundzwanzigstel. Also ist null Komma fünf sechs gleich vierzehn Fünfundzwanzigstel.")
]
]