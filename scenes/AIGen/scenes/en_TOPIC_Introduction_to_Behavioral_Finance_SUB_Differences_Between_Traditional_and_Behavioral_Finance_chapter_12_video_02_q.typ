#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior]
// The title "Herd Behavior" is shown on this slide
#v(40pt)
#only("1-")[Herd behavior occurs when individuals \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) make independent decisions]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) follow the actions of a larger group]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) rely on heuristics]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) avoid risks]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on herd behavior. Herd behavior occurs when individuals blank.")]
#only("2")[#voiceover("Does it occur when individuals make independent decisions,")]
#only("3")[#voiceover("or when they follow the actions of a larger group,")]
#only("4")[#voiceover("or when they rely on heuristics,")]
#only("5")[#voiceover("or when they avoid risks?")]
]#questionDef(
questionText: "Herd behavior occurs when individuals ______ .",
answerOptions: ("make independent decisions", "follow the actions of a larger group", "rely on heuristics", "avoid risks"),
correctAnswerIndex: 1,
)