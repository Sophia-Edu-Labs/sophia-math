#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[When setting up the integral to find the area between two curves, what do the boundaries represent?]
#v(40pt)
#only("2-")[- The intersection points of the curves]
#v(10pt)
#only("3-")[- The maximum and minimum points of the functions]
#v(10pt)
#only("4-")[- The limits of integration]
#v(10pt)
#only("5-")[- The domain of the functions]

#only("1")[#voiceover("Consider the following question:")]
#only("2")[#voiceover("Do the boundaries represent the intersection points of the curves?")]
#only("3")[#voiceover("Or do they represent the maximum and minimum points of the functions?")]
#only("4")[#voiceover("Could they be the limits of integration?")]
#only("5")[#voiceover("Or do they represent the domain of the functions?")]
]

#questionDef(
questionText: "When setting up the integral to find the area between two curves, what do the boundaries represent?",
answerOptions: ("The intersection points of the curves", "The maximum and minimum points of the functions", "The limits of integration", "The domain of the functions"),
correctAnswerIndex: 2
)