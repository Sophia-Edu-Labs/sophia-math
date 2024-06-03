#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Applications]
// The title "Behavioral Finance Applications" is shown on this slide
#v(40pt)
#only("1-")[Behavioral Finance can help in \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) making irrational decisions 🤔]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) developing financial policies 📜]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) ignoring biases 🙈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) predicting market trends 📈]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of Behavioral Finance applications. Behavioral Finance can help in blank.")]
#only("2")[#voiceover("Is it making irrational decisions,")]
#only("3")[#voiceover("or is it developing financial policies,")]
#only("4")[#voiceover("or maybe ignoring biases,")]
#only("5")[#voiceover("or is it predicting market trends?")]
]#questionDef(
questionText: "Behavioral Finance can help in \textbf{developing financial policies}.",
answerOptions: ("making irrational decisions", "developing financial policies", "ignoring biases", "predicting market trends"),
correctAnswerIndex: 1
)