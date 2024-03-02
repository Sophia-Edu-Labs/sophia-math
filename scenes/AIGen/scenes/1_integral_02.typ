#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]


#slide()[

#only("1")[
  #voiceover("Bestimmen wir das Integral")
]
Integral berechnen
#v(40pt)
#only("2-")[#text()[$ f(x) = 2x e^(x^2) + 4x $]]
#only("2")[
  #voiceover("der Funktion f von x gleich zwei x mal e hoch x Quadrat plus vier x.")
]
]

#slide()[
#only("1")[
  #voiceover("Zum Finden einer Stammfunktion nutzen wir die Substitutionsmethode für den ersten Term ")
]
#only("2")[
  #voiceover("und die Potenzregel für den zweiten Term. Legen wir los...")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Substitutionsmethode]
    #only("2-")[- Potenzregel der Integration]
]

#slide(max-repetitions: 20)[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 2x e^(x^2) + 4x$]
#only("1")[#voiceover("Wir starten mit der Funktion f von x, die zwei x Mal e hoch x Quadrat plus vier x ist.")]
#v(10pt)
#only("2")[#voiceover("Um die Stammfunktion des ersten Terms zu finden, wenden wir die Substitutionsmethode an. Der zweite Term kann direkt integriert werden.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Substitution]]]
#only("3")[#voiceover("Für den Teil zwei x mal e hoch x Quadrat führen wir eine Substitution durch. Wir setzen u gleich x Quadrat, wodurch d u durch d x gleich zwei x wird.")]
#v(10pt)
#only("4-")[$integral 2x e^(x^2) dif x = integral e^u dif u$]
#only("4")[#voiceover("Daher wird das Integral von zwei x mal e hoch x Quadrat zu dem Integral von e hoch u bezüglich u.")]
#v(10pt)
#only("5-")[#align(center)[#text(fill:aqua)[⇓ Integration]]]
#only("5")[#voiceover("Das Integral von e hoch u bezüglich u ist einfach e hoch u plus eine Konstante.")]
#v(10pt)
#only("6-")[$integral e^u dif u = e^u + C$]
#only("6")[#voiceover("Nach der Rücksubstitution von u mit x Quadrat erhalten wir die Stammfunktion des ersten Terms als e hoch x Quadrat plus eine Konstante.")]
#v(10pt)
#only("7-")[$ \ e^(x^2) + C_1$]
#v(10pt)
#only("8-")[#align(center)[#text(fill:aqua)[⇓ Zweiter Term]]]
#only("8")[#voiceover("Nun integrieren wir den zweiten Term vier x mittels der Potenzregel.")]
#v(10pt)
#only("9-")[$integral 4x dif x = 2x^2 + C_2$]
#only("9")[#voiceover("Die Integration von vier x ergibt zwei x Quadrat plus eine Konstante.")]
#v(10pt)
#only("10-")[#align(center)[#text(fill:aqua)[⇓ Zusammenfassung]]]
#only("10")[#voiceover("Zusammenfassend, erhalten wir die Stammfunktion der gegebenen Funktion.")]
#v(10pt)
#only("11-")[$F(x) =e^(x^2) + 2x^2 + C$]
#only("11")[#voiceover("Diese lautet e hoch x Quadrat plus zwei x Quadrat plus eine allgemeine Konstante C.")]
]