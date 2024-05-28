#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Practical Applications of Hicks Decomposition]
// The title "Practical Applications of Hicks Decomposition" is shown on this slide
#v(40pt)
#only("1-")[Hicks Decomposition is useful for analyzing \_\_\_\_\_. 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) consumer behavior 🛍️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) firm production 🏭]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) market equilibrium ⚖️]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) government policy 🏛️]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the practical applications of Hicks Decomposition. Hicks Decomposition is useful for analyzing...")]
#only("2")[#voiceover("Is it useful for analyzing consumer behavior,")]
#only("3")[#voiceover("or is it useful for analyzing firm production,")]
#only("4")[#voiceover("or maybe it's useful for analyzing market equilibrium,")]
#only("5")[#voiceover("or is it useful for analyzing government policy?")]
]#questionDef(
questionText: "Hicks Decomposition is useful for analyzing $\underline{\hspace{1cm}}$.",
answerOptions: ("consumer behavior", "firm production", "market equilibrium", "government policy"),
correctAnswerIndex: 0,
)