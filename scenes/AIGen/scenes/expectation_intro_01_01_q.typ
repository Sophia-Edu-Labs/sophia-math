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

#only("2-")[Bei einem Losspiel gilt:
#v(10pt)
]
#only("3-")[
- Niete (0€): 60%
]
#only("4-")[
- Trostpreis (10€): 30% 
]
#only("5-")[
- Hauptgewinn (50€): 10%
]
#only("6-")[
Berechne den Erwartungswert des Gewinns bei diesem Losspiel.
]

#only("1")[
#voiceover("Üben wir mal den Erwartungswert:")
]
#only("2")[
#voiceover("Bei einem Losspiel gibt es folgende Gewinnmöglichkeiten:")
]
#only("3")[
#voiceover("Eine Niete mit 0 Euro und einer Wahrscheinlichkeit von 60 Prozent,")
]
#only("4")[
#voiceover("einen Trostpreis von 10 Euro mit einer Wahrscheinlichkeit von 30 Prozent ")
]
#only("5")[
#voiceover("und einen Hauptgewinn von 50 Euro mit einer Wahrscheinlichkeit von 10 Prozent.")
]
#only("6")[
#voiceover("Berechne den Erwartungswert des Gewinns bei diesem Losspiel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]

#v(40pt)

#only("1-")[- Definiere Zufallsvariable $X$ für den Gewinn und stelle die Wahrscheinlichkeitsverteilung auf.]

#v(20pt)

#only("2-")[- Berechne den Erwartungswert $E(X)$ mit der Formel:
$ E(X) = sum_(i=1)^n x_i dot p_i $

- $x_i$ sind mögliche Werte von $X$, $p_i$ die Wahrscheinlichkeiten]

#v(20pt)


#only("1")[
#voiceover("Um diese Aufgabe zu lösen, gehe schrittweise vor: Definiere zunächst eine Zufallsvariable X für den Gewinn und stelle die Wahrscheinlichkeitsverteilung auf.")
]

#only("2")[
#voiceover("Berechne dann den Erwartungswert E von X mit der Formel: E von X ist gleich der Summe von i gleich 1 bis n von x_i mal p_i, wobei x_i die möglichen Werte von X und p_i die zugehörigen Wahrscheinlichkeiten sind.")  
]
]

#questionDef(  
questionText: "Was ist der Erwartungswert $E(X)$ des Gewinns bei diesem Losspiel?",
answerOptions: ("$4€$", "$0€$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,  
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$")
),
)