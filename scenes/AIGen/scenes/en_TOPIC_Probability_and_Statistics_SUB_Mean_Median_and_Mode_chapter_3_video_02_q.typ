#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean of a Set]
// The title "Mean of a Set" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Let's find the mean of the set of numbers.")
]
#only("2-")[
#text(size: 24pt)[Set: (10, 40, 20, 50, 30)]
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set of numbers: 10, 40, 20, 50, and 30.")
]
#only("3-")[
#text(size: 24pt)[Mean: $"sum"/"count"$]
]
// The formula for the mean is shown from slide 3 onward
#only("3")[
#voiceover("To find the mean, we sum all the numbers and then divide by the count of numbers in the set.")
]
#only("4-")[
#text(size: 24pt)[Sum: $10 + 40 + 20 + 50 + 30$]
]
// The sum of the numbers is shown from slide 4 onward
#only("4")[
#voiceover("First, we calculate the sum: 10 plus 40 plus 20 plus 50 plus 30.")
]
#only("5-")[
#text(size: 24pt)[Count: 5]
]
// The count of numbers is shown from slide 5 onward
#only("5")[
#voiceover("Next, we count the numbers in the set, which is 5.")
]
#only("6-")[
#text(size: 24pt)[Mean: $150/5$]
]
// The mean calculation is shown from slide 6 onward
#only("6")[
#voiceover("Finally, we divide the sum by the count to find the mean.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mean of the set $(10, 40, 20, 50, 30)$?", 
answerOptions: ("$\\text{Mean} = 30$", "$\\text{Mean} = -56$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Mean} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)