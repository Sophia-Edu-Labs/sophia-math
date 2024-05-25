#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#only("2-")[#text()[$ f(x) = ln(1+x^2) + x^2 - 5 $]]
#v(60pt)
#only("1")[
#voiceover("Betrachte die Funktion")
]
#only("2")[
#voiceover("f von x gleich Logarithmus von 1 plus x Quadrat plus x Quadrat minus 5.")
]
#only("3")[
#voiceover("Bestimme den Wertebereich dieser Funktion.")
]
]
#questionDef(
questionText: "Bestimme den Wertebereich von $f(x) = ln(1+x^2) + x^2 - 5$.",
answerOptions: ("[-5, ∞) oder eine äquivalente Aussage. Dabei muss nur der Inhalt stimmen, die Schreibweise ist nicht wichtig.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)