#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion 📉]
#v(40pt)
#only("1-")[What is loss aversion?]
#v(40pt)
#only("2-")[a) Preferring gains over losses 💰]
#v(10pt)
#only("3-")[b) Preferring avoiding losses over acquiring gains 🛡️]
#v(10pt)
#only("4-")[c) Indifference to gains and losses 🤷]
#v(10pt)
#only("5-")[d) None of the above ❌]
#only("1")[#voiceover("Let's test your understanding of loss aversion. What does loss aversion refer to?")]
#only("2")[#voiceover("Is it preferring gains over losses,")]  
#only("3")[#voiceover("or preferring avoiding losses over acquiring gains,")]
#only("4")[#voiceover("or being indifferent to gains and losses,")]
#only("5")[#voiceover("or none of the above?")]
]#questionDef(
questionText: "What is loss aversion?",
answerOptions: ("Preferring gains over losses", "Preferring avoiding losses over acquiring gains", "Indifference to gains and losses", "None of the above"),
correctAnswerIndex: 1,
)