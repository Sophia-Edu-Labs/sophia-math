#import "../sophiatheme.typ": *

//apply theme (and default setup) ⚀⚁⚂⚃⚄⚅
#show: sophia-theme

#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]

#v(30pt)

#only("1-")[#text(size: 30pt, weight: "bold")[Zaubertasse]:
]
#v(10pt)
#only("2-")[
- 1, 2, 3, 4 oder 5 €
]
#only("3-")[
- gleiche Wahrscheinlichkeiten]

#v(20pt)

#only("4-")[Was ist der #text(weight: "bold")[Erwartungswert] des erhaltenen Betrags?]

#only("1")[
#voiceover("Hier eine interessante Aufgabe zur Berechnung des Erwartungswerts:")
]
#only("2")[
#voiceover("Ein Mathematiker behauptet, eine Zaubertasse zu besitzen, die bei jeder Nutzung zufällig entweder 1, 2, 3, 4 oder 5 Eurostücke erscheinen lässt,") 
]
#only("3")[
#voiceover("mit gleichen Wahrscheinlichkeiten für jede Menge.") 
]

#only("4")[
#voiceover("Wie hoch ist der Erwartungswert des Geldbetrags, den du bei einem Gebrauch der Tasse erhalten würdest?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]

#v(40pt)

#only("1-")[
- Definiere Zufallsvariable $X$]
#only("2-")[
- Wahrscheinlichkeitsverteilung]

#v(20pt)

#only("3-")[- Berechne den Erwartungswert $E(X)$ mit der Formel:

$ E(X) = sum_(i=1)^n x_i dot p_i $

- $x_i$ sind mögliche Werte von $X$, $p_i$ die Wahrscheinlichkeiten]

#v(20pt)


#only("1")[
#voiceover("Um diese Aufgabe zu lösen, gehe schrittweise vor: Definiere zunächst eine Zufallsvariable X für die Anzahl der Eurostücke")
]
#only("2")[
#voiceover("und stelle die Wahrscheinlichkeitsverteilung auf.")
]

#only("3")[
#voiceover("Berechne dann den Erwartungswert E von X mit der Formel: E von X ist gleich der Summe von i gleich 1 bis n von x_i mal p_i, wobei x_i die möglichen Werte von X und p_i die zugehörigen Wahrscheinlichkeiten sind.")  
]

]

#questionDef(  
questionText: "Was ist der Erwartungswert $E(X)$ der Anzahl der Eurostücke bei einem Gebrauch der Zaubertasse?", 
answerOptions: ("$1$", "$3$", "$5$"),
correctAnswerIndex: 1,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none  
)
),
answerOptionMatcher:("$\\\\key{a}$")
),
)