#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Spaces]
#v(40pt)
#only("1-")[Which of the following is #text(weight: "bold")[not] a vector space?]
#v(40pt)
#only("2-")[a) The set of all polynomials 📈]
#v(10pt)
#only("3-")[b) The set of all continuous functions 🌊]
#v(10pt)
#only("4-")[c) The set of all complex numbers ℂ]
#v(10pt) 
#only("5-")[d) The set of all non-negative real numbers ℝ⁺]
#only("1")[#voiceover("Let's test your knowledge on vector spaces. Which of the following is not a vector space?")]
#only("2")[#voiceover("Is it the set of all polynomials,")]
#only("3")[#voiceover("or the set of all continuous functions,")]
#only("4")[#voiceover("or maybe the set of all complex numbers,")]
#only("5")[#voiceover("or is it the set of all non-negative real numbers?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is not a vector space?",  
answerOptions: ("The set of all polynomials", "The set of all continuous functions", "The set of all complex numbers", "The set of all non-negative real numbers"),
correctAnswerIndex: 3,
)