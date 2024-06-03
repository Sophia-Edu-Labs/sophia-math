#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
#v(40pt)
#only("1-")[According to behavioral finance, investors are influenced by \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) rational decisions 🧠]
#v(10pt)
#only("3-")[b) market efficiency 📈]
#v(10pt)
#only("4-")[c) psychological biases 🧐]
#v(10pt)
#only("5-")[d) utility maximization 📊]
#only("1")[#voiceover("Let's test your knowledge on behavioral finance. According to behavioral finance, investors are influenced by...")]
#only("2")[#voiceover("rational decisions,")]
#only("3")[#voiceover("market efficiency,")]  
#only("4")[#voiceover("psychological biases,")]
#only("5")[#voiceover("or utility maximization?")]
]#questionDef(
questionText: "According to behavioral finance, investors are influenced by $\textbf{psychological biases}$.",
answerOptions: ("rational decisions", "market efficiency", "psychological biases", "utility maximization"),
correctAnswerIndex: 2,
)