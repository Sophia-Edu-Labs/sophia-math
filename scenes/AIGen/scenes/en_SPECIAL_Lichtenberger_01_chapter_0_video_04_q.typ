#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Consider the following situation:")
]

#text(size: 30pt, weight: "bold")[Water Level Puzzle 🌊]
// The title "Water Level Puzzle" is shown on all slides

#v(40pt)

#only("2-")[
- A wooden board floats in a container filled with water 🌿
- A stone is on the board 🪨
]
// The setup is shown from slide 2 onward

#v(40pt)

#only("3-")[The stone slips off the board and sinks to the bottom of the container 🌊]
// The event is described from slide 3 onward

#v(40pt)

#only("4-")[What happens to the water level? 🤔]
// The question is posed from slide 4 onward

#only("2")[
#voiceover("A wooden board floats in a container filled with water. On top of the board, there is a stone.")
]

#only("3")[
#voiceover("The stone slips off the board and sinks to the bottom of the container.")
]

#only("4")[
#voiceover("What do you think happens to the water level in the container?")
]

]#questionDef(
questionText: "What happens to the water level when the stone slips off the board and sinks to the bottom of the container?",
answerOptions: ("The water level remains the same or drops slightly, as the stone is now in the water and no longer weighing down the board.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)