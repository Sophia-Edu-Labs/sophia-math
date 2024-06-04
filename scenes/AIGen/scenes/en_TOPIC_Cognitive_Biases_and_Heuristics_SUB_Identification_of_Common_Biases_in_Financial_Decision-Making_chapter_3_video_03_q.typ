#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
#only("1-")[How can loss aversion affect financial decisions? 🤔]
#v(40pt)
#only("2-")[a) It leads to risk-seeking behavior 🎲]
#v(10pt)
#only("3-")[b) It leads to risk-averse behavior 🛡]
#v(10pt)
#only("4-")[c) It has no effect ❌]
#v(10pt)
#only("5-")[d) It improves decision-making ✅]

#only("1")[#voiceover("Let's test your understanding of loss aversion. How can loss aversion affect financial decisions?")]
#only("2")[#voiceover("Does it lead to risk-seeking behavior, where people are more willing to take risks?")]
#only("3")[#voiceover("Or does it lead to risk-averse behavior, where people try to avoid losses?")]
#only("4")[#voiceover("Maybe it has no effect on financial decisions at all?")]
#only("5")[#voiceover("Or does it improve decision-making, leading to better financial choices?")]
]#questionDef(
questionText: "How can loss aversion affect financial decisions?",
answerOptions: ("It leads to risk-seeking behavior", "It leads to risk-averse behavior", "It has no effect", "It improves decision-making"),
correctAnswerIndex: 1,
)