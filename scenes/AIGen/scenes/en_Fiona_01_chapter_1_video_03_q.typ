#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Drawing a 2]
// The title "Relative Frequency of Drawing a 2" is shown on this slide
#v(40pt)
#only("1-")[What is the relative frequency of drawing a 2?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 0.1]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 0.15]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 0.2]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) 0.25]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on relative frequency. What is the relative frequency of drawing a 2?")]
#only("2")[#voiceover("Is it 0.1,")]
#only("3")[#voiceover("or is it 0.15,")]
#only("4")[#voiceover("or maybe 0.2,")]
#only("5")[#voiceover("or is it 0.25?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the relative frequency of drawing a $2$?", 
answerOptions: ("$0.1$", "$0.15$", "$0.2$", "$0.25$"),
correctAnswerIndex: 2 
)