#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
#v(40pt)
#only("1-")[Betrachten Sie die Folge:]
#v(20pt)
#only("2-")[$ a_n = n^2 $]
#only("1")[
#voiceover("Betrachten Sie die folgende Folge:")
]
#only("2")[
#voiceover("a sub n gleich n Quadrat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage 🤔]
#v(40pt)
#only("1-")[Divergiert die Folge $ a_n = n^2 $ ins Unendliche, wenn $ n → ∞ $? 🚀]
#only("1")[
#voiceover("Divergiert die Folge a sub n gleich n Quadrat ins Unendliche, wenn n gegen Unendlich geht?")
]
#v(20pt)
#only("2-")[Denken Sie über das Verhalten von $ n^2 $ nach, wenn $ n $ immer größer wird. 📈]
#only("2")[
#voiceover("Denken Sie über das Verhalten von n Quadrat nach, wenn n immer größer wird.")
]
]#questionDef(
questionText: "Divergiert die Folge $a_n = n^2$ ins Unendliche, wenn $n \\to \infty$?",
answerOptions: ("Ja", "Nein"),
correctAnswerIndex: 0
)