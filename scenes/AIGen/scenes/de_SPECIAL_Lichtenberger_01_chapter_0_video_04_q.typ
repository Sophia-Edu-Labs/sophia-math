#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
#voiceover("Betrachte die folgende Situation:")
]

#text(size: 30pt, weight: "bold")[Wasserstand-Rätsel 🌊]
// Der Titel "Wasserstand-Rätsel" wird auf allen Folien angezeigt

#v(40pt)

#only("2-")[
- Ein Holzbrett schwimmt in einem mit Wasser gefüllten Behälter 🌿
- Ein Stein liegt auf dem Brett 🪨
]
// Das Setup wird ab Folie 2 angezeigt

#v(40pt)

#only("3-")[Der Stein rutscht vom Brett und sinkt auf den Boden des Behälters 🌊]
// Das Ereignis wird ab Folie 3 beschrieben

#v(40pt)

#only("4-")[Was passiert mit dem Wasserstand? 🤔]
// Die Frage wird ab Folie 4 gestellt

#only("2")[
#voiceover("Ein Holzbrett schwimmt in einem mit Wasser gefüllten Behälter. Auf dem Brett liegt ein Stein.")
]

#only("3")[
#voiceover("Der Stein rutscht vom Brett und sinkt auf den Boden des Behälters.")
]

#only("4")[
#voiceover("Was denkst Du, passiert mit dem Wasserstand im Behälter?")
]

]#questionDef(
questionText: "Was passiert mit dem Wasserstand, wenn der Stein vom Brett rutscht und auf den Boden des Behälters sinkt?",
answerOptions: ("Der Wasserstand bleibt gleich oder sinkt leicht, da der Stein nun im Wasser ist und nicht mehr das Brett belastet.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)