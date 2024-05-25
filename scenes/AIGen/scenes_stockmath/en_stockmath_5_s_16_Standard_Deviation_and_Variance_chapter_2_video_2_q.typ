#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation in Stock Market]
// The title "Standard Deviation in Stock Market" is shown on this slide
#v(40pt)
#only("1-")[In stock market analysis, high standard deviation indicates:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Less risk]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) More stability]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Higher volatility]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Fixed returns]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of standard deviation in the context of the stock market. In stock market analysis, what does a high standard deviation indicate?")]
#only("2")[#voiceover("Does it indicate less risk,")]
#only("3")[#voiceover("or more stability,")]
#only("4")[#voiceover("or higher volatility,")]
#only("5")[#voiceover("or fixed returns?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "In stock market analysis, high standard deviation indicates:",
answerOptions: ("Less risk", "More stability", "Higher volatility", "Fixed returns"),
correctAnswerIndex: 2,
)