#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulisches Hebesystem]
#v(40pt)
#only("1-")[Ein hydraulisches Hebesystem wird verwendet, um ein schweres Objekt zu heben. Die Hubhöhe beträgt 2 m und der Pumpenhub 50 cm.]
#v(20pt)
#only("2-")[Die Formel zur Berechnung der Anzahl der Pumpkolbenbewegungen lautet:]
#v(20pt)
#only("2-")[$ n = (A_"Press" dot h_"Lift") / (A_"Pump" dot s_"Pump") $]
#v(20pt)
#only("3-")[Dabei gilt:]
#v(10pt)
#only("3-")[- $ A_"Press" $ ist die Fläche des Presskolbens]
#v(10pt)  
#only("3-")[- $ h_"Lift" $ ist die Hubhöhe]
#v(10pt)
#only("3-")[- $ A_"Pump" $ ist die Fläche des Pumpkolbens]
#v(10pt)
#only("3-")[- $ s_"Pump" $ ist der Pumpenhub]

#only("1")[
#voiceover("Betrachte ein hydraulisches Hebesystem, das verwendet wird, um ein schweres Objekt zu heben. Die Hubhöhe beträgt 2 Meter und der Pumpenhub 50 Zentimeter.")
]
#only("2")[  
#voiceover("Die Anzahl der erforderlichen Pumpkolbenbewegungen kann mit der Formel n gleich A Press mal h Lift geteilt durch A Pump mal s Pump berechnet werden.")
]
#only("3")[
#voiceover("Hierbei ist A Press die Fläche des Presskolbens, h Lift die Hubhöhe, A Pump die Fläche des Pumpkolbens und s Pump der Pumpenhub.")  
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage 🤔]
#v(40pt)
#only("1-")[Wie oft muss der Pumpkolben bewegt werden, um das Objekt zu heben?]
#only("1")[
#voiceover("Angesichts dieser Informationen, wie oft muss der Pumpkolben bewegt werden, um das Objekt zu heben? Gib Deine Antwort als ganze Zahl an.")
]
]#questionDef(
questionText: "Wie oft muss der Pumpkolben bewegt werden, um das Objekt zu heben? Verwende $ n = \frac{A_{Press} \cdot h_{Lift}}{A_{Pump} \cdot s_{Pump}} $. Gib Deine Antwort als ganze Zahl an.",
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