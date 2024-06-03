#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Traditional Finance Assumptions]
#v(40pt)
#only("1-")[Traditional finance assumes that markets are \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) inefficient]
#v(10pt)
#only("3-")[b) unpredictable]
#v(10pt)
#only("4-")[c) efficient]
#v(10pt)
#only("5-")[d) random]
#only("1")[#voiceover("Let's test your knowledge on traditional finance assumptions. Traditional finance assumes that markets are blank.")]
#only("2")[#voiceover("Are markets assumed to be inefficient in traditional finance,")]
#only("3")[#voiceover("or are they assumed to be unpredictable,")]
#only("4")[#voiceover("or maybe they are assumed to be efficient,")]
#only("5")[#voiceover("or are they assumed to be random?")]
]#questionDef(
questionText: "Traditional finance assumes that markets are $\textbf{efficient}$.",
answerOptions: ("inefficient", "unpredictable", "efficient", "random"),
correctAnswerIndex: 2,
)