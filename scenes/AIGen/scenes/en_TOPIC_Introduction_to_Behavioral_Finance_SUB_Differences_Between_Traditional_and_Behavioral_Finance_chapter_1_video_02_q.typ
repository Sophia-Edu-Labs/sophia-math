#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
// The title "Behavioral Finance" is shown on this slide
#v(40pt)
#only("1-")[Behavioral finance studies how \_\_\_\_\_ factors affect financial decisions.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) economic]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) psychological]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) technical]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) mathematical]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on behavioral finance. Behavioral finance studies how blank factors affect financial decisions.")]
#only("2")[#voiceover("Is it economic factors,")]
#only("3")[#voiceover("or psychological factors,")]
#only("4")[#voiceover("or maybe technical factors,")]
#only("5")[#voiceover("or mathematical factors?")]
]#questionDef(
questionText: "Behavioral finance studies how _ _ _ _ factors affect financial decisions.",
answerOptions: ("economic", "psychological", "technical", "mathematical"),
correctAnswerIndex: 1,
)