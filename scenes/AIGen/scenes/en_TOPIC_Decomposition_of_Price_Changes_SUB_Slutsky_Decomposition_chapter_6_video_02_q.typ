#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
// The title "Slutsky Decomposition" is shown on this slide
#v(40pt)
#only("1-")[If the price of good X decreases and the total quantity demanded increases, the substitution effect will \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) always be positive]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) always be negative]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) be zero]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) be undefined]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the Slutsky Decomposition. If the price of good X decreases and the total quantity demanded increases, the substitution effect will blank.")]
#only("2")[#voiceover("Will it always be positive,")]
#only("3")[#voiceover("or will it always be negative,")]
#only("4")[#voiceover("or will it be zero,")]
#only("5")[#voiceover("or will it be undefined?")]
]#questionDef(
questionText: "If the price of good $X$ decreases and the total quantity demanded increases, the substitution effect will ______ .",
answerOptions: ("always be positive", "always be negative", "be zero", "be undefined"),
correctAnswerIndex: 0,
)