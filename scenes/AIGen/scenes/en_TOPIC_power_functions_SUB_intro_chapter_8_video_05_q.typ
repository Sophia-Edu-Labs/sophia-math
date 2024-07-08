#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Power Functions with Negative Exponents]
#v(40pt)

#only("1-")[Which of the following is a property of power functions with a negative exponent?]
#v(20pt)

#only("2-")[a) Always increasing]
#v(10pt)
#only("3-")[b) Symmetric about the y-axis]
#v(10pt)
#only("4-")[c) Represents a reciprocal function]
#v(10pt)
#only("5-")[d) Has a maximum point]

#only("1")[#voiceover("Let's explore the properties of power functions with negative exponents. Which of the following statements correctly describes a characteristic of these functions?")]

#only("2")[#voiceover("Is it that they are always increasing?")]

#only("3")[#voiceover("Or are they symmetric about the y-axis?")]

#only("4")[#voiceover("Perhaps they represent a reciprocal function?")]

#only("5")[#voiceover("Or do they have a maximum point?")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following is a property of power functions with a negative exponent?", 
answerOptions: ("Always increasing", "Symmetric about the y-axis", "Represents a reciprocal function", "Has a maximum point"),
correctAnswerIndex: 2 
)