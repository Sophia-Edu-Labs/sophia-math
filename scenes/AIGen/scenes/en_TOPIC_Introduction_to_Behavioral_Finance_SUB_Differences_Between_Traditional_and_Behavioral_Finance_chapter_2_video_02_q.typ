#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationality in Traditional Finance]
// The title "Rationality in Traditional Finance" is shown on this slide
#v(40pt)
#only("1-")[In traditional finance, rationality means investors make decisions to \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) minimize risk]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) maximize utility]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) follow trends]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) avoid losses]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on rationality in traditional finance. In traditional finance, rationality means investors make decisions to blank.")]
#only("2")[#voiceover("Is it to minimize risk,")]
#only("3")[#voiceover("or is it to maximize utility,")]
#only("4")[#voiceover("or maybe to follow trends,")]
#only("5")[#voiceover("or is it to avoid losses?")]
]#questionDef(
questionText: "In traditional finance, rationality means investors make decisions to ____.", 
answerOptions: ("minimize risk", "maximize utility", "follow trends", "avoid losses"),
correctAnswerIndex: 1,
)