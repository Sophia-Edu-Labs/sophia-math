#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Efficiency]
#v(40pt)
#only("1-")[Market efficiency assumes that investors are \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) irrational 🤪]
#v(10pt)
#only("3-")[b) influenced by biases 🧠]
#v(10pt)
#only("4-")[c) rational 🤔]
#v(10pt)
#only("5-")[d) unpredictable 🎲]

#only("1")[#voiceover("Let's test your understanding of market efficiency. Market efficiency assumes that investors are blank.")]
#only("2")[#voiceover("Are investors assumed to be irrational under market efficiency,")]
#only("3")[#voiceover("or are they assumed to be influenced by biases,")]
#only("4")[#voiceover("or are they assumed to be rational,")]
#only("5")[#voiceover("or are they assumed to be unpredictable?")]
]#questionDef(
questionText: "Market efficiency assumes that investors are \$_____\$.",
answerOptions: ("irrational", "influenced by biases", "rational", "unpredictable"),
correctAnswerIndex: 2,
)