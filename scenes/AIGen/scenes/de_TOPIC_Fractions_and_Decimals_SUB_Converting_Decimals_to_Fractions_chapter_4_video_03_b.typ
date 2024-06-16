#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche]
#v(40pt)
#only("1-")[Welcher Bruch entspricht $0.07$?]
#v(40pt)
// Vom Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $7/1$]#only("2-")[#text(fill:red)[a) $7/1$]]
#v(10pt)
// Vom Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) $7/100$]#only("3-")[#text(fill:green)[b) $7/100$]]
#v(10pt)
// Vom Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $7/1000$]#only("4-")[#text(fill:red)[c) $7/1000$]]
#v(10pt)
// Vom Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $7/10$]#only("5-")[#text(fill:red)[d) $7/10$]]
#v(40pt)

#only("1")[#voiceover("Gut gemacht bei der Beantwortung der Frage! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort b) 7 über 100 ist.")]
#only("2")[#voiceover("Option a) 7 über 1 ist falsch. 0.07 ist nicht gleich 7 über 1, was einfach 7 ist.")]
#only("3")[#voiceover("Option b) 7 über 100 ist richtig. Wenn du 7 über 100 in eine Dezimalzahl umwandelst, erhältst du 0.07.")]
#only("4")[#voiceover("Option c) 7 über 1000 ist falsch. 7 über 1000 ergibt 0.007, was viel kleiner als 0.07 ist.")]
#only("5")[#voiceover("Option d) 7 über 10 ist ebenfalls falsch. 7 über 10 ergibt 0.7, was viel größer als 0.07 ist.")]
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
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")]
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalkomma aus der Zahl.")]
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")]
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.07$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.07$. $arrow$ Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalkomma: $arrow 7$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 7/100$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl 0.07 anwenden. Zuerst zählen wir die Dezimalstellen. Es gibt zwei Dezimalstellen.")]
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalkomma, was uns sieben ergibt.")]
]
#only("3")[
#voiceover("Dann teilen wir sieben durch eine Eins, gefolgt von zwei Nullen. Da 0.07 zwei Dezimalstellen hat, teilen wir es durch hundert. So erhalten wir sieben über hundert. Und das war's, wir sind fertig! Die Lösung ist 7 über 100.")]
]
]