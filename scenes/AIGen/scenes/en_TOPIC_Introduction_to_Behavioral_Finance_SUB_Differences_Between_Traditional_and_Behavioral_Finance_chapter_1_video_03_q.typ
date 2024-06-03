#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance 🧠💰]
// The title "Behavioral Finance" with emojis is shown on this slide
#v(40pt)
#only("1-")[Behavioral finance suggests that investors are \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) always rational 🤔]
// Answer option a) with a thinking emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) always irrational 🙃]
// Answer option b) with an upside-down face emoji is shown from slide 3 onward
#v(10pt)
#only("4-")[c) influenced by biases 🧐]
// Answer option c) with a monocle face emoji is shown from slide 4 onward
#v(10pt)
#only("5-")[d) unaffected by emotions 😐]
// Answer option d) with a neutral face emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on behavioral finance. Behavioral finance suggests that investors are...")]
#only("2")[#voiceover("always rational,")]
#only("3")[#voiceover("or always irrational,")]
#only("4")[#voiceover("or influenced by biases,")]
#only("5")[#voiceover("or unaffected by emotions?")]
]#questionDef(
questionText: "Behavioral finance suggests that investors are _____.",
answerOptions: ("always rational", "always irrational", "influenced by biases", "unaffected by emotions"),
correctAnswerIndex: 2,
)