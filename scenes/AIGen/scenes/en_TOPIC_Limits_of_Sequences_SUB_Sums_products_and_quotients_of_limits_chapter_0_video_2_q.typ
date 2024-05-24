#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sequences 🔢]
#v(40pt)
#only("1-")[What is the limit of the sequence $a_n = 1/n$ as $n$ approaches infinity? 🤔]
#v(40pt)
#only("2-")[a) 1]
#v(10pt)
#only("3-")[b) 0]
#v(10pt)
#only("4-")[c) $infinity$]
#v(10pt)
#only("5-")[d) -1]

#only("1")[#voiceover("Let's test your understanding of limits of sequences. Consider the sequence a sub n equals 1 over n. What is the limit of this sequence as n approaches infinity?")]
#only("2")[#voiceover("Is the limit 1,")]
#only("3")[#voiceover("or is it 0,")]
#only("4")[#voiceover("or maybe infinity,")]
#only("5")[#voiceover("or is it negative 1?")]
]#questionDef(
questionText: "What is the limit of the sequence $a_n = \frac{1}{n}$ as $n$ approaches infinity?",
answerOptions: ("1", "0", "$infinity$", "-1"),
correctAnswerIndex: 1,
)