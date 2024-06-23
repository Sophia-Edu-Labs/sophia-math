#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $3/10$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt zwei bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $0.3$]#only("2-")[#text(fill:green)[a) $0.3$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt drei bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $3.0$]#only("3-")[#text(fill:red)[b) $3.0$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt vier bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $0.03$]#only("4-")[#text(fill:red)[c) $0.03$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt fünf bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $30$]#only("5-")[#text(fill:red)[d) $30$]]
#v(40pt)

#only("1")[#voiceover("Leider nicht korrekt. Lass uns das Video ansehen, um zu verstehen, warum die richtige Antwort a) 0.3 ist.")]
#only("2")[#voiceover("Option a) 0.3 ist korrekt. Wenn du 3 durch 10 teilst, erhältst du 0.3.")]
#only("3")[#voiceover("Option b) 3.0 ist falsch. 3.0 ist die ganze Zahl drei, die viel größer als 0.3 ist.")]
#only("4")[#voiceover("Option c) 0.03 ist falsch. 0.03 sind drei Hundertstel, was viel kleiner als 0.3 ist.")]
#only("5")[#voiceover("Option d) 30 ist falsch. 30 ist dreißig, was viel größer als 0.3 ist.")]
]



#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Umwandlung]
#v(40pt)
#only("2-")[- Schritt 1: Den Nenner identifizieren. 🧮]
#v(20pt)
#only("3-")[- Schritt 2: Den Zähler als Zahl schreiben. ✍️]
#v(20pt)
#only("4-")[- Schritt 3: Ein Dezimalpunkt vor die letzte Ziffer setzen. ➕]

#only("1")[
#voiceover("Bevor wir die Übung lösen, lass uns schnell die Schritte zur Umwandlung von Brüchen in Dezimalzahlen durchgehen.")
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
#text(size: 30pt, weight: "bold")[Beispiel: $3/10$ in eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: Der Nenner ist $10$.]
#v(20pt)
#only("2-")[- Schritt 2: Der Zähler ist $3$.]
#v(20pt)
#only("3-")[- Schritt 3: Setze einen Dezimalpunkt vor die letzte Ziffer: $0.3$.]
#only("1")[
#voiceover("Nun lass uns diese Schritte auf den Bruch drei Zehntel anwenden. Zuerst stellen wir fest, dass der Nenner zehn ist.")
]
#only("2")[
#voiceover("Als nächstes schreiben wir den Zähler, der drei ist, als normale Zahl.")
]
#only("3")[
#voiceover("Schließlich setzen wir einen Dezimalpunkt vor die letzte Ziffer des Zählers, was uns null Komma drei ergibt. Und das ist die richtige Antwort!")
]
]