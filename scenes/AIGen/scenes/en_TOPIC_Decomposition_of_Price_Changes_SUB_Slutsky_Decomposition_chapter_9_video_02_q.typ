#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition 🔍]
#v(40pt)
#only("1-")[Slutsky Decomposition separates the effect of a price change into \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) substitution and income effects 💰]
#v(10pt)
#only("3-")[b) supply and demand effects 📈📉]
#v(10pt)
#only("4-")[c) elasticity and inelasticity effects 📏]
#v(10pt)
#only("5-")[d) marginal and average effects 📊]
#only("1")[#voiceover("Let's test your knowledge on Slutsky Decomposition. Slutsky Decomposition separates the effect of a price change into what?")]
#only("2")[#voiceover("Is it substitution and income effects,")]
#only("3")[#voiceover("or is it supply and demand effects,")]
#only("4")[#voiceover("or maybe elasticity and inelasticity effects,")]
#only("5")[#voiceover("or is it marginal and average effects?")]
]#questionDef(
questionText: "Slutsky Decomposition separates the effect of a price change into ____.",
answerOptions: ("substitution and income effects", "supply and demand effects", "elasticity and inelasticity effects", "marginal and average effects"),
correctAnswerIndex: 0,
)