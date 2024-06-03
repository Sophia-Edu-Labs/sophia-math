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
#only("1-")[What is overconfidence bias?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Underestimating one's abilities]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Overestimating one's abilities]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Accurate self-assessment]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on overconfidence bias. What is overconfidence bias?")]
#only("2")[#voiceover("Is it underestimating one's abilities,")]
#only("3")[#voiceover("or is it overestimating one's abilities,")]
#only("4")[#voiceover("or maybe it's accurate self-assessment,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is overconfidence bias?",
answerOptions: ("Underestimating one's abilities", "Overestimating one's abilities", "Accurate self-assessment", "None of the above"),
correctAnswerIndex: 1,
)