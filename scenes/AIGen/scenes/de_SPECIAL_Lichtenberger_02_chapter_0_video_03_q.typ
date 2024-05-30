#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulischer Lift]
#v(40pt)
#only("1-")[Ein hydraulischer Lift wird verwendet, um einen großen Schiffsmotor mit einer Masse von 6000 kg um 2,0 m anzuheben. Die Fläche des Pumpkolbens beträgt 5,0 cm² und die Fläche des Presskolbens beträgt 400 cm².]
#only("1")[
#voiceover("Betrachte einen hydraulischen Lift, der verwendet wird, um einen großen Schiffsmotor mit einer Masse von 6000 Kilogramm um 2 Meter anzuheben. Die Fläche des Pumpkolbens beträgt 5 Quadratzentimeter und die Fläche des Presskolbens beträgt 400 Quadratzentimeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[Was ist die notwendige Kraft $F$ der Pumpe?]
#only("1")[
#voiceover("Berechne die notwendige Kraft F der Pumpe.")
]
#v(20pt)
#only("2-")[💡 Hinweis: Verwende die Formel $F = P dot A_("Pumpkolben")$]
#only("2")[
#voiceover("Hinweis: Du kannst die Formel F gleich P mal A des Pumpkolbens verwenden, wobei P der Druck in der Flüssigkeit und A des Pumpkolbens die Fläche des Pumpkolbens ist.")
]
]#questionDef(
questionText: "Was ist die notwendige Kraft $F$ der Pumpe in Newton (N)?",
answerOptions: ("$740 \text{ N}$", "$0 \text{ N}$"),  correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a} \text{ N}$"),
answerOptionsTypes: (
"a": "number" )
),
)