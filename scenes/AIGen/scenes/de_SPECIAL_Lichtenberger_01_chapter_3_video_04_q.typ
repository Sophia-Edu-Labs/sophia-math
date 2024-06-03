#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stahlschiffe 🚢]
#v(40pt)
#only("1-")[- Die meisten Schiffe bestehen aus Stahl (Dichte = $7.8 g/"cm"^3$)]
#v(20pt)
#only("2-")[- Eine Stahlschraube sinkt im Wasser 🔩⬇]
#v(20pt)
#only("3-")[Warum schwimmen Stahlschiffe? 🤔]
#only("1")[
#voiceover("Die meisten Schiffe bestehen aus Stahl, der eine Dichte von 7,8 Gramm pro Kubikzentimeter hat.")
]
#only("2")[
#voiceover("Eine Schraube aus Stahl sinkt sofort im Wasser.")
]
#only("3")[
#voiceover("Warum schwimmen Stahlschiffe also?")
]
]


#questionDef(
questionText: "Warum schwimmen Stahlschiffe, obwohl eine Stahlschraube im Wasser sinkt?",
answerOptions: ("Stahlschiffe schwimmen, weil ihre Form es ihnen ermöglicht, genug Wasser zu verdrängen, um eine Auftriebskraft zu erzeugen, die ihr Gewicht trägt.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)