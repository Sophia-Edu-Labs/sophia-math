#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
Was ist $75/100$ als Dezimalzahl?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $0.075$]#only("2-")[#text(fill:red)[a) $0.075$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $7.5$]#only("3-")[#text(fill:red)[b) $7.5$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) $0.75$]#only("4-")[#text(fill:green)[c) $0.75$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $75.0$]#only("5-")[#text(fill:red)[d) $75.0$]]
#v(40pt)

#only("1")[#voiceover("Leider nicht ganz richtig. Lass uns das Video ansehen, um die richtige Antwort c) null Komma sieben fünf zu verstehen.")]
#only("2")[#voiceover("Option a) null Komma null sieben fünf ist falsch. Wenn Du fünfundsiebzig durch hundert teilst, erhältst Du null Komma sieben fünf, nicht null Komma null sieben fünf.")]
#only("3")[#voiceover("Option b) sieben Komma fünf ist falsch. Fünfundsiebzig geteilt durch hundert ist viel kleiner als sieben Komma fünf.")]
#only("4")[#voiceover("Option c) null Komma sieben fünf ist korrekt. Wenn Du fünfundsiebzig durch hundert teilst, erhältst Du null Komma sieben fünf.")]
#only("5")[#voiceover("Option d) fünfundsiebzig Komma null ist falsch. Fünfundsiebzig geteilt durch hundert ist viel kleiner als fünfundsiebzig.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Den Nenner identifizieren. 🧮]
#v(20pt)
#only("2-")[- Schritt 2: Den Zähler als Zahl schreiben. ✍️]
#v(20pt)
#only("3-")[- Schritt 3: Ein Dezimalpunkt vor die letzte Ziffer setzen. ➕]

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
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $75/100$ in eine Dezimalzahl]
#v(40pt)
#only("1-")[- Schritt 1: Der Nenner ist $100$.]
#v(20pt)
#only("2-")[- Schritt 2: Der Zähler ist $75$.]
#v(20pt)
#only("3-")[- Schritt 3: Setze einen Dezimalpunkt vor die letzten beiden Ziffern: $0.75$.]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf den Bruch fünfundsiebzig durch hundert anwenden. Zuerst stellen wir fest, dass der Nenner hundert ist.")
]
#only("2")[
#voiceover("Als nächstes schreiben wir den Zähler, der fünfundsiebzig ist, als normale Zahl.")
]
#only("3")[
#voiceover("Schließlich setzen wir einen Dezimalpunkt vor die letzten beiden Ziffern des Zählers, was uns null Komma sieben fünf ergibt. Und das ist die richtige Antwort!")
]
]