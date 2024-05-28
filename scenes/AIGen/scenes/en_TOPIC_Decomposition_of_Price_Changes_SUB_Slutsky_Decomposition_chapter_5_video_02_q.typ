#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition 📊]
// The title "Slutsky Decomposition" with a graph emoji is shown on this slide
#v(40pt)
#only("1-")[Slutsky Decomposition can be illustrated graphically using \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) supply and demand curves 📈]
// Answer option a) with a chart increasing emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) production possibility frontiers 🏭]
// Answer option b) with a factory emoji is shown from slide 3 onward
#v(10pt)
#only("4-")[c) indifference curves and budget constraints 💰]
// Answer option c) with a money bag emoji is shown from slide 4 onward
#v(10pt)
#only("5-")[d) marginal cost curves 💸]
// Answer option d) with a money with wings emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on Slutsky Decomposition. Slutsky Decomposition can be illustrated graphically using what?")]
#only("2")[#voiceover("Is it supply and demand curves,")]
#only("3")[#voiceover("or production possibility frontiers,")]
#only("4")[#voiceover("or indifference curves and budget constraints,")]
#only("5")[#voiceover("or is it marginal cost curves?")]
]#questionDef(
questionText: "Slutsky Decomposition can be illustrated graphically using ____.",
answerOptions: ("supply and demand curves", "production possibility frontiers", "indifference curves and budget constraints", "marginal cost curves"),
correctAnswerIndex: 2,
)