#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance and Investor Behavior]
// The title "Behavioral Finance and Investor Behavior" is shown on this slide
#v(40pt)
#only("1-")[Behavioral Finance helps in understanding investor behavior that is \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) always rational]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) influenced by psychological factors]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) predictable]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) efficient]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of Behavioral Finance. Behavioral Finance helps in understanding investor behavior that is blank.")]
#only("2")[#voiceover("Is it investor behavior that is always rational,")]
#only("3")[#voiceover("or is it investor behavior that is influenced by psychological factors,")]
#only("4")[#voiceover("or maybe investor behavior that is predictable,")]
#only("5")[#voiceover("or is it investor behavior that is efficient?")]
]#questionDef(
questionText: "Behavioral Finance helps in understanding investor behavior that is _____.",
answerOptions: ("always rational", "influenced by psychological factors", "predictable", "efficient"),
correctAnswerIndex: 1,
)