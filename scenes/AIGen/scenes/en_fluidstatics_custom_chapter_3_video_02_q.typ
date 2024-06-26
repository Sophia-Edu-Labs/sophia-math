#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Blood Pressure Conversion]
#v(40pt)
#only("1-")[
- Blood pressure commonly measured in mmHg 🩸
]
#v(20pt)
#only("2-")[
- mmHg reflects height of mercury column balanced by blood pressure 🌡
]
#v(20pt)
#only("3-")[
- Convert 120/80 mmHg to Pascals using:
]
#v(10pt)
#only("3-")[
$ p = rho dot g dot h $
]
#v(10pt)
#only("4-")[
where $ rho $ for mercury is 13545.9 kg/m³
]

#only("1")[
#voiceover("Blood pressure is commonly measured in millimeters of mercury, or mmHg.")
]
#only("2")[
#voiceover("This unit reflects the height of a mercury column that is balanced by the blood pressure.")
]
#only("3")[
#voiceover("To convert a blood pressure of 120 over 80 mmHg to Pascals, we use the formula p equals rho times g times h,")
]
#only("4")[
#voiceover("where rho, the density of mercury, is 13545.9 kilograms per cubic meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
Convert a blood pressure of 120/80 mmHg to Pascals.
]
#v(20pt)
#only("2-")[
Use:
]
#v(10pt)
#only("2-")[
$ p = rho dot g dot h $
]
#v(10pt)
#only("3-")[
where $ rho $ for mercury is 13545.9 kg/m³.
]
#v(20pt)
#only("4-")[
Give your answer in Pascals. 📏
]

#only("1")[
#voiceover("Here's the question: Convert a blood pressure of 120 over 80 mmHg to Pascals.")
]
#only("2")[
#voiceover("Use the formula p equals rho times g times h,")
]
#only("3")[
#voiceover("where rho, the density of mercury, is 13545.9 kilograms per cubic meter.")
]
#only("4")[
#voiceover("Give your answer in Pascals.")
]
]#questionDef(
questionText: "Convert a blood pressure of $120/80$ mmHg to Pascals. Use $ p = \rho \cdot g \cdot h $ where $ \rho $ for mercury is $ 13545.9 \, \\text{kg/m}^3 $. Give your answer in Pascals for systolic and diastolic pressure.",
answerOptions: (
"Systolic: $p=15936.73$ Pa, Diastolic: $p=10624.49$ Pa",
"Systolic: $p=0$ Pa, Diastolic: $p=0$ Pa",
),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 1.0001
)
),
answerOptionMatcher:("Systolic: $p=\key{a}$ Pa, Diastolic: $p=\key{b}$ Pa"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)