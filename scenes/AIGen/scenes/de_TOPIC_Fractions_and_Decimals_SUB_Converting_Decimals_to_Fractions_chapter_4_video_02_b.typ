#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche]
#v(40pt)
#only("1-")[Welchem Bruch entspricht $0.05$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $5/1000$]#only("2-")[#text(fill:red)[a) $5/1000$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) $5/100$]#only("3-")[#text(fill:green)[b) $5/100$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $5/10$]#only("4-")[#text(fill:red)[c) $5/10$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $5/1$]#only("5-")[#text(fill:red)[d) $5/1$]]
#v(40pt)

#only("1")[#voiceover("Großartig, dass Du die Frage richtig beantwortet hast! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort b) $5/100$ ist.")]
#only("2")[#voiceover("Option a) $5/1000$ ist falsch. $0.05$ ist nicht gleich $5/1000$, was zu $1/200$ vereinfacht wird.")]
#only("3")[#voiceover("Option b) $5/100$ ist richtig. Wenn Du $5/100$ vereinfachst, erhältst Du $1/20$, was $0.05$ entspricht.")]
#only("4")[#voiceover("Option c) $5/10$ ist falsch. $5/10$ vereinfacht sich zu $1/2$, was $0.5$ entspricht, nicht $0.05$.")]
#only("5")[#voiceover("Option d) $5/1$ ist falsch. $5/1$ ergibt $5$, was viel größer als $0.05$ ist.")]
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
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zählst Du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst Du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst Du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.05$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.05$. $arrow$Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 5$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 5/100$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl 0.05 anwenden. Um null Komma null fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünf ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir fünf durch eine Eins, gefolgt von zwei Nullen. Da 0.05 zwei Dezimalstellen hat, teilen wir es durch hundert. So erhalten wir fünf durch hundert. Und das war's, wir sind fertig! Die Lösung ist fünf durch hundert.")
]
]