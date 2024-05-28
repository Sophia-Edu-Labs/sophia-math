#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[What does the substitution effect represent in a Hicks Decomposition graph? 🤔]
#v(40pt)
#only("2-")[a) Change in consumption due to a change in real income 💰]
#v(10pt)
#only("3-")[b) Change in consumption keeping utility constant 📈]
#v(10pt)
#only("4-")[c) Change in consumption due to a change in preferences 🧐]
#v(10pt)
#only("5-")[d) Change in consumption due to a change in quantity demanded 📊]
#only("1")[#voiceover("Let's test your understanding of Hicks Decomposition. What does the substitution effect represent in a Hicks Decomposition graph?")]
#only("2")[#voiceover("Is it the change in consumption due to a change in real income,")]
#only("3")[#voiceover("or the change in consumption keeping utility constant,")]
#only("4")[#voiceover("or maybe the change in consumption due to a change in preferences,")]
#only("5")[#voiceover("or is it the change in consumption due to a change in quantity demanded?")]
]#questionDef(
questionText: "What does the substitution effect represent in a Hicks Decomposition graph?",
answerOptions: ("Change in consumption due to a change in real income", "Change in consumption keeping utility constant", "Change in consumption due to a change in preferences", "Change in consumption due to a change in quantity demanded"),
correctAnswerIndex: 1
)