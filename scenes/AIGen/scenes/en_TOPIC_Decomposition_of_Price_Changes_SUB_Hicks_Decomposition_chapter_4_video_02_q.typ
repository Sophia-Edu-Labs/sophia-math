#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition 🔍]
#v(40pt)
#only("1-")[What type of demand function is used in Hicks Decomposition? 🤔]
#v(40pt)
#only("2-")[a) Compensated demand 💰]
#v(10pt)
#only("3-")[b) Uncompensated demand 🛍️]
#v(10pt)
#only("4-")[c) Market demand 📈]
#v(10pt)
#only("5-")[d) Aggregate demand 📊]
#only("1")[#voiceover("Let's test your knowledge on Hicks Decomposition. What type of demand function is used in this decomposition?")]
#only("2")[#voiceover("Is it compensated demand, which takes into account the substitution effect while holding utility constant,")]
#only("3")[#voiceover("or is it uncompensated demand, which does not adjust for the income effect,")]
#only("4")[#voiceover("or maybe market demand, which is the total demand for a good or service in a particular market,")]
#only("5")[#voiceover("or is it aggregate demand, which is the total demand for final goods and services in an economy?")]
]#questionDef(
questionText: "What type of demand function is used in Hicks Decomposition?",
answerOptions: ("Compensated demand", "Uncompensated demand", "Market demand", "Aggregated demand"),
correctAnswerIndex: 0,
)