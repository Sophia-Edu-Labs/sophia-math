#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Floating Ice Cube 🧊]
// The title "Floating Ice Cube" is shown on all slides

#v(40pt)

#only("1-")[A glass filled with water has a floating ice cube.]
// The statement "A glass filled with water has a floating ice cube." is shown from slide 1 onward

#v(40pt)

#only("2-")[The ice cube melts. 💧]
// The statement "The ice cube melts." is shown from slide 2 onward

#v(40pt)

#only("3-")[What happens to the water level? 🌊]
// The question "What happens to the water level?" is shown from slide 3 onward

#only("1")[
#voiceover("Consider a glass filled with water that has an ice cube floating in it.")
]

#only("2")[
#voiceover("Now, the ice cube melts completely.")
]

#only("3")[
#voiceover("What do you think will happen to the water level in the glass?")
]

]#questionDef(
questionText: "In a glass filled with water, an ice cube floats. The ice cube melts. What happens to the water level?",
answerOptions: ("The water level remains the same, as the melted ice adds the same volume of water as the displaced water of the ice cube.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)