#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe: Wendepunkte bestimmen]
#v(40pt)

#only("1-")[$ f(x) = x^4 - 6x^2 + 1 $]

#only("1")[
#voiceover("Gegeben ist die Funktion f von x gleich x hoch vier minus sechs x Quadrat plus eins. Berechne alle Wendepunkte dieser Funktion.")
]
]

#questionDef(
questionText: "An welchen Stellen hat die Funktion $f(x) = x^4 - 6x^2 + 1$ Wendepunkte?", 
answerOptions: ("$x = -1$ und $x = 1$ oder eine äquivalente Aussage", "$Die Aussage ist falsch.$"),
correctAnswerIndex: 0,
llmCheckDetails: (
  fallbackOptionIndex: 1
),
)