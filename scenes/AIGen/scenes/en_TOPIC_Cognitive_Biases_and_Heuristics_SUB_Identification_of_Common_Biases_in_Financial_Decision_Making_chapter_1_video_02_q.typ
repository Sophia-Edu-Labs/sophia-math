#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
#only("1-")[What is overconfidence bias? 🤔]
#v(40pt)
#only("2-")[a) Underestimating one's abilities 😔]
#v(10pt)
#only("3-")[b) Overestimating one's abilities 😎]
#v(10pt)
#only("4-")[c) Accurate self-assessment ✅]
#v(10pt)
#only("5-")[d) None of the above 🚫]
#only("1")[#voiceover("Let's test your knowledge on overconfidence bias. What exactly is overconfidence bias?")]
#only("2")[#voiceover("Is it underestimating one's own abilities,")]
#only("3")[#voiceover("or is it overestimating one's abilities,")]
#only("4")[#voiceover("or maybe accurately assessing oneself,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is overconfidence bias?", 
answerOptions: ("Underestimating one's abilities", "Overestimating one's abilities", "Accurate self-assessment", "None of the above"),
correctAnswerIndex: 1,
)