#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider linear and exponential growth.")
]

#text(size: 30pt, weight: "bold")[Linear vs Exponential Growth]
// The title "Linear vs Exponential Growth" is shown on all slides

#v(40pt)

#only("2-")[- Linear growth: constant addition 📈]
// "Linear growth: constant addition" is shown from slide 2 onward

#v(20pt)

#only("3-")[- Exponential growth: constant multiplication 🌱]
// "Exponential growth: constant multiplication" is shown from slide 3 onward

#v(40pt)

#only("4-")[What is the key difference between linear and exponential growth?]
// The question "What is the key difference between linear and exponential growth?" is shown from slide 4 onward

#only("2")[
#voiceover("Linear growth involves a constant addition per time period.")
]

#only("3")[
#voiceover("Exponential growth involves a constant multiplication per time period.")
]

#only("4")[
#voiceover("What is the key difference between linear and exponential growth?")
]

]#questionDef(
questionText: "What is the key difference between linear and exponential growth?",
answerOptions: ("Linear growth involves a constant addition per time period, while exponential growth involves a constant multiplication per time period.", "Linear growth involves a constant multiplication per time period, while exponential growth involves a constant addition per time period."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 0
),
)