#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Wasserdruck-Übung]
// Der Titel "Wasserdruck-Übung" wird auf allen Folien angezeigt

#v(40pt)

#only("1-")[Ein Wasserbehälter hat drei Wasserhähne, die sich in unterschiedlichen Höhen relativ zu ihm befinden:]
// Die Beschreibung des Aufbaus beginnt ab Folie 1

#v(20pt)

#only("2-")[
- Hahn 1: 35 m darunter 🚰⬇]
#v(10pt)
#only("3-")[
- Hahn 2: 10 m darunter 🚰⬇]
#v(10pt)
#only("4-")[  
- Hahn 3: 3 m darüber 🚰⬆
]
// Die Positionen der Wasserhähne werden ab Folie 2 aufgelistet

#v(40pt)

#only("5-")[Berechne den Überdruck für jeden Hahn. 🤔]
// Die Frage wird auf Folie 5 gestellt

#only("1")[
#voiceover("Betrachte einen Wasserbehälter mit drei Wasserhähnen, die sich in unterschiedlichen Höhen relativ zu ihm befinden.")
]

#only("2")[
#voiceover("Der erste Hahn befindet sich 35 Meter unterhalb des Behälters.")  
]

#only("3")[
#voiceover("Der zweite Hahn ist 10 Meter darunter.")
]

#only("4")[
#voiceover("Und der dritte Hahn ist 3 Meter über dem Behälter.")   
]

#only("5")[
#voiceover("Deine Aufgabe ist es, den Überdruck für jeden dieser Hähne zu berechnen.")
]

]#questionDef(
questionText: "Berechne den Überdruck für jeden Hahn, der sich $35 \, \\text{m}$ darunter, $10 \, \\text{m}$ darunter und $3 \, \\text{m}$ über dem Wasserbehälter befindet.",
answerOptions: ("Die Überdrücke sind $3,4 \, \\text{bar}$, $1,0 \, \\text{bar}$ und $-0,3 \, \\text{bar}$ jeweils, oder eine gleichwertige Aussage.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)