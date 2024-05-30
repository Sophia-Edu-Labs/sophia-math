#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Level Question]
#v(40pt)
#only("1-")[A wooden board floats in a container filled with water. A stone is on the board.]
#v(20pt)
#only("2-")[The stone slips off the board and sinks to the bottom of the container. 🪨]
#v(40pt)
#only("3-")[What happens to the water level? 🌊]
#only("1")[
#voiceover("Consider the following scenario: A wooden board floats in a container filled with water. A stone is on the board.")
]
#only("2")[
#voiceover("The stone then slips off the board and sinks to the bottom of the container.")
]
#only("3")[
#voiceover("What do you think happens to the water level in this situation?")
]
]#questionDef(
questionText: "What happens to the water level when the stone slips off the board and sinks to the bottom of the container?",
answerOptions: ("The water level remains the same or drops slightly.", "The water level rises."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)