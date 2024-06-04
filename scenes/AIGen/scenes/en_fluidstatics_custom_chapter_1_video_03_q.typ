#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure Change]
#v(40pt)
#only("1-")[If the water level in the reservoir drops by 2 m, how does the pressure at the fourth floor change? 🤔]
#v(40pt)
#only("2-")[a) Increase by 0.2 bar ⬆]
#v(10pt)
#only("3-")[b) Decrease by 0.2 bar ⬇]
#v(10pt)
#only("4-")[c) Remain the same 🟰]
#v(10pt)
#only("5-")[d) Increase by 2 bar ⬆⬆]
#only("1")[#voiceover("Let's consider a scenario. If the water level in the reservoir drops by 2 meters, how does the pressure at the fourth floor change?")]
#only("2")[#voiceover("Does it increase by 0.2 bar,")]  
#only("3")[#voiceover("or does it decrease by 0.2 bar,")]
#only("4")[#voiceover("or does it remain the same,")]
#only("5")[#voiceover("or does it increase by 2 bar?")]
]#questionDef(
questionText: "If the water level in the reservoir drops by $2$ m, how does the pressure at the fourth floor change?", 
answerOptions: ("Increase by $0.2$ bar", "Decrease by $0.2$ bar", "Remain the same", "Increase by $2$ bar"),
correctAnswerIndex: 1
)