#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Volume of a Cube]
#v(40pt)
#only("1-")[
- Given: $V = s^3$
]
#v(20pt)
#only("2-")[
- $V = 27$ cubic units
]
#v(20pt)
#only("3-")[
#text(weight: "bold")[Find:] $s = ?$
]
#only("1")[
#voiceover("Consider a cube where the volume V is given by the formula V equals s cubed, where s is the side length of the cube.")
]
#only("2")[
#voiceover("If the volume of the cube is 27 cubic units,")
]
#only("3")[
#voiceover("find the side length s of the cube.")
]
]#questionDef(
questionText: "What is the value of $s$, the side length of the cube?",
answerOptions: ("$s=3$", "$s=9$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$s=\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)