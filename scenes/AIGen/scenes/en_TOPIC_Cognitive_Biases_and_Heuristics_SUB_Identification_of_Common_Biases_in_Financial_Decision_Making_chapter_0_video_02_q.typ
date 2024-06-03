#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cognitive Biases]
// The title "Cognitive Biases" is shown on this slide
#v(40pt)
#only("1-")[What are cognitive biases? 🧠💭]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Logical fallacies 🤔]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Systematic patterns of deviation from norm 📈]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Random errors ❌]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above 🚫]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on cognitive biases. What are cognitive biases?")]
#only("2")[#voiceover("Are they logical fallacies,")]
#only("3")[#voiceover("or are they systematic patterns of deviation from the norm,")]
#only("4")[#voiceover("or maybe they are just random errors,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What are cognitive biases?",
answerOptions: ("Logical fallacies", "Systematic patterns of deviation from norm", "Random errors", "None of the above"),
correctAnswerIndex: 1,
)