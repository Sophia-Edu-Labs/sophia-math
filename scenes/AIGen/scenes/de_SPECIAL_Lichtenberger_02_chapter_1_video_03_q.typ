#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdrück-Übung]
#v(40pt)
#only("1-")[- Drei Wasserhähne: 35 m unterhalb, 10 m unterhalb, 3 m oberhalb des Reservoirs 🚰]
#v(20pt)
#only("2-")[- Berechne den Überdruck für jeden Wasserhahn 🌊]
#only("1")[
#voiceover("Betrachte eine Anordnung mit drei Wasserhähnen. Einer befindet sich 35 Meter unterhalb des Reservoirs, ein anderer 10 Meter unterhalb und der dritte 3 Meter oberhalb des Reservoirs.")
]
#only("2")[
#voiceover("Deine Aufgabe ist es, den Überdruck für jeden dieser Wasserhähne zu berechnen.")
]
]#questionDef(
questionText: "Die drei Wasserhähne befinden sich 35 m unterhalb, 10 m unterhalb und 3 m oberhalb des Wasserbehälters. Berechne den Überdruck für jeden Wasserhahn.",
answerOptions: ("Die Überdrücke sind $3.4 \, \text{bar}$, $1.0 \, \text{bar}$ und $-0.3 \, \text{bar}$ jeweils, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)