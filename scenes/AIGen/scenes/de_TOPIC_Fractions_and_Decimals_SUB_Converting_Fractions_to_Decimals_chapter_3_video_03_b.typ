#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $3/4$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $0.34$]#only("2-")[#text(fill:red)[a) $0.34$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $0.43$]#only("3-")[#text(fill:red)[b) $0.43$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) $0.75$]#only("4-")[#text(fill:green)[c) $0.75$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $0.57$]#only("5-")[#text(fill:red)[d) $0.57$]]
#v(40pt)

#only("1")[#voiceover("Leider nicht ganz richtig. Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort c) 0.75 ist.")]
#only("2")[#voiceover("Option a) 0.34 ist falsch. Wenn du 3 durch 4 teilst, erhältst du nicht 0.34.")]
#only("3")[#voiceover("Option b) 0.43 ist falsch. 0.43 ist nicht das Ergebnis von 3 geteilt durch 4.")]
#only("4")[#voiceover("Option c) 0.75 ist korrekt. Wenn du 3 durch 4 teilst, erhältst du 0.75.")]
#only("5")[#voiceover("Option d) 0.57 ist falsch. 0.57 ist nicht das Ergebnis von 3 geteilt durch 4.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Teile den Zähler durch den Nenner. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Schreibe das Ergebnis als Dezimalzahl auf. ✍️]
#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Brüchen in Dezimalzahlen durchgehen. Zuerst teilst du den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Als nächstes schreibst du das Ergebnis als Dezimalzahl auf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $3/4$ in eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: Teile $3$ durch $4$. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Das Ergebnis ist $0.75$. ✍️]
#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf den Bruch drei durch vier an. Zuerst teilen wir drei durch vier.")
]
#only("2")[
#voiceover("Das Ergebnis ist null Komma fünfundsiebzig. Und das war's, wir sind fertig! Die Lösung ist null Komma fünfundsiebzig.")
]
]