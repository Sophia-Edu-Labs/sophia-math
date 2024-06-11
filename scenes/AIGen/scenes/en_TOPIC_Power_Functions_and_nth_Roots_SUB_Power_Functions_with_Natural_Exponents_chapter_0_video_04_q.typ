#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise: Evaluate $5^2$]
#v(40pt)
#only("1")[
#voiceover("In this exercise, we will evaluate the expression five squared.")
]
#only("2-")[
- $5^2$ means $5$ multiplied by itself.
]
#only("2")[
#voiceover("The expression five squared means five multiplied by itself.")
]
#v(20pt)
#only("3-")[
- $5^2 = 5 * 5$
]
#only("3")[
#voiceover("So, five squared is equal to five times five.")
]
#v(20pt)
#only("4-")[
- Calculate the product: $5 * 5$
]
#only("4")[
#voiceover("Now, let's calculate the product of five times five.")
]
#v(20pt)
#only("5-")[
- What is the value of $5^2$?
]
#only("5")[
#voiceover("What is the value of five squared?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $5^2$?", 
answerOptions: ("$25$", "$-46$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)