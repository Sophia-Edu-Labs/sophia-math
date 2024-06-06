#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Investment Strategies]
#v(40pt)
#only("1-")[Behavioral finance suggests \_\_\_\_ investment strategies to exploit market inefficiencies.]
#v(40pt)
#only("2-")[a) passive 🛌]
#v(10pt)
#only("3-")[b) conservative 🧐]
#v(10pt)
#only("4-")[c) active 🏃‍♂️]
#v(10pt)
#only("5-")[d) low-risk 🐢]

#only("1")[#voiceover("Let's test your knowledge on behavioral finance. Behavioral finance suggests blank investment strategies to exploit market inefficiencies.")]
#only("2")[#voiceover("Does it suggest passive investment strategies,")]
#only("3")[#voiceover("or conservative investment strategies,")]
#only("4")[#voiceover("or maybe active investment strategies,")]
#only("5")[#voiceover("or does it suggest low-risk investment strategies?")]
]#questionDef(
questionText: "Behavioral finance suggests \\textbf{active} investment strategies to exploit market inefficiencies.",
answerOptions: ("passive", "conservative", "active", "low-risk"),
correctAnswerIndex: 2,
)