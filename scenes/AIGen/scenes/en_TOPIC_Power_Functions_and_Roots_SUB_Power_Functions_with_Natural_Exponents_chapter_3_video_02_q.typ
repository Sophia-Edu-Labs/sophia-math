#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function Behavior]
// The title "Power Function Behavior" is shown on this slide
#v(40pt)
#only("1-")[As $x$ approaches infinity, what happens to $f(x) = x^3$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Approaches zero 🔽]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Approaches infinity ♾️]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Approaches a constant 🔄]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Oscillates 〰️]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of power functions. As x approaches infinity, what happens to the function f of x equals x cubed?")]
#only("2")[#voiceover("Does it approach zero,")]
#only("3")[#voiceover("or does it approach infinity,")]
#only("4")[#voiceover("or maybe it approaches a constant value,")]
#only("5")[#voiceover("or does it oscillate?")]
]#questionDef(
questionText: "As $x$ approaches infinity, what happens to $f(x) = x^3$?",
answerOptions: ("Approaches zero", "Approaches infinity", "Approaches a constant", "Oscillates"),
correctAnswerIndex: 1,
)