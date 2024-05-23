#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence of Sequences]
#v(40pt)
#only("1-")[A sequence converges if its terms approach a specific value as \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) n decreases]
#v(10pt)
#only("3-")[b) n stays constant]
#v(10pt)
#only("4-")[c) n goes to infinity]
#v(10pt)
#only("5-")[d) n oscillates]
#only("1")[#voiceover("Let's test your understanding of sequence convergence. A sequence converges if its terms approach a specific value as \_\_\_\_\_.")]
#only("2")[#voiceover("Is it as n decreases,")]
#only("3")[#voiceover("or as n stays constant,")]
#only("4")[#voiceover("or as n goes to infinity,")]
#only("5")[#voiceover("or as n oscillates?")]
]#questionDef(
questionText: "A sequence converges if its terms approach a specific value as $ n \\to \infty $.",
answerOptions: ("n decreases", "n stays constant", "n goes to infinity", "n oscillates"),
correctAnswerIndex: 2,
)