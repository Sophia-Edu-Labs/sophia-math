#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance 🧠💰]
#v(40pt)
#only("1-")[Using decision-making frameworks can help investors \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) increase biases 📈]
#v(10pt)
#only("3-")[b) make irrational decisions 🤪]
#v(10pt)
#only("4-")[c) mitigate biases 🎯]
#v(10pt)
#only("5-")[d) follow the crowd 🐑]
#only("1")[#voiceover("Let's test your knowledge on Behavioral Finance. Using decision-making frameworks can help investors blank.")]
#only("2")[#voiceover("Does it help investors increase biases,")]
#only("3")[#voiceover("or does it help them make irrational decisions,")]
#only("4")[#voiceover("or maybe it helps mitigate biases,")]
#only("5")[#voiceover("or does it help investors follow the crowd?")]
]#questionDef(
questionText: "Using decision-making frameworks can help investors $\\textbf{mitigate\ biases}$.",
answerOptions: ("increase biases", "make irrational decisions", "mitigate biases", "follow the crowd"),
correctAnswerIndex: 2,
)