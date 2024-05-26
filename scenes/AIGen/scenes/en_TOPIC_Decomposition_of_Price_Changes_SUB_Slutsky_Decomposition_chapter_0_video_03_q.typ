#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Substitution Effect]
// The title "Substitution Effect" is shown on all slides

#v(40pt)

#only("1-")[- Occurs when a price change makes a good relatively cheaper or more expensive 💰]
// The bullet point is shown from slide 1 onward

#v(40pt)

#only("2-")[- Leads to a change in consumption 🛒]
// The second bullet point is shown from slide 2 onward

#v(40pt)

#only("3-")[Briefly describe the substitution effect in your own words.]
// The question is shown on slide 3

#only("1")[
#voiceover("The substitution effect occurs when a price change makes a good relatively cheaper or more expensive compared to other goods.")
]

#only("2")[
#voiceover("This change in relative prices leads to a change in the consumption of the good.")
]

#only("3")[
#voiceover("Now, can you briefly describe the substitution effect in your own words?")
]

]#questionDef(
questionText: "Briefly describe the substitution effect in your own words.",
answerOptions: ("The substitution effect is the change in consumption of a good resulting from a change in its price relative to other goods, holding utility constant.", "The answer does not correctly describe the substitution effect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)