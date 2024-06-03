#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Efficiency]
#v(40pt)
#only("1-")[In an efficient market, asset prices \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) are random 🎲]
#v(10pt)
#only("3-")[b) reflect all available information 📊]
#v(10pt)
#only("4-")[c) are influenced by emotions 😊]
#v(10pt)
#only("5-")[d) are predictable 🔮]

#only("1")[#voiceover("Let's test your knowledge on market efficiency. In an efficient market, asset prices blank.")]
#only("2")[#voiceover("Are they random,")]
#only("3")[#voiceover("do they reflect all available information,")]
#only("4")[#voiceover("are they influenced by emotions,")]
#only("5")[#voiceover("or are they predictable?")]
]#questionDef(
questionText: "In an efficient market, asset prices $\textbf{reflect\ all\ available\ information}$.",
answerOptions: ("are random", "reflect all available information", "are influenced by emotions", "are predictable"),
correctAnswerIndex: 1,
)