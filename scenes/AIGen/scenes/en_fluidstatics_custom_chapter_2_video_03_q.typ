#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Force on Dam Sections]
// The title "Force on Dam Sections" is shown on this slide
#v(40pt)
#only("1-")[How does the force on other sections of the same size but different positions compare?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Greater]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Smaller]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Equal]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Cannot be determined]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's consider a question about the forces acting on a dam. How does the force on other sections of the dam, which have the same size but are at different positions, compare?")]
#only("2")[#voiceover("Is the force greater on sections that are deeper down,")]
#only("3")[#voiceover("or is the force smaller on sections that are deeper down,")]
#only("4")[#voiceover("or is the force equal on all sections of the same size, regardless of their position,")]
#only("5")[#voiceover("or can it not be determined from the given information?")]
]#questionDef(
questionText: "How does the force on other sections of the same size but different positions compare?",
answerOptions: ("Greater", "Smaller", "Equal", "Cannot be determined"),
correctAnswerIndex: 0,
)