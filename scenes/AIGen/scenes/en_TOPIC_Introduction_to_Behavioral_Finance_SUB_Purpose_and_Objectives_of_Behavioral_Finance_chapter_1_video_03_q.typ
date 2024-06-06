#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
// The title "Behavioral Finance" is shown on this slide
#v(40pt)
#only("1-")[Behavioral Finance aims to explain why investors often make decisions that are \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) rational 🧠]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) optimal ✅]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) irrational 🤪]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) predictable 🔮]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of Behavioral Finance. Behavioral Finance aims to explain why investors often make decisions that are blank.")]
#only("2")[#voiceover("Are these decisions rational,")]
#only("3")[#voiceover("or are they optimal,")]
#only("4")[#voiceover("or maybe irrational,")]
#only("5")[#voiceover("or are they predictable?")]
]#questionDef(
questionText: "Behavioral Finance aims to explain why investors often make decisions that are _____.",
answerOptions: ("rational", "optimal", "irrational", "predictable"),
correctAnswerIndex: 2
)