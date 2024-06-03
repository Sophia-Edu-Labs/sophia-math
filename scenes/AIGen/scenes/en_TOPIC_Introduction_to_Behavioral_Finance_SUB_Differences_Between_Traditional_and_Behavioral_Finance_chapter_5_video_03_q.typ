#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
#only("1-")[Overconfidence bias can lead to \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) better investment decisions 🤔]
#v(10pt)
#only("3-")[b) more accurate predictions 🎯]
#v(10pt)
#only("4-")[c) excessive trading 📈]
#v(10pt)
#only("5-")[d) reduced risk 📉]

#only("1")[#voiceover("Let's test your knowledge on overconfidence bias. Overconfidence bias can lead to...")]
#only("2")[#voiceover("Better investment decisions?")]
#only("3")[#voiceover("More accurate predictions?")]
#only("4")[#voiceover("Excessive trading?")]
#only("5")[#voiceover("Or reduced risk?")]
]#questionDef(
questionText: "Overconfidence bias can lead to $_____$.",
answerOptions: ("better investment decisions", "more accurate predictions", "excessive trading", "reduced risk"),
correctAnswerIndex: 2
)