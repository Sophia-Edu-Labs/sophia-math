#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $5/8$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $0.625$]#only("2-")[#text(fill:green)[a) $0.625$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $0.62$]#only("3-")[#text(fill:red)[b) $0.62$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $0.65$]#only("4-")[#text(fill:red)[c) $0.65$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $0.6$]#only("5-")[#text(fill:red)[d) $0.6$]]
#v(40pt)

#only("1")[#voiceover("Nicht ganz richtig. Lass uns die Optionen durchgehen, um zu sehen, warum die richtige Antwort a) 0.625 ist.")]
#only("2")[#voiceover("Option a) 0.625 ist korrekt. Wenn du $5$ durch $8$ teilst, erhältst du $0.625$.")]
#only("3")[#voiceover("Option b) 0.62 ist falsch. $0.62$ ist nah dran, aber nicht genau genug. Die richtige Dezimalzahl ist $0.625$.")]
#only("4")[#voiceover("Option c) 0.65 ist falsch. $0.65$ ist größer als $0.625$.")]
#only("5")[#voiceover("Option d) 0.6 ist falsch. $0.6$ ist kleiner als $0.625$.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Teile den Zähler durch den Nenner. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Führe die Division durch, um die Dezimalzahl zu erhalten. 🧮]
#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Brüchen in Dezimalzahlen durchgehen. Zuerst teilst du den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Als nächstes führst du die Division durch, um den Dezimalwert zu erhalten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $5/8$ in eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: Teile $5$ durch $8$. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Führe die Division durch: $5 ÷ 8 = 0.625$. 🧮]
#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf den Bruch fünf Achtel an. Zuerst teilen wir fünf durch acht.")
]
#only("2")[
#voiceover("Als nächstes führen wir die Division durch. Wenn du fünf durch acht teilst, erhältst du null Komma sechs zwei fünf. Und das ist die richtige Antwort!")
]
]