#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hindsight Bias]
// The title "Hindsight Bias" is shown on this slide
#v(40pt)
#only("1-")[How can hindsight bias affect financial decisions? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) It leads to accurate predictions 🎯]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) It leads to overconfidence in predicting future events 🔮]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) It has no effect 🤷]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) It improves rationality 🧠]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of hindsight bias. How can hindsight bias affect financial decisions?")]
#only("2")[#voiceover("Does it lead to accurate predictions,")]
#only("3")[#voiceover("or does it lead to overconfidence in predicting future events,")]
#only("4")[#voiceover("or does it have no effect at all,")]
#only("5")[#voiceover("or does it improve rationality?")]
]#questionDef(
questionText: "How can hindsight bias affect financial decisions?",
answerOptions: ("It leads to accurate predictions", "It leads to overconfidence in predicting future events", "It has no effect", "It improves rationality"),
correctAnswerIndex: 1,
)