#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dezimalzahlen in Brüche umwandeln]
#v(40pt)
#only("1-")[Welcher Bruch entspricht $0.3$?]
#v(40pt)
// Vom Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $3/1$]#only("2-")[#text(fill:red)[a) $3/1$]]
#v(10pt)
// Vom Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) $3/10$]#only("3-")[#text(fill:green)[b) $3/10$]]
#v(10pt)
// Vom Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $1/3$]#only("4-")[#text(fill:red)[c) $1/3$]]
#v(10pt)
// Vom Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $3/100$]#only("5-")[#text(fill:red)[d) $3/100$]]
#v(40pt)

#only("1")[#voiceover("Gut gemacht! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort b) $3/10$ ist.")]
#only("2")[#voiceover("Option a) $3/1$ ist falsch. $0.3$ ist nicht gleich $3/1$, was $3$ ist.")]
#only("3")[#voiceover("Option b) $3/10$ ist richtig. Wenn du $3/10$ vereinfachst, bleibt es $3/10$, was $0.3$ entspricht.")]
#only("4")[#voiceover("Option c) $1/3$ ist falsch. $1/3$ ist ungefähr $0.333$, nicht $0.3$.")]
#only("5")[#voiceover("Option d) $3/100$ ist falsch. $3/100$ vereinfacht sich zu $0.03$, nicht $0.3$.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zum Umwandeln von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#only("1")[
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zum Umwandeln von Dezimalzahlen in Brüche. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $0.3$ in einen Bruch umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.3$. $arrow$ Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 3$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 3/10$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl 0.3 anwenden. Um null Komma drei in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns drei ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir drei durch eine Eins, gefolgt von einer Null. Da 0.3 eine Dezimalstelle hat, teilen wir es durch zehn. So erhalten wir drei Zehntel. Und das war's, wir sind fertig! Die Lösung ist drei Zehntel.")
]
]