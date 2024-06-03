#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Importance of Behavioral Finance]
// The title "Importance of Behavioral Finance" is shown on this slide
#v(40pt)
#only("1-")[Why is Behavioral Finance important? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) It predicts stock prices 📈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) It provides a realistic understanding of financial markets 🏦]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) It calculates financial ratios 🧮]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) It analyzes economic policies 📊]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the importance of Behavioral Finance. Why is Behavioral Finance important?")]
#only("2")[#voiceover("Is it because it predicts stock prices,")]
#only("3")[#voiceover("or because it provides a realistic understanding of financial markets,")]
#only("4")[#voiceover("or maybe because it calculates financial ratios,")]
#only("5")[#voiceover("or is it because it analyzes economic policies?")]
]#questionDef(
questionText: "Why is Behavioral Finance important?",
answerOptions: ("It predicts stock prices", "It provides a realistic understanding of financial markets", "It calculates financial ratios", "It analyzes economic policies"),
correctAnswerIndex: 1,
)