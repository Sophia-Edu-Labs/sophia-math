#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
- A wooden board floats in a bucket filled with water 🌊
]
#v(20pt)
#only("2-")[
- A cup of water is on the board 🥛
]
#v(20pt)
#only("3-")[
- The water from the cup is poured into the bucket 🫗
]
#v(20pt)
#only("4-")[  
- The empty cup is placed back on the board 🥤
]
#only("1")[
#voiceover("Consider the following situation: A wooden board is floating in a bucket filled with water.")
]
#only("2")[
#voiceover("On top of the board, there is a cup filled with water.")
]
#only("3")[
#voiceover("Now, the water from the cup is poured into the bucket.")
]
#only("4")[
#voiceover("And the empty cup is placed back on the board.")
]
#v(40pt)
#only("5-")[What happens to the water level in the bucket? 🤔]
#only("5")[
#voiceover("What do you think happens to the water level in the bucket?")
]
]#questionDef(
questionText: "What happens to the water level in the bucket after the water from the cup is poured into it and the empty cup is placed back on the board?",
answerOptions: ("The water level remains the same or drops slightly, as the water from the cup is now in the bucket and the empty cup is no longer weighing down the board.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)