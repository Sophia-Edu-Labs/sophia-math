#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Traveling to Europe]
// The title "Relative Frequency of Traveling to Europe" is shown on this slide
#v(40pt)
#only("1-")[What is the relative frequency of traveling to a European country (Spain, Germany, Italy)?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 0.89]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 0.95]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 0.68]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) 0.84]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of relative frequency. What is the relative frequency of traveling to a European country, specifically Spain, Germany, or Italy?")]
#only("2")[#voiceover("Is it 0.89,")]
#only("3")[#voiceover("or is it 0.95,")]
#only("4")[#voiceover("or maybe 0.68,")]
#only("5")[#voiceover("or is it 0.84?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the relative frequency of traveling to a European country (Spain, Germany, Italy)?", 
answerOptions: ("$0.89$", "$0.95$", "$0.68$", "$0.84$"),
correctAnswerIndex: 3 
)