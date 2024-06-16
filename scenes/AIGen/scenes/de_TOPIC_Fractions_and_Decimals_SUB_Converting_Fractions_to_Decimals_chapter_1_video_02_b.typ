#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $25/100$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $2.5$]#only("2-")[#text(fill:red)[a) $2.5$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) $0.25$]#only("3-")[#text(fill:green)[b) $0.25$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $25.0$]#only("4-")[#text(fill:red)[c) $25.0$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $0.025$]#only("5-")[#text(fill:red)[d) $0.025$]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, gut gemacht! Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort b) 0.25 ist.")]
#only("2")[#voiceover("Option a) 2.5 ist falsch. 2.5 ist viel größer als 0.25.")]
#only("3")[#voiceover("Option b) 0.25 ist korrekt. Wenn du 25 durch 100 teilst, erhältst du 0.25.")]
#only("4")[#voiceover("Option c) 25.0 ist falsch. 25.0 ist die ganze Zahl fünfundzwanzig, die viel größer als 0.25 ist.")]
#only("5")[#voiceover("Option d) 0.025 ist falsch. 0.025 sind fünfundzwanzig Tausendstel, was viel kleiner als 0.25 ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("2-")[- Schritt 1: Den Nenner identifizieren. 🧮]
#v(20pt)
#only("3-")[- Schritt 2: Den Zähler als Zahl schreiben. ✍️]
#v(20pt)
#only("4-")[- Schritt 3: Den Zähler durch den Nenner teilen. ➗]

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
#voiceover("Schließlich teilen wir den Zähler durch den Nenner.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $25/100$ in eine Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- Schritt 1: Der Nenner ist $100$.]
#v(20pt)
#only("2-")[- Schritt 2: Der Zähler ist $25$.]
#v(20pt)
#only("3-")[- Schritt 3: Teile $25$ durch $100$: $0.25$.]
#only("1")[
#voiceover("Nun lass uns diese Schritte auf den Bruch fünfundzwanzig Hundertstel anwenden. Zuerst stellen wir fest, dass der Nenner hundert ist.")
]
#only("2")[
#voiceover("Als nächstes schreiben wir den Zähler, der fünfundzwanzig ist, als normale Zahl.")
]
#only("3")[
#voiceover("Schließlich teilen wir fünfundzwanzig durch hundert, was uns null Komma zwei fünf ergibt. Und das ist die richtige Antwort!")
]
]