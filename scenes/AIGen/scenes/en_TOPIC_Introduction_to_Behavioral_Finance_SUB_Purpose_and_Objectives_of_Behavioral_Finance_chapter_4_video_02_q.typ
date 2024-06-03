#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Investor Behavior and Market Anomalies]
#v(40pt)
#only("1-")[What can biases in investor behavior lead to in financial markets?]
#v(40pt)
#only("2-")[a) Market efficiency]
#v(10pt)
#only("3-")[b) Market anomalies]
#v(10pt)
#only("4-")[c) Predictable trends]
#v(10pt)
#only("5-")[d) Stable prices]
#only("1")[#voiceover("Let's test your understanding of the impact of investor biases. What can biases in investor behavior lead to in financial markets?")]
#only("2")[#voiceover("Can they lead to market efficiency,")]
#only("3")[#voiceover("or can they cause market anomalies,")]
#only("4")[#voiceover("or maybe they result in predictable trends,")]
#only("5")[#voiceover("or do biases in investor behavior lead to stable prices?")]
]#questionDef(
questionText: "What can biases in investor behavior lead to in financial markets?",
answerOptions: ("Market efficiency", "Market anomalies", "Predictable trends", "Stable prices"),
correctAnswerIndex: 1,
)