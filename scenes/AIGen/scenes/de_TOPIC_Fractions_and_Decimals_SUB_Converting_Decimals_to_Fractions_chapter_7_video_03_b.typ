#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Guter Versuch! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit höherer Komplexität in Brüche]

#v(40pt)

#only("2-")[#text()[$5.678$]]
// Die Dezimalzahl 5.678 wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir haben die Dezimalzahl fünf Komma sechs sieben acht gegeben.")
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
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $5.678$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $5.678$. $arrow$ Es gibt 3 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 5678$.]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $1000 arrow 5678/1000$.]
#v(20pt)
#only("4-")[- Schritt 4: Vereinfache den Bruch, falls möglich.]
#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl fünf Komma sechs sieben acht anwenden. Zuerst zählen wir die Dezimalstellen. Es gibt drei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünftausend sechshundert achtundsiebzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir fünftausend sechshundert achtundsiebzig durch eine Eins gefolgt von drei Nullen. Da 5.678 drei Dezimalstellen hat, teilen wir es durch eintausend. So erhalten wir fünftausend sechshundert achtundsiebzig durch eintausend.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir den Bruch, falls möglich. In diesem Fall vereinfacht sich fünftausend sechshundert achtundsiebzig durch eintausend zu zweihundert dreiundachtzig durch fünfzig. Also ist der Bruch, der fünf Komma sechs sieben acht entspricht, zweihundert dreiundachtzig durch fünfzig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung]
#v(40pt)
#only("1-")[- $5678/1000 = 283/50$]
#only("1")[
#voiceover("Um den Bruch zu vereinfachen, finden wir den größten gemeinsamen Teiler von fünftausend sechshundert achtundsiebzig und eintausend, der zwei ist. Indem wir sowohl den Zähler als auch den Nenner durch zwei teilen, erhalten wir zweihundert dreiundachtzig durch fünfzig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[- Der Bruch, der $5.678$ entspricht, ist $283/50$.]
#only("1")[
#voiceover("Also ist der Bruch, der fünf Komma sechs sieben acht entspricht, zweihundert dreiundachtzig durch fünfzig. Gut gemacht!")
]
]