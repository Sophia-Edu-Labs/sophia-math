#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation]
// The title "Standard Deviation" is shown on this slide
#v(40pt)
#only("1-")[Standard deviation is the square root of which of the following? 🤔]
// The question is shown from slide 1 onward
#v(40pt) 
#only("2-")[a) Mean 📊]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Median 📈]
// Answer option b) is shown from slide 3 onward  
#v(10pt)
#only("4-")[c) Mode 📉]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Variance 📏]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Standard deviation is the square root of which of the following?")]
#only("2")[#voiceover("Is it the square root of the mean,")]
#only("3")[#voiceover("or is it the square root of the median,")]  
#only("4")[#voiceover("or maybe the square root of the mode,")]
#only("5")[#voiceover("or is standard deviation the square root of the variance?")]
]#questionDef(
questionText: "Standard deviation is the square root of which of the following?",
answerOptions: ("Mean", "Median", "Mode", "Variance"),
correctAnswerIndex: 3
)