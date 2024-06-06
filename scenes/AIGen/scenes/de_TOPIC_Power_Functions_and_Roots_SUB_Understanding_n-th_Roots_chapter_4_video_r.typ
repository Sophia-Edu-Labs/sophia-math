#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns kurz wiederholen, wie man n-te Wurzeln rationalisiert. 🌟")
]
#text(size: 30pt, weight: "bold")[Rationalisierung n-ter Wurzeln]
// Der Titel "Rationalisierung n-ter Wurzeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
- Zähler und Nenner mit einem geeigneten Wert multiplizieren
]
// Der Aufzählungspunkt wird ab Folie 2 angezeigt
#only("2")[
#voiceover("Der Schlüssel ist, sowohl den Zähler als auch den Nenner mit einem geeigneten Wert zu multiplizieren.")
]
]

#slide()[
#only("1")[
#voiceover("Betrachte den Ausdruck 1 über der Kubikwurzel von 2.")
]
#text(size: 30pt, weight: "bold")[Beispiel]
// Der Titel "Beispiel" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
$ 1/root(3,2) $
]
// Der Ausdruck 1/∛2 wird ab Folie 1 angezeigt
#only("2")[
#voiceover("Um dies zu rationalisieren, multiplizieren wir sowohl den Zähler als auch den Nenner mit der Kubikwurzel von 4.")
]
#only("2-")[
$ = 1/root(3,2) dot root(3,4)/root(3,4) $
]
// Der Rationalisierungsschritt wird ab Folie 2 angezeigt
#only("3")[
#voiceover("Dies vereinfacht sich zur Kubikwurzel von 4 über 2.")
]
#only("3-")[
$ = root(3,4)/2 $
]
// Das vereinfachte Ergebnis wird ab Folie 3 angezeigt
]

#slide()[
#only("1")[
#voiceover("Im Allgemeinen multiplizieren wir, um 1 über der n-ten Wurzel von a zu rationalisieren, mit der n-ten Wurzel von a hoch n minus 1.")
]
#text(size: 30pt, weight: "bold")[Allgemeine Regel]
// Der Titel "Allgemeine Regel" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
$ 1/root(n,a) = 1/root(n,a) dot root(n,a^(n-1))/root(n,a^(n-1)) = root(n,a^(n-1))/a $
]
// Die allgemeine Regel wird ab Folie 1 angezeigt
]

#slide()[
#only("1")[
#voiceover("Zusammenfassend: Die Rationalisierung n-ter Wurzeln beinhaltet das Multiplizieren mit einem geeigneten Wert, um die Wurzel im Nenner zu eliminieren. 🎯")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung]
// Der Titel "Zusammenfassung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
- Zähler und Nenner mit $root(n,a^(n-1))$ multiplizieren 📐
- Das Ergebnis vereinfachen 🧮
]
// Die Zusammenfassungs-Aufzählungspunkte werden ab Folie 1 angezeigt
]