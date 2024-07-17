#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sharing Pizza 🍕]
#v(40pt)
#only("1")[
#voiceover("Imagine you have five sixths of a pizza.")
]
#only("2-")[
#text()[$frac(5,6)$ of a pizza]
]
#v(20pt)
#only("2")[
#voiceover("You decide to share two thirds of it with a friend.")
]
#only("3-")[
#text()[$frac(2,3)$ of $frac(5,6)$]
]
#v(20pt)
#only("3")[
#voiceover("How much of the whole pizza does your friend get?")
]
#only("4-")[
#text()[$frac(2,3) dot frac(5,6)$]
]
#v(20pt)
#only("4")[
#voiceover("To find out, we need to multiply two thirds by five sixths.")
]
#only("5-")[
#text()[$frac(2 dot 5, 3 dot 6)$]
]
#v(20pt)
#only("5")[
#voiceover("This means we multiply the numerators and the denominators.")
]
#only("6-")[
#text()[$frac(10, 18)$]
]
#v(20pt)
#only("6")[
#voiceover("So, your friend gets ten eighteenths of the whole pizza.")
]
#only("7-")[
#text()[$frac(5, 9)$]
]
#v(20pt)
#only("7")[
#voiceover("Simplifying this fraction, we get five ninths.")
]
#only("8-")[
#text()[$frac(5, 9)$ of the pizza]
]
#v(20pt)
#only("8")[
#voiceover("Therefore, your friend gets five ninths of the whole pizza.")
]
]

//Type: FREE 
#questionDef( 
questionText: "You have $\frac{5}{6}$ of a pizza, and you share $\frac{2}{3}$ of it with a friend. How much of the whole pizza does your friend get?", 
answerOptions: ("$\frac{5}{9}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)