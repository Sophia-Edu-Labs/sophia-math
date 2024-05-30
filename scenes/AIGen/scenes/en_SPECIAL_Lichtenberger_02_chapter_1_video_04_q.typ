#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Water Pressure Change]

#v(40pt)

#only("1-")[- Three taps: 35 m below, 10 m below, 3 m above water reservoir 🚰]

#v(20pt)

#only("2-")[- Reservoir level drops by 2 m ↘]

#v(40pt)

#only("3-")[How much does the pressure change for each tap? 🤔]

#only("1")[
#voiceover("Consider a building with three water taps. One is 35 meters below the water reservoir, another is 10 meters below, and the third is 3 meters above the reservoir.")
]

#only("2")[  
#voiceover("Now, if the water level in the reservoir drops by 2 meters,")
]

#only("3")[
#voiceover("by how much does the water pressure change at each of the three taps?")
]

]#questionDef(
questionText: "If the reservoir level drops by 2 m, how much does the pressure change for each tap?",
answerOptions: ("The pressure decreases by $0.2 \text{ bar}$ for each tap, since $\Delta P = \rho \cdot g \cdot \Delta h$.", "The answer is incorrect."),  \ncorrectAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)