#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[Which of the following is #text(weight: "bold")[NOT] a key step in finding the area between two curves?]
#v(40pt)
#only("2-")[a) Determining the boundaries of the region]
#v(10pt)
#only("3-")[b) Setting up the integral with the appropriate order of functions]
#v(10pt)
#only("4-")[c) Evaluating the integral using integration techniques]
#v(10pt)
#only("5-")[d) Differentiating the functions to find their intersection points]

#only("1")[
#voiceover("Which of the following is NOT a key step in finding the area between two curves?")
]
#only("2")[#voiceover("Is it determining the boundaries of the region?")]
#only("3")[#voiceover("Or setting up the integral with the appropriate order of functions?")]
#only("4")[#voiceover("Maybe evaluating the integral using integration techniques?")]
#only("5")[#voiceover("Or could it be differentiating the functions to find their intersection points?")]
]

#questionDef(
questionText: "Which of the following is NOT a key step in finding the area between two curves?",
answerOptions: (
"Determining the boundaries of the region",
"Setting up the integral with the appropriate order of functions",
"Evaluating the integral using integration techniques",
"Differentiating the functions to find their intersection points"
),
correctAnswerIndex: 3
)