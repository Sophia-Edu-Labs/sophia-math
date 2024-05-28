#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Slutsky-Gleichung]

#v(40pt)

#only("1-")[Schreibe die Slutsky-Gleichung für eine Preisänderung des Gutes $X$, wobei:]

#v(20pt)

#only("2-")[- $x_1$ die neue nachgefragte Menge ist]

#v(10pt)

#only("3-")[- $x_0$ die anfängliche nachgefragte Menge ist]

#v(10pt)

#only("4-")[- $x_s$ die nachgefragte Menge aufgrund des Substitutionseffekts ist]

#only("1")[
#voiceover("Schreibe die Slutsky-Gleichung für eine Preisänderung des Gutes X, wobei")
]

#only("2")[
#voiceover("x sub 1 die neue nachgefragte Menge ist,")
]

#only("3")[
#voiceover("x sub 0 die anfängliche nachgefragte Menge ist,")
]

#only("4")[
#voiceover("und x sub s die nachgefragte Menge aufgrund des Substitutionseffekts ist.")
]

]#questionDef(
questionText: "Schreibe die Slutsky-Gleichung für eine Preisänderung des Gutes $X$, wobei $x_1$ die neue nachgefragte Menge ist, $x_0$ die anfängliche nachgefragte Menge ist, und $x_s$ die nachgefragte Menge aufgrund des Substitutionseffekts ist.",
answerOptions: ("Die Slutsky-Gleichung lautet $x_1 - x_0 = (x_s - x_0) + (x_1 - x_s)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)