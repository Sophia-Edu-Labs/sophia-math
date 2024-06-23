#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
Was ist $3/8$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $0.375$]#only("2-")[#text(fill:green)[a) $0.375$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $0.38$]#only("3-")[#text(fill:red)[b) $0.38$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $0.35$]#only("4-")[#text(fill:red)[c) $0.35$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $0.3$]#only("5-")[#text(fill:red)[d) $0.3$]]
#v(40pt)

#only("1")[#voiceover("Großartig! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort a) 0,375 ist.")]
#only("2")[#voiceover("Option a) 0,375 ist korrekt. Wenn Du 3 durch 8 teilst, erhältst Du 0,375.")]
#only("3")[#voiceover("Option b) 0,38 ist falsch. 0,38 ist etwas größer als 0,375.")]
#only("4")[#voiceover("Option c) 0,35 ist falsch. 0,35 ist kleiner als 0,375.")]
#only("5")[#voiceover("Option d) 0,3 ist falsch. 0,3 ist viel kleiner als 0,375.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Teile den Zähler durch den Nenner. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Schreibe den Quotienten auf. ✍️]
#only("1")[
#voiceover("Bevor wir die Aufgabe lösen, lass uns schnell die Schritte zur Umwandlung von Brüchen in Dezimalzahlen durchgehen. Zuerst teilst Du den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Als Nächstes schreibst Du den Quotienten als Dezimaldarstellung des Bruchs auf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $3/8$ in eine Dezimalzahl]
#v(40pt)
#only("1-")[- Schritt 1: ➗ Teile $3$ durch $8$. $arrow 3 ÷ 8 = 0.375$.]
#v(20pt)
#only("2-")[- Schritt 2: ✍️ Schreibe den Quotienten auf: $0.375$.]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf den Bruch drei Achtel anwenden. Zuerst teilen wir drei durch acht, was null Komma drei sieben fünf ergibt.")
]
#only("2")[
#voiceover("Als Nächstes schreiben wir den Quotienten auf, der null Komma drei sieben fünf ist. Und das ist die richtige Antwort! Der Bruch drei Achtel entspricht null Komma drei sieben fünf als Dezimalzahl.")
]
]