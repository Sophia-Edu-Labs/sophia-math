#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ausdrücke vereinfachen]
#v(40pt)
#only("1-")[
Vereinfache den folgenden Ausdruck:
]
#v(20pt)
#only("2-")[
$5 3^(1/3) - 2 3^(1/3)$
]

#only("1")[
#voiceover("Lass uns das Vereinfachen von Ausdrücken mit rationalen Exponenten üben.")
]
#only("2")[
#voiceover("Vereinfache den Ausdruck 5 mal die Kubikwurzel von 3 minus 2 mal die Kubikwurzel von 3.")
]
]#questionDef(
questionText: "Was ist die vereinfachte Form des Ausdrucks $5 \cdot 3^{1/3} - 2 \cdot 3^{1/3}$?",
answerOptions: ("$3\cdot3^{1/3}$", "$3\cdot3^{2/3}$"),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)