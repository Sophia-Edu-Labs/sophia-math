#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Auswirkung eines negativen Koeffizienten auf Potenzfunktionen]
#v(40pt)

#only("1-")[Betrachte die Potenzfunktion: $f(x) = a x^b$]
#v(20pt)

#only("2-")[Welche Auswirkung hat ein #text(fill: red)[negativer Koeffizient $a$] auf den Graphen?]
#v(20pt)

#only("3-")[a) Spiegelung an der y-Achse]
#v(10pt)
#only("4-")[b) Spiegelung an der x-Achse]
#v(10pt)
#only("5-")[c) Verschiebung nach oben]
#v(10pt)
#only("6-")[d) Verschiebung nach unten]

#only("1")[#voiceover("Lass uns die Wirkung von Koeffizienten auf Potenzfunktionen untersuchen. Betrachte die allgemeine Form einer Potenzfunktion: f von x gleich a mal x hoch b.")]

#only("2")[#voiceover("Unsere Frage heute ist: Welche Auswirkung hat ein negativer Koeffizient a auf den Graphen dieser Funktion?")]

#only("3")[#voiceover("Ist es Option A: Der Graph spiegelt sich an der y-Achse?")]

#only("4")[#voiceover("Oder Option B: Der Graph spiegelt sich an der x-Achse?")]

#only("5")[#voiceover("Vielleicht Option C: Der Graph verschiebt sich nach oben?")]

#only("6")[#voiceover("Oder schließlich Option D: Der Graph verschiebt sich nach unten?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche Auswirkung hat ein negativer Koeffizient $a$ auf den Graphen der Potenzfunktion $f(x) = ax^b$?", 
answerOptions: ("$\\text{Spiegelt sich an der y-Achse}$", "$\\text{Spiegelt sich an der x-Achse}$", "$\\text{Verschiebt sich nach oben}$", "$\\text{Verschiebt sich nach unten}$"),
correctAnswerIndex: 1 
)