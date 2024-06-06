#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Efficient Markets]
#v(40pt)
#only("1-")[In an efficient market, it is \_\_\_\_\_ to consistently achieve higher returns than the market average.]
#v(40pt)
#only("2-")[a) easy]
#v(10pt)
#only("3-")[b) impossible]
#v(10pt)
#only("4-")[c) likely]
#v(10pt)
#only("5-")[d) common]
#only("1")[#voiceover("Let's test your understanding of efficient markets. In an efficient market, it is blank to consistently achieve higher returns than the market average.")]
#only("2")[#voiceover("Is it easy,")]
#only("3")[#voiceover("or is it impossible,")]
#only("4")[#voiceover("or is it likely,")]
#only("5")[#voiceover("or is it common?")]
]#questionDef(
questionText: "In an efficient market, it is ______ to consistently achieve higher returns than the market average.",
answerOptions: ("easy", "impossible", "likely", "common"),
correctAnswerIndex: 1,
)