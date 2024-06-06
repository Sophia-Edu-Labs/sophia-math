#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Investment Strategies]
// The title "Investment Strategies" is shown on this slide
#v(40pt)
#only("1-")[Traditional finance suggests \_\_\_\_ investment strategies.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) active]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) passive]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) speculative]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) high-risk]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on investment strategies in traditional finance. Traditional finance suggests blank investment strategies.")]
#only("2")[#voiceover("Does it suggest active investment strategies,")]
#only("3")[#voiceover("or does it suggest passive investment strategies,")]
#only("4")[#voiceover("or maybe speculative investment strategies,")]
#only("5")[#voiceover("or does it suggest high-risk investment strategies?")]
]#questionDef(
questionText: "Traditional finance suggests ______ investment strategies.",
answerOptions: ("active", "passive", "speculative", "high-risk"),
correctAnswerIndex: 1,
)