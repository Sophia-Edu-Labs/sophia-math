#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Strategies]
#v(40pt)
#only("1-")[Behavioral Finance aims to develop strategies to \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) maximize profits 📈]
#v(10pt)
#only("3-")[b) mitigate biases 🧠]
#v(10pt)
#only("4-")[c) predict market trends 📊]
#v(10pt)
#only("5-")[d) calculate financial ratios 🧮]
#only("1")[#voiceover("Let's test your knowledge on Behavioral Finance. Behavioral Finance aims to develop strategies to blank.")]
#only("2")[#voiceover("Is it to maximize profits,")]
#only("3")[#voiceover("or to mitigate biases,")]
#only("4")[#voiceover("or maybe to predict market trends,")]
#only("5")[#voiceover("or is it to calculate financial ratios?")]
]#questionDef(
questionText: "Behavioral Finance aims to develop strategies to ______.",
answerOptions: ("maximize profits", "mitigate biases", "predict market trends", "calculate financial ratios"),
correctAnswerIndex: 1,
)