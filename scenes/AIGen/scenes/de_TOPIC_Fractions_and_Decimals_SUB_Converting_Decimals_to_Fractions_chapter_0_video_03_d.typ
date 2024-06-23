#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dezimalzahlen in Brüche umwandeln]
#v(40pt)
#only("1-")[Welcher Bruch entspricht $0.2$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $2/1$]#only("2-")[#text(fill:red)[a) $2/1$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) $2/10$]#only("3-")[#text(fill:green)[b) $2/10$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $2/100$]#only("4-")[#text(fill:red)[c) $2/100$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $1/2$]#only("5-")[#text(fill:red)[d) $1/2$]]
#v(40pt)

#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort b) $2/10$ ist.")]
#only("2")[#voiceover("Option a) $2/1$ ist falsch. $0.2$ ist nicht gleich $2/1$, was $2$ ist.")]
#only("3")[#voiceover("Option b) $2/10$ ist korrekt. Wenn Du $2/10$ vereinfachst, erhältst Du $1/5$, was $0.2$ entspricht.")]
#only("4")[#voiceover("Option c) $2/100$ ist falsch. $2/100$ vereinfacht sich zu $1/50$, was $0.02$ ist, nicht $0.2$.")]
#only("5")[#voiceover("Option d) $1/2$ ist falsch. $1/2$ entspricht $0.5$, was größer als $0.2$ ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne den Dezimalpunkt. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Durch eine Zehnerpotenz teilen. ➗]
#only("1")[
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst Du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst Du den Dezimalpunkt aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst Du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $0.2$ in einen Bruch umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.2$. $arrow$ Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne den Dezimalpunkt: $arrow 2$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 2/10$ ]

#only("1")[
#voiceover("Wenden wir nun diese Schritte auf die Dezimalzahl 0.2 an ... Um null Komma zwei in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir den Dezimalpunkt, was uns zwei ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir zwei durch eine Eins, gefolgt von einer Null. Da 0.2 eine Dezimalstelle hat, teilen wir es durch zehn. So erhalten wir zwei Zehntel. Und das war's, wir sind fertig! Die Lösung ist zwei Zehntel.")
]
]