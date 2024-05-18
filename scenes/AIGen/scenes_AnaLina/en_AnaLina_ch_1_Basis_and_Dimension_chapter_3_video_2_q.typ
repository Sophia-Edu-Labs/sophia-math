#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding a Basis]
// The title "Finding a Basis" is shown on this slide
#v(40pt)
#only("1-")[To find a basis for a vector space, we can start with a set of vectors that \_\_\_\_\_ the space and remove any linearly \_\_\_\_\_ vectors.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) span, dependent]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) span, independent]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) do not span, dependent]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) do not span, independent]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("To find a basis for a vector space, we can start with a set of vectors that blank the space and remove any linearly blank vectors.")]
#only("2")[#voiceover("Is it a) span, dependent,")]
#only("3")[#voiceover("or b) span, independent,")]
#only("4")[#voiceover("or c) do not span, dependent,")]
#only("5")[#voiceover("or d) do not span, independent?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "To find a basis for a vector space, we can start with a set of vectors that \_\_\_\_\_ the space and remove any linearly \_\_\_\_\_ vectors.",
answerOptions: ("span, dependent", "span, independent", "do not span, dependent", "do not span, independent"),
correctAnswerIndex: 0,
)