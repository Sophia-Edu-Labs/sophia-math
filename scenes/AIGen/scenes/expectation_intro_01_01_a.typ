#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Losspiel]

#v(40pt)

#only("1-")[
- Niete (0€): 50%
- Trostpreis (5 €): 40% 
- Gewinn (20 Euro): 10%
]

#only("1")[
#voiceover("Super, das ist richtig. Zunächst enhmen wir die Wahrscheinlichkeiten und definieren auf dieser Grundlage die Zufallsvariable X.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Zufallsvariable]

#v(40pt)

#only("1-")[Sei $X$ die Zufallsvariable für den Gewinn in Euro.]

#v(20pt)

#only("2-")[#text(weight: "bold")[Wahrscheinlichkeitsverteilung:]

$P(X=0) = 0.5$

$P(X=5) = 0.4$ 

$P(X=20) = 0.1$]

#only("1")[
#voiceover("Im ersten Schritt definieren wir die Zufallsvariable X, die den Gewinn in Euro beschreibt.")
]

#only("2")[
#voiceover("X kann die Werte 0, 5 und 20 annehmen, entsprechend den möglichen Gewinnen. Die zugehörigen Wahrscheinlichkeiten sind 0.5 für 0 Euro, also die Niete, 0.4 für 5 Euro, den Trostpreis, und 0.1 für 20 Euro, den Hauptgewinn.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Erwartungswert]

#v(40pt)

#only("1-")[#text(weight: "bold")[Definition:]

$ E(X) = sum_(i=1)^n x_i dot p_i $
]
#v(20pt)

#only("2-")[#text(weight: "bold")[Einsetzen ergibt:]

$E(X) = 0 dot 0.5 + 5 dot 0.4 + 20 dot 0.1$]

#only("3-")[$= 0 + 2 + 2$]

#only("4-")[$= 4$]

#only("1")[
#voiceover("Im zweiten Schritt berechnen wir den Erwartungswert nach der Definition als Summe der Produkte der möglichen Werte mit ihren Wahrscheinlichkeiten.")
]

#only("2")[
#voiceover("Einsetzen der Werte und Wahrscheinlichkeiten ergibt: 0 mal 0.5 plus 5 mal 0.4 plus 20 mal 0.1")
]  

#only("3")[
#voiceover("Das ist gleich 0 plus 2 plus 2, was insgesamt 4 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Interpretation]

#v(40pt)

#only("1-")[Der Erwartungswert des Gewinns bei diesem Gratis-Los ist 4 Euro.]

#v(20pt)

#only("2-")[Das bedeutet: Wenn man dieses Spiel sehr oft wiederholen würde, wäre der durchschnittliche Gewinn pro Spiel 4 Euro.]

#only("1")[
#voiceover("Die Berechnung hat gezeigt, dass der Erwartungswert des Gewinns bei diesem Gratis-Los 4 Euro beträgt. Das bedeutet: Wenn man dieses Spiel sehr oft wiederholen würde, wäre der durchschnittliche Gewinn pro Spiel 4 Euro.")
]
]