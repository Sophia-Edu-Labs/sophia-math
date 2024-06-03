#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Water Pressure Change]

#v(40pt)

#only("1-")[Three taps are located at different heights relative to a water reservoir:]
#v(20pt)
#only("2-")[- 35 m below 🚰]
#only("3-")[- 10 m below 🚰] 
#only("4-")[- 3 m above 🚰]

#v(40pt)

#only("5-")[If the reservoir level drops by 2 m, how much does the pressure change for each tap? 🤔]

#only("1")[
#voiceover("Consider a scenario where three taps are located at different heights relative to a water reservoir.")
]

#only("2")[
#voiceover("The first tap is 35 meters below the reservoir.")  
]

#only("3")[
#voiceover("The second tap is 10 meters below the reservoir.")
]

#only("4")[
#voiceover("And the third tap is 3 meters above the reservoir.")
]

#only("5")[
#voiceover("Now, if the water level in the reservoir drops by 2 meters, how much does the pressure change for each of these taps?")
]

]#questionDef(
questionText: "If the reservoir level drops by 2 m, how much does the pressure change for each tap located at $35 \, \text{m}$ below, $10 \, \text{m}$ below, and $3 \, \text{m}$ above the reservoir?",
answerOptions: ("The pressure decreases by $0.2 \, \text{bar}$ for each tap.", "The pressure change is different for each tap."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)