#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis of a Vector Space]
// The title "Basis of a Vector Space" is shown on this slide
#v(40pt)
#only("1-")[A basis is a set of vectors that ____ a vector space.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) span]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) intersect]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) divide]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) none of the above]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the basis of a vector space. A basis is a set of vectors that blank a vector space.")]
#only("2")[#voiceover("Is it a set of vectors that span a vector space,")]
#only("3")[#voiceover("or is it a set of vectors that intersect a vector space,")]
#only("4")[#voiceover("or maybe a set of vectors that divide a vector space,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "A basis is a set of vectors that \\textbf{span} a vector space.",
answerOptions: ("span", "intersect", "divide", "none of the above"),
correctAnswerIndex: 0,
)