#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Why do people engage in stock trading?]
// The question is shown on this slide
#v(40pt)
#only("1-")[a) For entertainment 🎭]
// Answer option a) is shown from slide 1 onward
#v(10pt)
#only("2-")[b) To make a profit 💰]
// Answer option b) is shown from slide 2 onward
#v(10pt)
#only("3-")[c) To lose money 📉]
// Answer option c) is shown from slide 3 onward
#v(10pt)
#only("4-")[d) None of the above ❌]
// Answer option d) is shown from slide 4 onward
#only("1")[#voiceover("Let's think about the motivations behind stock trading. Do people primarily engage in stock trading for entertainment,")]
#only("2")[#voiceover("or do they do it with the aim to make a profit,")]
#only("3")[#voiceover("or could it be that they actually want to lose money,")]
#only("4")[#voiceover("or is it none of the reasons mentioned?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Why do people engage in stock trading?", 
answerOptions: ("For entertainment", "To make a profit", "To lose money", "None of the above"),
correctAnswerIndex: 1,
)