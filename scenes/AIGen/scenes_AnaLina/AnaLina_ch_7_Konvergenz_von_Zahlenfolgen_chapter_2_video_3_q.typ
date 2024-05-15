#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Zahlenfolge]
#v(40pt)
#only("1-")[
Betrachte die Zahlenfolge:
]
#v(20pt)
#only("2-")[
$ a_n = n $
]
#only("1")[
#voiceover("Betrachte die folgende Zahlenfolge:")
]
#only("2")[
#voiceover("a sub n gleich n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Findet die Zahlenfolge $ a_n = n $ einen Grenzwert, wenn $ n $ gegen unendlich geht? 🤔
]
#only("1")[
#voiceover("Die Frage ist: Findet diese Zahlenfolge einen Grenzwert, wenn n gegen unendlich geht?")
]
]#questionDef(
  questionText: "Findet die Zahlenfolge $ a_n = n $ einen Grenzwert, wenn $ n $ gegen unendlich geht?",
  answerOptions: ("Ja", "Nein"),
  correctAnswerIndex: 1,
)