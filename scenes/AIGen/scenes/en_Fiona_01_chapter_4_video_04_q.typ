#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Students]
#v(40pt)

// Briefly introduce the question
#only("1")[
#voiceover("Let's consider a scenario where we want to find the relative frequency of students who like math or science.")
]
#only("2-")[#text()[- What is the relative frequency of students who like math or science? 📊]]
#v(20pt)

// Voiceover for the question
#only("2")[
#voiceover("What is the relative frequency of students who like math or science?")
]
]

//Type: FREE 
#questionDef( 
questionText: "What is the relative frequency of students who like math or science?", 
answerOptions: ("", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)