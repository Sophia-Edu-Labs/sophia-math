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
#only("1-")[Traditional finance assumes that investors are \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) irrational]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) rational]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) emotional]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) unpredictable]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on traditional finance. Traditional finance assumes that investors are blank.")]
#only("2")[#voiceover("Are investors assumed to be irrational,")]
#only("3")[#voiceover("or are they assumed to be rational,")]
#only("4")[#voiceover("or maybe they are assumed to be emotional,")]
#only("5")[#voiceover("or are they assumed to be unpredictable?")]
]#questionDef(
questionText: "Traditional finance assumes that investors are ____.",
answerOptions: ("irrational", "rational", "emotional", "unpredictable"),
correctAnswerIndex: 1,
)