#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Deaths]
// The title "Relative Frequency of Deaths" is shown on this slide
#v(40pt)
#only("1-")[What is the relative frequency of deaths?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 0.01]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 0.015]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 0.02]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) 0.025]
// Answer option d) is shown from slide 5 onward

#only("1")[#voiceover("Let's test your understanding of relative frequency. What is the relative frequency of deaths?")]
#only("2")[#voiceover("Is it 0.01,")]
#only("3")[#voiceover("or is it 0.015,")]
#only("4")[#voiceover("or maybe 0.02,")]
#only("5")[#voiceover("or is it 0.025?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the relative frequency of deaths?", 
answerOptions: ("$0.01$", "$0.015$", "$0.02$", "$0.025$"),
correctAnswerIndex: 1 
)