#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity]
#v(40pt)
#only("1-")[What is required for a function to be continuous at a point?]
#v(40pt)
#only("2-")[
- The limit must exist
]
#v(10pt)
#only("3-")[  
- The function must be defined at that point
]
#v(10pt)
#only("4-")[
- The limit must equal the function's value at that point  
]
#v(10pt)
#only("5-")[
- All of the above
]
#only("1")[#voiceover("Let's test your knowledge on continuity. What is required for a function to be continuous at a point?")]
#only("2")[#voiceover("Is it that the limit must exist at that point,")]  
#only("3")[#voiceover("or that the function must be defined at that point,")]
#only("4")[#voiceover("or that the limit must equal the function's value at that point,")]
#only("5")[#voiceover("or is it all of the above?")]
]#questionDef(
questionText: "What is required for a function to be continuous at a point?",
answerOptions: ("The limit must exist", "The function must be defined at that point", "The limit must equal the function's value at that point", "All of the above"),
correctAnswerIndex: 3,
)