#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Absolute Frequency]
#v(40pt)

#only("1")[
#voiceover("Let's consider a survey of 50 students.")
]

#only("2-")[
#text()[
- 10 like math 📚
]
]
#v(20pt)

#only("3-")[
#text()[
- 20 like science 🔬
]
]
#v(20pt)

#only("4-")[
#text()[
- 20 like history 📜
]
]
#v(40pt)

#only("5-")[
#text(size: 25pt, weight: "bold")[
What is the absolute frequency of students who like math?
]
]

#only("2")[
#voiceover("Out of these students, 10 like math.")
]

#only("3")[
#voiceover("20 students like science.")
]

#only("4")[
#voiceover("And another 20 students like history.")
]

#only("5")[
#voiceover("What is the absolute frequency of students who like math?")
]
]

//Type: FREE 
#questionDef( 
questionText: "A survey of $50$ students found $10$ like math, $20$ like science, and $20$ like history. What is the absolute frequency of students who like math?", 
answerOptions: ("$10$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)