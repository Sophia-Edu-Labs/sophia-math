#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
// The title "Overconfidence Bias" is shown on this slide
#v(40pt)
#only("1-")[Overconfidence bias occurs when investors \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) underestimate their knowledge 🤔]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) overestimate their knowledge 🧐]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) avoid risks 😨]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) follow market trends 📈]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on overconfidence bias. Overconfidence bias occurs when investors...")]
#only("2")[#voiceover("underestimate their knowledge,")]
#only("3")[#voiceover("overestimate their knowledge,")]
#only("4")[#voiceover("avoid risks,")]
#only("5")[#voiceover("or follow market trends?")]
]#questionDef(
questionText: "Overconfidence bias occurs when investors _____.",
answerOptions: ("underestimate their knowledge", "overestimate their knowledge", "avoid risks", "follow market trends"),
correctAnswerIndex: 1,
)