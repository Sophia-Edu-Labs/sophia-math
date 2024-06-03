#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory]
// The title "Prospect Theory" is shown on this slide
#v(40pt)
#only("1-")[Prospect theory was developed by \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Fama and French]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Kahneman and Tversky]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Markowitz and Sharpe]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Merton and Scholes]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on prospect theory. Prospect theory was developed by whom?")]
#only("2")[#voiceover("Was it developed by Fama and French,")]
#only("3")[#voiceover("or was it developed by Kahneman and Tversky,")]
#only("4")[#voiceover("or maybe by Markowitz and Sharpe,")]
#only("5")[#voiceover("or was it developed by Merton and Scholes?")]
]#questionDef(
questionText: "Prospect theory was developed by _ _ _ _ _ .",
answerOptions: ("Fama and French", "Kahneman and Tversky", "Markowitz and Sharpe", "Merton and Scholes"),
correctAnswerIndex: 1,
)