#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Growth Models]
// The title "Growth Models" is shown on this slide
#v(40pt)
#only("1-")[What type of growth is indicated by a constant percentage increase?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Linear]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Exponential]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Logarithmic]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Polynomial]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of growth models. If a quantity increases by a constant percentage each time period, what type of growth is this?")]
#only("2")[#voiceover("Is it linear growth,")]
#only("3")[#voiceover("exponential growth,")]
#only("4")[#voiceover("logarithmic growth,")]
#only("5")[#voiceover("or polynomial growth?")]
]#questionDef(
questionText: "What type of growth is indicated by a constant percentage increase?",
answerOptions: ("Linear", "Exponential", "Logarithmic", "Polynomial"),
correctAnswerIndex: 1,
)