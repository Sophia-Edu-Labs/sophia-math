#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Drawing a 4 or a 6]
// The title "Relative Frequency of Drawing a 4 or a 6" is shown on this slide
#v(40pt)
#only("1-")[Consider a standard deck of 52 cards.]
// The context is shown from slide 1 onward
#v(20pt)
#only("2-")[What is the relative frequency of drawing a 4 or a 6?]
// The question is shown from slide 2 onward
#v(40pt)
#only("3-")[a) 0.25]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) 0.3]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) 0.35]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) 0.4]
// Answer option d) is shown from slide 6 onward
#only("1")[#voiceover("Let's consider a standard deck of 52 cards.")]
#only("2")[#voiceover("What is the relative frequency of drawing a 4 or a 6?")]
#only("3")[#voiceover("Is it 0.25,")]
#only("4")[#voiceover("or is it 0.3,")]
#only("5")[#voiceover("or maybe 0.35,")]
#only("6")[#voiceover("or is it 0.4?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the relative frequency of drawing a $4$ or a $6$?", 
answerOptions: ("$0.25$", "$0.3$", "$0.35$", "$0.4$"),
correctAnswerIndex: 1 
)