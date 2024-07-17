#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Students Who Like History]
// The title "Relative Frequency of Students Who Like History" is shown on this slide
#v(40pt)
#only("1-")[What is the relative frequency of students who like history?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 0.3]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 0.4]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 0.5]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) 0.6]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on relative frequency. What is the relative frequency of students who like history?")]
#only("2")[#voiceover("Is it 0.3,")]
#only("3")[#voiceover("or is it 0.4,")]
#only("4")[#voiceover("or maybe 0.5,")]
#only("5")[#voiceover("or is it 0.6?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the relative frequency of students who like history?", 
answerOptions: ("$0.3$", "$0.4$", "$0.5$", "$0.6$"),
correctAnswerIndex: 1 
)