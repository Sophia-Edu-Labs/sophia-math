#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]

#v(40pt)
#only("2-")[#text()[$ f(x) = sqrt(|x|) + 1/(x-2) $]]
#v(60pt)
#only("1")[
#voiceover("Betrachte die Funktion")
]
#only("2")[
#voiceover("f von x gleich Wurzel aus Betrag von x plus eins durch x minus 2.")

]
#only("3")[
#voiceover("Bestimme den Wertebereich dieser Funktion.")
]
]
#questionDef(
questionText: "Bestimme den Wertebereich von $f(x) = sqrt(|x|) + 1/(x-2)$.",
answerOptions: ("(-∞, ∞) oder eine äquivalente Aussage. Dabei muss nur der Inhalt stimmen, die Schreibweise ist nicht wichtig.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),

)