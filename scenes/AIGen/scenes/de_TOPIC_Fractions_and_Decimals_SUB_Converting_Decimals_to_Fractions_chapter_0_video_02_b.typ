#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[Welcher Bruch entspricht $0.5$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $1/5$]#only("2-")[#text(fill:red)[a) $1/5$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $5/1$]#only("3-")[#text(fill:red)[b) $5/1$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) $5/10$]#only("4-")[#text(fill:green)[c) $5/10$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $5/100$]#only("5-")[#text(fill:red)[d) $5/100$]]
#v(40pt)

#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort c) fünf Zehntel ist.")]
#only("2")[#voiceover("Option a) ein Fünftel ist falsch. Null Komma fünf ist nicht gleich ein Fünftel, was null Komma zwei ist.")]
#only("3")[#voiceover("Option b) fünf Eintel ist falsch. Fünf Eintel ergibt fünf, was viel größer als null Komma fünf ist.")]
#only("4")[#voiceover("Option c) fünf Zehntel ist korrekt. Wenn du fünf Zehntel vereinfachst, erhältst du ein Halb, was null Komma fünf entspricht.")]
#only("5")[#voiceover("Option d) fünf Hundertstel ist falsch. Fünf Hundertstel vereinfacht sich zu ein Zwanzigstel, was null Komma null fünf ist, nicht null Komma fünf.")]
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
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zähle die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entferne das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teile die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.5$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.5$. $arrow$ Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 5$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 5/10$ ]

#only("1")[
#voiceover("Wenden wir nun diese Schritte auf die Dezimalzahl null Komma fünf an. Um null Komma fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünf ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir fünf durch eine Eins, gefolgt von einer Null. Da null Komma fünf eine Dezimalstelle hat, teilen wir es durch zehn. So erhalten wir fünf Zehntel. Und das war's, wir sind fertig! Die Lösung ist fünf Zehntel.")
]
]