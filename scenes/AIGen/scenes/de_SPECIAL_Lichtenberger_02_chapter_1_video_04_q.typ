#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Änderung des Wasserdrucks]

#v(40pt)

#only("1-")[Drei Wasserhähne befinden sich in unterschiedlichen Höhen relativ zu einem Wasserreservoir:]
#v(20pt)
#only("2-")[- 35 m unterhalb 🚰]
#only("3-")[- 10 m unterhalb 🚰] 
#only("4-")[- 3 m oberhalb 🚰]

#v(40pt)

#only("5-")[Wenn der Wasserstand im Reservoir um 2 m sinkt, wie ändert sich der Druck an jedem Wasserhahn? 🤔]

#only("1")[
#voiceover("Betrachte ein Szenario, bei dem sich drei Wasserhähne in unterschiedlichen Höhen relativ zu einem Wasserreservoir befinden.")
]

#only("2")[
#voiceover("Der erste Wasserhahn befindet sich 35 Meter unterhalb des Reservoirs.")  
]

#only("3")[
#voiceover("Der zweite Wasserhahn befindet sich 10 Meter unterhalb des Reservoirs.")
]

#only("4")[
#voiceover("Und der dritte Wasserhahn befindet sich 3 Meter oberhalb des Reservoirs.")
]

#only("5")[
#voiceover("Wenn nun der Wasserstand im Reservoir um 2 Meter sinkt, wie ändert sich der Druck an jedem dieser Wasserhähne?")
]

]#questionDef(
questionText: "Wenn der Wasserstand im Reservoir um 2 m sinkt, wie ändert sich der Druck an jedem Wasserhahn, der sich $35 \, \text{m}$ unterhalb, $10 \, \text{m}$ unterhalb und $3 \, \text{m}$ oberhalb des Reservoirs befindet?",
answerOptions: ("Der Druck sinkt bei jedem Wasserhahn um $0.2 \, \text{bar}$.", "Die Druckänderung ist bei jedem Wasserhahn unterschiedlich."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)