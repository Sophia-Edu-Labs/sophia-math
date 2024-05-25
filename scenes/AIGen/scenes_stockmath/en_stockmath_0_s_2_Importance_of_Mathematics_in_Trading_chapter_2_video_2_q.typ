#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mathematics in Stock Trading]
// The title "Mathematics in Stock Trading" is shown on this slide
#v(40pt)
#only("1-")[What role does mathematics play in stock trading?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Predicting weather 🌤️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Designing clothes 👗]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Analyzing stock prices 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Cooking recipes 🍳]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the role of mathematics in stock trading. What role does mathematics play in stock trading?")]
#only("2")[#voiceover("Is it used for predicting weather,")]
#only("3")[#voiceover("or for designing clothes,")]
#only("4")[#voiceover("or maybe for analyzing stock prices,")]
#only("5")[#voiceover("or is it used for cooking recipes?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What role does mathematics play in stock trading?",
answerOptions: ("Predicting weather", "Designing clothes", "Analyzing stock prices", "Cooking recipes"),
correctAnswerIndex: 2,
)