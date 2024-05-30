#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Water Pressure Exercise]
// The title "Water Pressure Exercise" is shown on all slides

#v(40pt)

#only("1-")[A water container has three taps located at different heights relative to it:]
// The setup is described from slide 1 onward

#v(20pt)

#only("2-")[
- Tap 1: 35 m below 🚰⬇]
#v(10pt)
#only("3-")[
- Tap 2: 10 m below 🚰⬇]
#v(10pt)
#only("4-")[  
- Tap 3: 3 m above 🚰⬆
]
// The tap locations are listed out from slide 2 onward

#v(40pt)

#only("5-")[Calculate the overpressure for each tap. 🤔]
// The question is posed on slide 5

#only("1")[
#voiceover("Consider a water container with three taps located at different heights relative to it.")
]

#only("2")[
#voiceover("The first tap is located 35 meters below the container.")  
]

#only("3")[
#voiceover("The second tap is 10 meters below.")
]

#only("4")[
#voiceover("And the third tap is 3 meters above the container.")   
]

#only("5")[
#voiceover("Your task is to calculate the overpressure for each of these taps.")
]

]#questionDef(
questionText: "Calculate the overpressure for each tap located at $35 \, \text{m}$ below, $10 \, \text{m}$ below, and $3 \, \text{m}$ above the water container.",
answerOptions: ("The overpressures are $3.4 \, \text{bar}$, $1.0 \, \text{bar}$, and $-0.3 \, \text{bar}$ respectively, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)