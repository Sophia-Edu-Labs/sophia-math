#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Variance in a Data Set]
// The title "Variance in a Data Set" is shown on this slide
#v(40pt)
#only("1-")[What does variance measure in a data set? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Central tendency]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Spread around the mean]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Maximum value]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Minimum value]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of variance. What does variance measure in a data set?")]
#only("2")[#voiceover("Does it measure the central tendency,")]
#only("3")[#voiceover("or the spread around the mean,")]
#only("4")[#voiceover("or the maximum value in the data set,")]
#only("5")[#voiceover("or the minimum value in the data set?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What does variance measure in a data set?", 
answerOptions: ("Central tendency", "Spread around the mean", "Maximum value", "Minimum value"),
correctAnswerIndex: 1,
)