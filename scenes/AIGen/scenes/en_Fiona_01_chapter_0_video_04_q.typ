#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Rolling an Odd Number]
#v(40pt)

// First visual element visible from subslide 1 to the end
#only("1-")[- Consider a fair six-sided die 🎲]
#v(20pt)

// Second visual element visible from subslide 2 to the end
#only("2-")[- Possible outcomes: $1, 2, 3, 4, 5, 6$]
#v(20pt)

// Third visual element visible from subslide 3 to the end
#only("3-")[- Odd numbers: $1, 3, 5$]
#v(20pt)

// Fourth visual element visible from subslide 4 to the end
#only("4-")[- Total number of rolls: $n$]
#v(20pt)

// Fifth visual element visible from subslide 5 to the end
#only("5-")[- Number of times an odd number is rolled: $k$]
#v(20pt)

// Sixth visual element visible from subslide 6 to the end
#only("6-")[- Relative frequency: $f = k/n$]
#v(20pt)

// First voiceover read out on subslide 1 only
#only("1")[
#voiceover("Let's consider a fair six-sided die.")
]

// Second voiceover read out on subslide 2 only
#only("2")[
#voiceover("The possible outcomes when rolling the die are one, two, three, four, five, and six.")
]

// Third voiceover read out on subslide 3 only
#only("3")[
#voiceover("The odd numbers among these outcomes are one, three, and five.")
]

// Fourth voiceover read out on subslide 4 only
#only("4")[
#voiceover("Let's denote the total number of rolls as n.")
]

// Fifth voiceover read out on subslide 5 only
#only("5")[
#voiceover("Let k be the number of times an odd number is rolled.")
]

// Sixth voiceover read out on subslide 6 only
#only("6")[
#voiceover("The relative frequency of rolling an odd number is given by the ratio k over n.")
]
]

//Type: FREE 
#questionDef( 
questionText: "What is the relative frequency of rolling an odd number?", 
answerOptions: ("$\frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)