#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of $f(x) = x^2$]
#v(40pt)
#only("1-")[How does the graph of $f(x) = x^2$ look?]
#v(40pt)
#only("2-")[a) A straight line 📏]
#v(10pt)
#only("3-")[b) A parabola 🪂]
#v(10pt)
#only("4-")[c) A hyperbola 🌀]
#v(10pt)
#only("5-")[d) A circle ⚪]
#only("1")[#voiceover("Let's test your knowledge on the graph of a power function. How does the graph of f of x equals x squared look?")]
#only("2")[#voiceover("Is it a straight line,")]
#only("3")[#voiceover("or is it a parabola,")]
#only("4")[#voiceover("or maybe a hyperbola,")]
#only("5")[#voiceover("or is it a circle?")]
]#questionDef(
questionText: "How does the graph of $f(x) = x^2$ look?",
answerOptions: ("A straight line", "A parabola", "A hyperbola", "A circle"),
correctAnswerIndex: 1,
)