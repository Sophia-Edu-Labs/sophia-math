#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Common Biases in Financial Decision-Making]
#v(40pt)
#only("1-")[Which of the following is a common bias in financial decision-making?]
#v(40pt)
#only("2-")[a) Overconfidence]
#v(10pt)
#only("3-")[b) Confirmation]
#v(10pt)
#only("4-")[c) Loss aversion]
#v(10pt)
#only("5-")[d) All of the above]
#only("1")[#voiceover("Let's test your knowledge on common biases in financial decision-making. Which of the following is a common bias?")]
#only("2")[#voiceover("Is it overconfidence,")]
#only("3")[#voiceover("or confirmation bias,")]
#only("4")[#voiceover("or loss aversion,")]
#only("5")[#voiceover("or are all of the above common biases in financial decision-making?")]
]#questionDef(
questionText: "Which of the following is a common bias in financial decision-making?",
answerOptions: ("Overconfidence", "Confirmation", "Loss aversion", "All of the above"),
correctAnswerIndex: 3,
)