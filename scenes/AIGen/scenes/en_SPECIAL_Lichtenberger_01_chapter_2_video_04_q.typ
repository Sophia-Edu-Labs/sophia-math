#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Ice Cube in Water 🧊💧]
// The title "Ice Cube in Water" with emojis is shown on all slides

#v(40pt)

#only("1-")[In a glass filled with water, an ice cube floats. 🥃]
// The statement "In a glass filled with water, an ice cube floats." with an emoji is shown from slide 1 onward

#v(40pt)

#only("2-")[The ice cube melts. 🌡️]
// The statement "The ice cube melts." with an emoji is shown from slide 2 onward

#v(40pt)

#only("3-")[What happens to the water level? 🤔]
// The question "What happens to the water level?" with a thinking emoji is shown from slide 3 onward

#only("1")[
#voiceover("Consider a glass filled with water. In this glass, an ice cube is floating.")
]

#only("2")[
#voiceover("Now, imagine the ice cube melts completely.")
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