#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
// The title "Graphing Power Functions" is shown on this slide
#v(40pt)
#only("1-")[What is the shape of the graph of $f(x) = x^3$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Parabola]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Line]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) S-curve]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Hyperbola]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on graphing power functions. What is the shape of the graph of f of x equals x cubed?")]
#only("2")[#voiceover("Is it a parabola,")]
#only("3")[#voiceover("or is it a line,")]
#only("4")[#voiceover("or maybe an S-curve,")]
#only("5")[#voiceover("or is it a hyperbola?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the shape of the graph of $f(x) = x^3$?", 
answerOptions: ("Parabola", "Line", "S-curve", "Hyperbola"),
correctAnswerIndex: 2 
)