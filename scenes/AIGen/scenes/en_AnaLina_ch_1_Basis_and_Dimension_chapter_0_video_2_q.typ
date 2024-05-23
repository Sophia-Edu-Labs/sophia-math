#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
// The title "Linear Independence" is shown on this slide
#v(40pt)
#only("1-")[A set of vectors is linearly independent if:]
// The question stem is shown from slide 1 onward
#v(40pt)
#only("2-")[a) At least one vector can be written as a linear combination of the others 🧮]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) No vector can be written as a linear combination of the others ❌]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) All vectors are equal 🟰]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above 🤷]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of linear independence. A set of vectors is linearly independent if:")]
#only("2")[#voiceover("At least one vector can be written as a linear combination of the others,")]
#only("3")[#voiceover("No vector can be written as a linear combination of the others,")]
#only("4")[#voiceover("All vectors are equal,")]
#only("5")[#voiceover("Or none of the above?")]
]#questionDef(
questionText: "A set of vectors is linearly independent if:",
answerOptions: ("At least one vector can be written as a linear combination of the others", "No vector can be written as a linear combination of the others", "All vectors are equal", "None of the above"),
correctAnswerIndex: 1,
)