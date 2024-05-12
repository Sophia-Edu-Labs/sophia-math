#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Indicators]
// The title "Technical Indicators" is shown on this slide
#v(40pt)
#only("1-")[What do technical indicators primarily analyze to predict stock price movements? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Economic indicators 📈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Historical stock prices and volume 📊]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) CEO decisions 👨‍💼]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Interest rates 💸]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on technical indicators. What do technical indicators primarily analyze to predict stock price movements?")]
#only("2")[#voiceover("Do they analyze economic indicators,")]
#only("3")[#voiceover("or historical stock prices and volume,")]
#only("4")[#voiceover("or maybe CEO decisions,")]
#only("5")[#voiceover("or do they analyze interest rates?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What do technical indicators primarily analyze to predict stock price movements?",
answerOptions: ("Economic indicators", "Historical stock prices and volume", "CEO decisions", "Interest rates"),
correctAnswerIndex: 1,
)