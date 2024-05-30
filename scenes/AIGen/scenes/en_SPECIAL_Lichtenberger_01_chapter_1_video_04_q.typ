#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Level Puzzle 🌊]
#v(40pt)
#only("1-")[A wooden board floats in a bucket filled with water. A cup of water is on the board.]
#v(20pt)
#only("2-")[The water from the cup is poured into the bucket, and the empty cup is placed back on the board.]
#v(40pt)
#only("3-")[What happens to the water level in the bucket? 🤔]
#only("1")[
#voiceover("Imagine a wooden board floating in a bucket filled with water. On top of the board, there's a cup of water.")
]
#only("2")[
#voiceover("Now, the water from the cup is poured into the bucket, and the empty cup is placed back on the board.")
]  
#only("3")[
#voiceover("Here's the question: What happens to the water level in the bucket after this action?")
]
]#questionDef(
questionText: "After pouring the water from the cup into the bucket and placing the empty cup back on the floating board, what happens to the water level in the bucket?",
answerOptions: ("The water level remains the same.", "The water level increases.", "The water level decreases.", "It depends on the size of the cup and the board."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 3
),
)