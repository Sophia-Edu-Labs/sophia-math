#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
// The title "Anchoring Bias" is shown on this slide
#v(40pt)
#only("1-")[Anchoring bias occurs when individuals rely too heavily on \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) past experiences 🕰️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) emotions 😀]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) an initial piece of information ℹ️]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) market trends 📈]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of anchoring bias. Anchoring bias occurs when individuals rely too heavily on...")]
#only("2")[#voiceover("past experiences,")]
#only("3")[#voiceover("emotions,")]
#only("4")[#voiceover("an initial piece of information,")]
#only("5")[#voiceover("or market trends?")]
]#questionDef(
questionText: "Anchoring bias occurs when individuals rely too heavily on $______$.",
answerOptions: ("past experiences", "emotions", "an initial piece of information", "market trends"),
correctAnswerIndex: 2,
)