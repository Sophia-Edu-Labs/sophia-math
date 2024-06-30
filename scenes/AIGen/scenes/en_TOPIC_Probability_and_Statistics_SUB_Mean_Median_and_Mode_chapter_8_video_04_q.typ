#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median Calculation]
// The title "Median Calculation" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("What is the median of the set: 33, 47, 35, 41, 45, 43, 37, 39?")
]
#only("2-")[
#text(size: 20pt)[Set: $33, 47, 35, 41, 45, 43, 37, 39$]
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set of numbers: 33, 47, 35, 41, 45, 43, 37, 39.")
]
#v(20pt)
#only("3-")[
#text(size: 20pt)[Step 1: Sort the set in ascending order]
]
// The instruction to sort the set is shown from slide 3 onward
#only("3")[
#voiceover("First, sort the set in ascending order.")
]
#v(20pt)
#only("4-")[
#text(size: 20pt)[Step 2: Identify the middle number(s)]
]
// The instruction to identify the middle number(s) is shown from slide 4 onward
#only("4")[
#voiceover("Next, identify the middle number or numbers in the sorted set.")
]
#v(20pt)
#only("5-")[
#text(size: 20pt)[Step 3: Calculate the median]
]
// The instruction to calculate the median is shown from slide 5 onward
#only("5")[
#voiceover("Finally, calculate the median based on the middle number or the average of the two middle numbers.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(33, 47, 35, 41, 45, 43, 37, 39)$?", 
answerOptions: ("$\\text{Median} = 40$", "$\\text{Median} = -76$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\\text{Median} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)