#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
// The title "Representativeness Heuristic" is shown on this slide
#v(40pt)
#only("1-")[How can the representativeness heuristic affect financial decisions? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) It leads to accurate probability assessment 📊]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) It leads to ignoring base rates 🙈]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) It has no effect 🤷]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) It improves rationality 🧠]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the representativeness heuristic. How can this heuristic affect financial decisions?")]
#only("2")[#voiceover("Does it lead to accurate probability assessment,")]
#only("3")[#voiceover("or does it lead to ignoring base rates,")]
#only("4")[#voiceover("or perhaps it has no effect at all,")]
#only("5")[#voiceover("or does it improve rationality in decision making?")]
]#questionDef(
questionText: "How can the representativeness heuristic affect financial decisions?",
answerOptions: ("It leads to accurate probability assessment", "It leads to ignoring base rates", "It has no effect", "It improves rationality"),
correctAnswerIndex: 1,
)