#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
// The title "Hicks Decomposition" is shown on this slide
#v(40pt)
#only("1-")[In a Hicks Decomposition graph, what do indifference curves represent?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Levels of income 💰]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Levels of utility 😊]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Price levels 💲]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Quantity levels 📊]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of Hicks Decomposition graphs. In these graphs, what do the indifference curves represent?")]
#only("2")[#voiceover("Do they represent levels of income,")]
#only("3")[#voiceover("or do they represent levels of utility,")]
#only("4")[#voiceover("or maybe they represent price levels,")]
#only("5")[#voiceover("or do they represent quantity levels?")]
]#questionDef(
questionText: "In a Hicks Decomposition graph, what do indifference curves represent?",
answerOptions: ("Levels of income", "Levels of utility", "Price levels", "Quantity levels"),
correctAnswerIndex: 1,
)