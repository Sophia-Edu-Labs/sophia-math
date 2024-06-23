#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $9/10$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $0.9$]#only("2-")[#text(fill:green)[a) $0.9$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $9.0$]#only("3-")[#text(fill:red)[b) $9.0$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $0.09$]#only("4-")[#text(fill:red)[c) $0.09$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $90$]#only("5-")[#text(fill:red)[d) $90$]]
#v(40pt)

#only("1")[#voiceover("Gut gemacht! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort a) 0.9 ist.")]
#only("2")[#voiceover("Option a) 0.9 ist korrekt. Wenn du 9 durch 10 teilst, erhältst du 0.9.")]
#only("3")[#voiceover("Option b) 9.0 ist falsch. 9.0 ist die ganze Zahl neun, die viel größer als 0.9 ist.")]
#only("4")[#voiceover("Option c) 0.09 ist falsch. 0.09 sind neun Hundertstel, was viel kleiner als 0.9 ist.")]
#only("5")[#voiceover("Option d) 90 ist falsch. 90 ist neunzig, was viel größer als 0.9 ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("2-")[- Schritt 1: Den Nenner identifizieren. 🧮]
#v(20pt)
#only("3-")[- Schritt 2: Den Zähler als Zahl schreiben. ✍️]
#v(20pt)
#only("4-")[- Schritt 3: Ein Dezimalpunkt vor die letzte Ziffer setzen. ➕]

#only("1")[
#voiceover("Bevor wir die Aufgabe lösen, lass uns schnell die Schritte zur Umwandlung von Brüchen in Dezimalzahlen durchgehen.")
]
#only("2")[
#voiceover("Zuerst identifizieren wir den Nenner des Bruchs.")
]
#only("3")[
#voiceover("Als nächstes schreiben wir den Zähler als Zahl.")
]
#only("4")[
#voiceover("Schließlich setzen wir einen Dezimalpunkt vor die letzte Ziffer des Zählers.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $9/10$ in eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: Der Nenner ist $10$.]
#v(20pt)
#only("2-")[- Schritt 2: Der Zähler ist $9$.]
#v(20pt)
#only("3-")[- Schritt 3: Ein Dezimalpunkt vor die letzte Ziffer setzen: $0.9$.]
#only("1")[
#voiceover("Nun lass uns diese Schritte auf den Bruch neun Zehntel anwenden. Zuerst stellen wir fest, dass der Nenner zehn ist.")
]
#only("2")[
#voiceover("Als nächstes schreiben wir den Zähler, der neun ist, als normale Zahl.")
]
#only("3")[
#voiceover("Schließlich setzen wir einen Dezimalpunkt vor die letzte Ziffer des Zählers, was uns null Komma neun ergibt. Und das ist die richtige Antwort!")
]
]