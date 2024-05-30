#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Objects with Same Density]
// The title "Objects with Same Density" is shown on this slide
#v(40pt)
#only("1-")[Three objects of different sizes have the same density.]
// The statement about the objects is shown from slide 1 onward
#v(20pt)
#only("2-")[The medium-sized object floats. 🌊]
// The information about the medium-sized object floating is shown from slide 2 onward
#v(40pt)
#only("3-")[Which other object also floats? 🤔]
// The question is shown from slide 3 onward
#v(40pt)
#only("4-")[a) the small one 🔍]
// Answer option a) is shown from slide 4 onward
#v(10pt)
#only("5-")[b) the large one 🔎]
// Answer option b) is shown from slide 5 onward
#v(10pt)
#only("6-")[c) both 🔍🔎]
// Answer option c) is shown from slide 6 onward
#v(10pt)
#only("7-")[d) neither ❌]
// Answer option d) is shown from slide 7 onward
#only("1")[#voiceover("Consider three objects of different sizes that have the same density.")]
#only("2")[#voiceover("We know that the medium-sized object floats in water.")]
#only("3")[#voiceover("Now the question is: Which other object also floats?")]
#only("4")[#voiceover("Is it the small object,")]
#only("5")[#voiceover("or the large object,")]
#only("6")[#voiceover("or do both of them float,")]
#only("7")[#voiceover("or does neither of them float?")]
]#questionDef(
questionText: "Of three differently sized objects with the same density, the one with the medium volume floats. Which other object also floats?",
answerOptions: ("the small one", "the large one", "both", "neither"),
correctAnswerIndex: 2,
)