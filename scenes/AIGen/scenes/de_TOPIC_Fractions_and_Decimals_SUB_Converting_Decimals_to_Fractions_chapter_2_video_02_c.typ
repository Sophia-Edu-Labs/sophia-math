#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[Welcher Bruch entspricht $0.25$?]
#v(40pt)
// Vom Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) $25/100$]#only("2-")[#text(fill:green)[a) $25/100$]]
#v(10pt)
// Vom Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) $2.5/10$]#only("3-")[#text(fill:red)[b) $2.5/10$]]
#v(10pt)
// Vom Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) $1/25$]#only("4-")[#text(fill:red)[c) $1/25$]]
#v(10pt)
// Vom Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) $2.5/100$]#only("5-")[#text(fill:red)[d) $2.5/100$]]
#v(40pt)

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns die Optionen durchgehen, um zu verstehen warum.")]
#only("2")[#voiceover("Option a) $25/100$ ist korrekt. Wenn du $25/100$ vereinfachst, erhältst du $1/4$, was $0.25$ entspricht.")]
#only("3")[#voiceover("Option b) $2.5/10$ ist falsch. $2.5/10$ vereinfacht sich zu $1/4$, was $0.25$ entspricht, aber es ist nicht die einfachste Form.")]
#only("4")[#voiceover("Option c) $1/25$ ist falsch. $1/25$ entspricht $0.04$, nicht $0.25$.")]
#only("5")[#voiceover("Option d) $2.5/100$ ist falsch. $2.5/100$ vereinfacht sich zu $1/40$, was $0.025$ entspricht, nicht $0.25$.")]
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
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Dezimalzahlen in Brüche durchgehen. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")]
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")]
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.25$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.25$. $arrow$ Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 25$.]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 25/100$.]
#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf die Dezimalzahl 0.25 an. Um null Komma fünfundzwanzig in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen.")]
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünfundzwanzig ergibt.")]
]
#only("3")[
#voiceover("Dann teilen wir fünfundzwanzig durch eine Eins, gefolgt von zwei Nullen. Da 0.25 zwei Dezimalstellen hat, teilen wir es durch hundert. So erhalten wir fünfundzwanzig durch hundert. Und das war's, wir sind fertig! Die Lösung ist fünfundzwanzig durch hundert.")]
]
]