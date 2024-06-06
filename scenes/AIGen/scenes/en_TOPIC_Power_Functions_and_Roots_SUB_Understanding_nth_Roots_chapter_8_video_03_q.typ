#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Volume of a Cube 📦]
#v(40pt)
#only("1-")[
- Given: Volume $= 27$ cubic units
]
#v(20pt)
#only("2-")[
- Formula: $V = s^3$, where $s$ is the side length
]
#only("1")[
#voiceover("Consider a cube with a volume of 27 cubic units.")
]
#only("2")[
#voiceover("Recall that the volume of a cube is given by the formula V equals s cubed, where s is the length of a side.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question ❓]
#v(40pt)
#only("1-")[
If $V = 27$, what is the value of $s$?
]
#only("1")[
#voiceover("The question is: if the volume is 27 cubic units, what is the length of one side of the cube?")
]
]#questionDef(
questionText: "If the volume of a cube is $27$ cubic units, what is the length of one side?",
answerOptions: ("$3$ units", "$9$ units"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$ units"),
answerOptionsTypes: (
"a": "number"
)
),
)