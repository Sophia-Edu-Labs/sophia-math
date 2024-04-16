#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[To find the area between two curves, which mathematical operation is used?]
#v(40pt)
#only("2-")[a) Differentiation]
#v(10pt)
#only("3-")[b) Integration]
#v(10pt)
#only("4-")[c) Summation]
#v(10pt)
#only("5-")[d) Multiplication]
#only("1")[#voiceover("To find the area between two curves, which mathematical operation is used?")]
#only("2")[#voiceover("Is it differentiation,")]
#only("3")[#voiceover("integration,")]
#only("4")[#voiceover("summation,")]
#only("5")[#voiceover("or multiplication?")]
]
#questionDef(
questionText: "To find the area between two curves, which mathematical operation is used?",
answerOptions: ("Differentiation", "Integration", "Summation", "Multiplication"),
correctAnswerIndex: 1
)