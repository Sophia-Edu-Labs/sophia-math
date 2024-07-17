#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency Comparison]
// The title "Relative Frequency Comparison" is shown on this slide
#v(40pt)
#only("1-")[Comparing the two regions, which has a higher relative frequency of deaths?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) First region]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Second region]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Both are the same]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Insufficient data]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of relative frequency. Comparing the two regions, which has a higher relative frequency of deaths?")]
#only("2")[#voiceover("Is it the first region,")]
#only("3")[#voiceover("or is it the second region,")]
#only("4")[#voiceover("or maybe both regions have the same relative frequency of deaths,")]
#only("5")[#voiceover("or do we have insufficient data to determine this?")]
]

//Type: MC 
#questionDef( 
questionText: "Comparing the two regions, which has a higher relative frequency of deaths?", 
answerOptions: ("First region", "Second region", "Both are the same", "Insufficient data"),
correctAnswerIndex: 2 
)