#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Zahlen größer als 1 in Brüche]
#v(40pt)
#only("1-")[Welchem Bruch entspricht $2.5$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $25/10$]#only("2-")[#text(fill:red)[a) $25/10$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $2.5/1$]#only("3-")[#text(fill:red)[b) $2.5/1$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) $5/2$]#only("4-")[#text(fill:green)[c) $5/2$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $25/100$]#only("5-")[#text(fill:red)[d) $25/100$]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, gut gemacht! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort c) fünf durch zwei ist.")]
#only("2")[#voiceover("Option a) fünfundzwanzig durch zehn ist falsch. Obwohl fünfundzwanzig geteilt durch zehn zwei Komma fünf ergibt, ist es nicht in seiner einfachsten Form.")]
#only("3")[#voiceover("Option b) zwei Komma fünf durch eins ist falsch. Es ist kein richtiger Bruch, da es immer noch eine Dezimalzahl enthält.")]
#only("4")[#voiceover("Option c) fünf durch zwei ist richtig. Wenn du fünf durch zwei teilst, erhältst du zwei Komma fünf.")]
#only("5")[#voiceover("Option d) fünfundzwanzig durch hundert ist falsch. Fünfundzwanzig durch hundert vereinfacht sich zu einem Viertel, was null Komma zwei fünf ist, nicht zwei Komma fünf.")]
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
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $2.5$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $2.5$. $arrow$ Es gibt 1 Dezimalstelle.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 25$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $10 arrow 25/10$ ]
#v(20pt)
#only("4-")[- Vereinfache: $25/10 = 5/2$]

#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf die Dezimalzahl zwei Komma fünf an. Um zwei Komma fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt eine Dezimalstelle.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünfundzwanzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir fünfundzwanzig durch eine Eins, gefolgt von einer Null. Da zwei Komma fünf eine Dezimalstelle hat, teilen wir es durch zehn. Also erhalten wir fünfundzwanzig durch zehn.")
]
#only("4")[
#voiceover("Schließlich vereinfachen wir fünfundzwanzig durch zehn, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler teilen, der fünf ist. Das ergibt fünf durch zwei. Und das war's, wir sind fertig! Die Lösung ist fünf durch zwei.")
]
]