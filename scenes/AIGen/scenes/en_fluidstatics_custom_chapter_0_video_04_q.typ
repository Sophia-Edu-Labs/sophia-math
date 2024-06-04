#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift System]
#v(40pt)
#only("1-")[A hydraulic lift system is used to lift a heavy object. The lift height is 2 m and the pump stroke is 50 cm.]
#v(20pt)
#only("2-")[The formula to calculate the number of pump piston moves is:]
#v(20pt)
#only("2-")[$ n = (A_"Press" dot h_"Lift") / (A_"Pump" dot s_"Pump") $]
#v(20pt)
#only("3-")[Where:]
#v(10pt)
#only("3-")[- $ A_"Press" $ is the area of the press piston]
#v(10pt)  
#only("3-")[- $ h_"Lift" $ is the lift height]
#v(10pt)
#only("3-")[- $ A_"Pump" $ is the area of the pump piston]
#v(10pt)
#only("3-")[- $ s_"Pump" $ is the pump stroke]

#only("1")[
#voiceover("Consider a hydraulic lift system used to lift a heavy object. The lift height is 2 meters and the pump stroke is 50 centimeters.")
]
#only("2")[  
#voiceover("The number of pump piston moves required can be calculated using the formula n equals A press times h lift divided by A pump times s pump.")
]
#only("3")[
#voiceover("Here, A press is the area of the press piston, h lift is the lift height, A pump is the area of the pump piston, and s pump is the pump stroke.")  
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Question 🤔]
#v(40pt)
#only("1-")[How many times must the pump piston move to lift the object?]
#only("1")[
#voiceover("Given this information, how many times must the pump piston move to lift the object? Express your answer as an integer.")
]
]#questionDef(
questionText: "How many times must the pump piston move to lift the object? Use $ n = \frac{A_{Press} \cdot h_{Lift}}{A_{Pump} \cdot s_{Pump}} $. Express your answer as an integer.",
answerOptions: ("$320$", "$160$"),  
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)