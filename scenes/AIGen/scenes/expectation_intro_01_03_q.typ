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

#only("2-")[Bei einem Würfelspiel gilt:]

#v(10pt)

#only("3-")[- ⚀ oder ⚅: Hauptgewinn (60€)]

#only("4-")[- ⚁⚂⚃: Niete (0€)]  

#only("5-")[- ⚄: Kleiner Gewinn (30€)]

#v(20pt)

#only("6-")[Was ist der Erwartungswert des Gewinns bei diesem Spiel?]

#only("1")[
#voiceover("Hier eine Aufgabe zum Erwartungswert bei einem Würfelspiel:")
]

#only("2")[
#voiceover("Bei diesem Spiel gelten folgende Regeln:")
]

#only("3")[
#voiceover("Bei einer 1 oder einer 6 erhält man den Hauptgewinn von 60 Euro.")
]

#only("4")[
#voiceover("Bei einer 2, 3 oder 4 geht man leer aus, das ist eine Niete mit 0 Euro.")
]

#only("5")[
#voiceover("Und bei einer 5 erhält man einen kleineren Gewinn von 30 Euro.")
]

#only("6")[
#voiceover("Was ist der Erwartungswert des Gewinns bei diesem Würfelspiel?")
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

#only("3-")[- Beachte: $P(X = x_i) = 1/6$]

#v(20pt)  

#only("4-")[- Berechne den Erwartungswert $E(X)$ mit der Formel:

$ E(X) = sum_(i=1)^n x_i dot p_i $

- $x_i$ sind mögliche Werte von $X$, $p_i$ die Wahrscheinlichkeiten]

#only("1")[
#voiceover("Um diese Aufgabe zu lösen, gehe schrittweise vor: Definiere zunächst eine Zufallsvariable X für den Gewinn")
]
#only("2")[
#voiceover("und stelle die Wahrscheinlichkeitsverteilung auf.")
]

#only("3")[
#voiceover("Beachte dabei: Bei einem fairen Würfel ist jede Augenzahl gleich wahrscheinlich, die Wahrscheinlichkeit für jeden möglichen Wert x_i ist also ein Sechstel.")
]  

#only("4")[
#voiceover("Berechne dann den Erwartungswert E von X mit der bekannten Formel: E von X ist gleich der Summe von i gleich 1 bis n von x_i mal p_i, wobei x_i die möglichen Werte von X und p_i die zugehörigen Wahrscheinlichkeiten sind.")
]
]



#questionDef(  
questionText: "Was ist der Erwartungswert $E(X)$ des Gewinns bei diesem Würfelspiel?", 
answerOptions: ("$10€$", "$15€$", "$20€$"),
correctAnswerIndex: 2,
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