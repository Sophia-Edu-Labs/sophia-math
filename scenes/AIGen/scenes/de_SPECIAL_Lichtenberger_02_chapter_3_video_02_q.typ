#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Ballon 🎈 auf konstanter Höhe]
]

#v(40pt)

#only("2-")[
- Ballon steigt aufgrund der Auftriebskraft
]

#only("3-")[
- Auftrieb hängt von der Dichteunterschied ab
]

#only("4-")[
Welche Bedingung muss erfüllt sein, damit der Ballon auf konstanter Höhe schwebt? 🤔
]

#only("1")[
#voiceover("Betrachten wir einen Ballon, der auf konstanter Höhe in der Luft schwebt.")
]

#only("2")[
#voiceover("Wir wissen, dass Ballons aufgrund der auf sie wirkenden Auftriebskraft steigen.")
]

#only("3")[
#voiceover("Diese Auftriebskraft hängt vom Dichteunterschied zwischen dem Gas im Ballon und der umgebenden Luft ab.")
]

#only("4")[
#voiceover("Welche spezifische Bedingung muss also erfüllt sein, damit der Ballon eine konstante Höhe beibehält?")
]

]#questionDef(
  questionText: "Welche Bedingung muss erfüllt sein, damit ein Ballon auf konstanter Höhe schwebt?",
  answerOptions: ("Die Auftriebskraft muss dem Gewicht des Ballons entsprechen, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)