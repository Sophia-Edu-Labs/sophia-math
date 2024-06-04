#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Heuristics in Behavioral Finance]
// The title "Heuristics in Behavioral Finance" is shown on this slide
#v(40pt)
#only("1-")[Heuristics are \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) complex algorithms 🧩]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) mental shortcuts 🧠]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) market trends 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) investment strategies 💰]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on heuristics in behavioral finance. Heuristics are ...")]
#only("2")[#voiceover("Are they complex algorithms,")]
#only("3")[#voiceover("or are they mental shortcuts,")]
#only("4")[#voiceover("or maybe market trends,")]
#only("5")[#voiceover("or are they investment strategies?")]
]#questionDef(
questionText: "Heuristics are _ _ _ _ _ .",
answerOptions: ("complex algorithms", "mental shortcuts", "maybe market trends", "investment strategies"),
correctAnswerIndex: 1,
)