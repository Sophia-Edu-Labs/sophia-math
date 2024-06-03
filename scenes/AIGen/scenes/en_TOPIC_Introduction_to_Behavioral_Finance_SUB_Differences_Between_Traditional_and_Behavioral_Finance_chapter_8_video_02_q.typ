#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Criticism of EMH]
// The title "Behavioral Finance Criticism of EMH" is shown on this slide
#v(40pt)
#only("1-")[Behavioral finance criticizes EMH by arguing that ____ can lead to market inefficiencies.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) rational behavior 🧠]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) psychological biases 🎭]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) utility maximization 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) efficient markets 💰]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on behavioral finance's criticism of the Efficient Market Hypothesis, or EMH. Behavioral finance criticizes EMH by arguing that blank can lead to market inefficiencies.")]
#only("2")[#voiceover("Is it rational behavior,")]
#only("3")[#voiceover("or psychological biases,")]
#only("4")[#voiceover("or utility maximization,")]
#only("5")[#voiceover("or efficient markets?")]
]#questionDef(
questionText: "Behavioral finance criticizes EMH by arguing that \textbf{psychological biases} can lead to market inefficiencies.",
answerOptions: ("rational behavior", "psychological biases", "utility maximization", "efficient markets"),
correctAnswerIndex: 1,
)