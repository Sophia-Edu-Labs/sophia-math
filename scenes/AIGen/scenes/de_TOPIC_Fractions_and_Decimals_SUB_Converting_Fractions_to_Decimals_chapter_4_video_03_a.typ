#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $2/5$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $0.25$]#only("2-")[#text(fill:red)[a) $0.25$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) $0.4$]#only("3-")[#text(fill:green)[b) $0.4$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $0.5$]#only("4-")[#text(fill:red)[c) $0.5$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $0.2$]#only("5-")[#text(fill:red)[d) $0.2$]]
#v(40pt)

#only("1")[#voiceover("Leider nicht korrekt. Schauen wir uns die Optionen an und verstehen, warum die richtige Antwort b) 0.4 ist.")]
#only("2")[#voiceover("Option a) 0.25 ist falsch. Wenn du $2$ durch $5$ teilst, erhältst du nicht $0.25$.")]
#only("3")[#voiceover("Option b) 0.4 ist korrekt. Wenn du $2$ durch $5$ teilst, erhältst du $0.4$.")]
#only("4")[#voiceover("Option c) 0.5 ist falsch. $0.5$ entspricht einem Halb, was nicht gleich zwei Fünftel ist.")]
#only("5")[#voiceover("Option d) 0.2 ist falsch. $0.2$ entspricht einem Fünftel, was nicht gleich zwei Fünftel ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Teile den Zähler durch den Nenner. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Schreibe das Ergebnis auf. ✍️]
#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Brüchen in Dezimalzahlen durchgehen. Zuerst teilst du den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Als nächstes schreibst du das Ergebnis als Dezimalzahl auf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $2/5$ in eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: ➗ Teile $2$ durch $5$. $arrow 2 ÷ 5 = 0.4$]
#v(20pt)
#only("2-")[- Schritt 2: ✍️ Schreibe das Ergebnis auf: $0.4$.]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf den Bruch zwei Fünftel anwenden. Zuerst teilen wir den Zähler, der zwei ist, durch den Nenner, der fünf ist. Zwei geteilt durch fünf ergibt null Komma vier.")
]
#only("2")[
#voiceover("Als nächstes schreiben wir das Ergebnis auf, das null Komma vier ist. Und das war's, wir sind fertig! Die Lösung ist null Komma vier.")
]
]