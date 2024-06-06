#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns die Hauptpunkte über Integrale von Potenzfunktionen zusammenfassen.")
]
#text(size: 30pt, weight: "bold")[Integrale von Potenzfunktionen 📜]
// Der Titel "Integrale von Potenzfunktionen" mit einem Schriftrollen-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Das Integral einer Potenzfunktion f von x gleich x hoch n ist gleich x hoch n plus 1 geteilt durch n plus 1, plus eine Konstante C.")
]
#only("2-")[
$ integral x^n dif x = (x^(n+1))/(n+1) + C$
// Die Integralformel wird ab Folie 2 angezeigt
]

#only("3")[
#voiceover("Diese Formel gilt für alle Werte von n außer minus 1. Wenn n gleich minus 1 ist, haben wir einen Sonderfall, der zum natürlichen Logarithmus führt.")
]
#only("3-")[
für $n != -1$ ❗
// Die Bedingung für n wird ab Folie 3 angezeigt
]

#only("4")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte das Integral von x Quadrat. Mit unserer Formel erhöhen wir den Exponenten um 1, also erhalten wir x hoch 3, und teilen dann durch den neuen Exponenten, der 3 ist. Das Integral von x Quadrat ist also ein Drittel x hoch 3 plus C.")
]
#only("4-")[
Beispiel: $integral x^2 dif x = (x^3)/3 + C$
// Ein Beispiel für die Integration von x^2 wird ab Folie 4 angezeigt
]

#only("5")[
#voiceover("Denke daran, immer die Integrationskonstante C einzubeziehen, da es unendlich viele Stammfunktionen gibt, die sich um eine Konstante unterscheiden.")
]
#only("5-")[
Vergiss nicht die Konstante C! 🧮
// Eine Erinnerung an die Integrationskonstante wird ab Folie 5 angezeigt
]
]

#slide()[
#only("1")[
#voiceover("Das sind die wichtigsten Punkte zu Integralen von Potenzfunktionen. Denke an die Formel, achte auf den Fall, wenn n gleich minus 1 ist, und vergiss nie die Integrationskonstante. Viel Spaß beim Rechnen!")
]
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
// Der Titel "Wichtige Erkenntnisse" mit einem Schlüssel-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
- Formel: $integral x^n dif x = (x^(n+1))/(n+1) + C$
- Ausnahme: $n != -1$
- Immer die Konstante C einbeziehen
]
// Die wichtigsten Erkenntnisse werden auf dieser Folie aufgelistet
]