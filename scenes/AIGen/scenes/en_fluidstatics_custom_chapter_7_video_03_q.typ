#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Floating Platform Materials]
// The title "Floating Platform Materials" is shown on this slide
#v(40pt)
#only("1-")[Which material is best for constructing a floating platform? 🏗️]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Wood 🌳]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Concrete 🧱]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Steel 🔧]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Foam 🧽]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on floating platform materials. Which material is best for constructing a floating platform?")]
#only("2")[#voiceover("Is it wood,")]
#only("3")[#voiceover("or concrete,")]
#only("4")[#voiceover("or maybe steel,")]
#only("5")[#voiceover("or is it foam?")]
]#questionDef(
questionText: "Which material is best for constructing a floating platform?",
answerOptions: ("Wood", "Concrete", "Steel", "Foam"),
correctAnswerIndex: 3,
)