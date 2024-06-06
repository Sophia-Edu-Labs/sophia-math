#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance and Market Efficiency]
#v(40pt)
#only("1-")[According to behavioral finance, markets are \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) always efficient]
#v(10pt)
#only("3-")[b) never efficient]
#v(10pt)
#only("4-")[c) sometimes inefficient]
#v(10pt)
#only("5-")[d) always predictable]
#only("1")[#voiceover("Let's test your knowledge on behavioral finance and market efficiency. According to behavioral finance, markets are blank.")]
#only("2")[#voiceover("Are they always efficient,")]
#only("3")[#voiceover("or are they never efficient,")]
#only("4")[#voiceover("or are they sometimes inefficient,")]
#only("5")[#voiceover("or are they always predictable?")]
]#questionDef(
questionText: "According to behavioral finance, markets are _____.",
answerOptions: ("always efficient", "never efficient", "sometimes inefficient", "always predictable"),
correctAnswerIndex: 2,
)