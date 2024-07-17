#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Application: Multiplying Fractions]
#v(40pt)
#only("1")[
#voiceover("Let's consider a real-world problem involving fractions.")
]
#only("2-")[
#text()[
You have $1/2$ of a cake 🎂, and you give $2/3$ of it to a friend. How much of the whole cake does your friend get?
]
]
#only("2")[
#voiceover("You have one-half of a cake, and you give two-thirds of it to a friend. How much of the whole cake does your friend get?")
]
]

//Type: FREE 
#questionDef( 
questionText: "You have $\frac{1}{2}$ of a cake, and you give $\frac{2}{3}$ of it to a friend. How much of the whole cake does your friend get?", 
answerOptions: ("$\frac{1}{2} \\times \frac{2}{3} = \frac{1 \\times 2}{2 \\times 3} = \frac{2}{6} = \frac{1}{3}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)