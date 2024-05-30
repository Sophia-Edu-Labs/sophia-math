#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure Exercise]
#v(40pt)
#only("1-")[- Three taps: 35 m below, 10 m below, 3 m above reservoir 🚰]
#v(20pt)
#only("2-")[- Calculate overpressure for each tap 🌊]
#only("1")[
#voiceover("Consider a setup with three water taps. One is located 35 meters below the reservoir, another 10 meters below, and the third 3 meters above the reservoir.")
]
#only("2")[
#voiceover("Your task is to calculate the overpressure for each of these taps.")
]
]#questionDef(
questionText: "The three taps are located 35 m below, 10 m below, and 3 m above the water container. Calculate the overpressure for each tap.",
answerOptions: ("The overpressures are $3.4 \, \text{bar}$, $1.0 \, \text{bar}$, and $-0.3 \, \text{bar}$ respectively, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)