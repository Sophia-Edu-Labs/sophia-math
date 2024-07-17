#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Drawing a Number Less Than 4]
#v(40pt)

// Introduce the question
#only("1")[
#voiceover("Let's consider a deck of cards numbered from one to ten.")
]

#only("2-")[#text()[$ \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\} $]]
#v(20pt)

// Pose the question
#only("3-")[#text()[
What is the relative frequency of drawing a number less than 4?
]]
#v(20pt)

// Voiceover for the question
#only("3")[
#voiceover("What is the relative frequency of drawing a number less than four?")
]
]

//Type: FREE 
#questionDef( 
questionText: "What is the relative frequency of drawing a number less than $4$?", 
answerOptions: ("$rac{3}{10}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)