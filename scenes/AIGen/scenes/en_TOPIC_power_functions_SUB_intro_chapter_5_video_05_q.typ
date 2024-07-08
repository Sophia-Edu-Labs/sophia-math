#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Even Power Functions]
#v(40pt)

#only("1-")[Which of the following is a property of even power functions?]
#v(20pt)

#only("2-")[a) Symmetric about the origin]
#v(10pt)
#only("3-")[b) Symmetric about the y-axis]
#v(10pt)
#only("4-")[c) Always increasing]
#v(10pt)
#only("5-")[d) Always decreasing]

#only("1")[#voiceover("Let's test your knowledge about even power functions. Which of the following is a property of even power functions?")]
#only("2")[#voiceover("Is it that they are symmetric about the origin,")]
#only("3")[#voiceover("or are they symmetric about the y-axis,")]
#only("4")[#voiceover("or are they always increasing,")]
#only("5")[#voiceover("or are they always decreasing?")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following is a property of even power functions?", 
answerOptions: ("Symmetric about the origin", "Symmetric about the $y$-axis", "Always increasing", "Always decreasing"),
correctAnswerIndex: 1 
)