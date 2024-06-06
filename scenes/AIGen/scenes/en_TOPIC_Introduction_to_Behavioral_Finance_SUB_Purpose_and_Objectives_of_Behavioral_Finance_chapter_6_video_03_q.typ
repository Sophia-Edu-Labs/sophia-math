#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Traditional Finance Assumptions]
// The title "Traditional Finance Assumptions" is shown on this slide
#v(40pt)
#only("1-")[According to Traditional Finance, investors are assumed to be \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt) 
#only("2-")[a) irrational 🤪]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) influenced by biases 🧠]
// Answer option b) is shown from slide 3 onward 
#v(10pt)
#only("4-")[c) rational 🤔]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) unpredictable 🎲]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on Traditional Finance. According to Traditional Finance, investors are assumed to be blank.")]
#only("2")[#voiceover("Are they assumed to be irrational,")]  
#only("3")[#voiceover("or are they assumed to be influenced by biases,")]
#only("4")[#voiceover("or maybe they are assumed to be rational,")]
#only("5")[#voiceover("or are they assumed to be unpredictable?")]
]#questionDef(
questionText: "According to Traditional Finance, investors are assumed to be ____.",
answerOptions: ("irrational", "influenced by biases", "rational", "unpredictable"),
correctAnswerIndex: 2
)