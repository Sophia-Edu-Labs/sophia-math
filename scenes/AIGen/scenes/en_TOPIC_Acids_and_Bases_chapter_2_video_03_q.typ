#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Bases]
#v(40pt)
#only("1-")[Which of the following is #text(weight: "bold")[NOT] a property of bases?]
#v(40pt)
#only("2-")[a) Bitter taste]
#v(10pt)
#only("3-")[b) Conduct electricity]
#v(10pt)
#only("4-")[c) React with metals to produce hydrogen gas]
#v(10pt)
#only("5-")[d) Feel slippery]
#only("1")[#voiceover("Let's test your knowledge on the properties of bases. Which of the following is NOT a property of bases?")]
#only("2")[#voiceover("Is it a bitter taste,")]
#only("3")[#voiceover("or the ability to conduct electricity,")]
#only("4")[#voiceover("or maybe reacting with metals to produce hydrogen gas,")]
#only("5")[#voiceover("or feeling slippery?")]
]#questionDef(
questionText: "Which of the following is \textbf{NOT} a property of bases?",
answerOptions: ("Bitter taste", "Conduct electricity", "React with metals to produce hydrogen gas", "Feel slippery"),
correctAnswerIndex: 2,
)