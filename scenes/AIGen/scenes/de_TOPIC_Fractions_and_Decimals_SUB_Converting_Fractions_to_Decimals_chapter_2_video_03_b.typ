#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $625/1000$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) $0.0625$]#only("2-")[#text(fill:green)[a) $0.0625$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) $0.625$]#only("3-")[#text(fill:red)[b) $0.625$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) $6.25$]#only("4-")[#text(fill:red)[c) $6.25$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) $62.5$]#only("5-")[#text(fill:red)[d) $62.5$]]
#v(40pt)

#only("1")[#voiceover("Das ist korrekt, gut gemacht! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort a) 0.0625 ist.")]
#only("2")[#voiceover("Option a) 0.0625 ist korrekt. Wenn du 625 durch 1000 teilst, erhältst du 0.0625.")]
#only("3")[#voiceover("Option b) 0.625 ist falsch. 0.625 erhält man, indem man 625 durch 1000 teilt, aber mit einer Null weniger. Daher ist es nicht die richtige Antwort.")]
#only("4")[#voiceover("Option c) 6.25 ist falsch. 6.25 ist viel größer als 0.0625.")]
#only("5")[#voiceover("Option d) 62.5 ist falsch. 62.5 ist sogar größer als 6.25 und viel größer als 0.0625.")]
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
#text(size: 30pt, weight: "bold")[Beispiel: $625/1000$ in eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: Der Nenner ist $1000$.]
#v(20pt)
#only("2-")[- Schritt 2: Der Zähler ist $625$.]
#v(20pt)
#only("3-")[- Schritt 3: Einen Dezimalpunkt vor die letzten drei Ziffern setzen: $0.625$.]
#only("1")[
#voiceover("Nun lass uns diese Schritte auf den Bruch sechshundertfünfundzwanzig durch eintausend anwenden. Zuerst stellen wir fest, dass der Nenner eintausend ist.")
]
#only("2")[
#voiceover("Als nächstes schreiben wir den Zähler, der sechshundertfünfundzwanzig ist, als normale Zahl.")
]
#only("3")[
#voiceover("Schließlich setzen wir einen Dezimalpunkt vor die letzten drei Ziffern des Zählers, was uns null Komma sechs zwei fünf ergibt. Und das ist die richtige Antwort!")
]
]