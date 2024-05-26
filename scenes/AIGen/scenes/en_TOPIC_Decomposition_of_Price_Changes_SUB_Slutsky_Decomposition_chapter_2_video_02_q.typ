#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect 💰]
#v(40pt)
#only("1-")[The income effect occurs when a price change affects the consumer's \_\_\_\_\_.] 
#v(40pt)
#only("2-")[a) nominal income]
#v(10pt)
#only("3-")[b) real income]
#v(10pt)  
#only("4-")[c) utility]
#v(10pt)
#only("5-")[d) preferences]
#only("1")[#voiceover("Let's test your understanding of the income effect. The income effect occurs when a price change affects the consumer's what?")]
#only("2")[#voiceover("Is it the consumer's nominal income,")]
#only("3")[#voiceover("or their real income,")]
#only("4")[#voiceover("or maybe their utility,")]
#only("5")[#voiceover("or is it their preferences?")]
]#questionDef(
questionText: "The income effect occurs when a price change affects the consumer's ________.",
answerOptions: ("nominal income", "real income", "utility", "preferences"),
correctAnswerIndex: 1,
)