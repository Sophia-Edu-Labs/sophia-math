#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Biases 🧠💰]
// The title "Behavioral Finance Biases" with brain and money emojis is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a psychological bias identified in behavioral finance?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Overconfidence 😎]
// Answer option a) with a confident face emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Rationality 🤔]
// Answer option b) with a thinking face emoji is shown from slide 3 onward
#v(10pt) 
#only("4-")[c) Market efficiency 📈]
// Answer option c) with a chart increasing emoji is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Utility maximization 📊]
// Answer option d) with a bar chart emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on behavioral finance biases. Which of the following is a psychological bias identified in behavioral finance?")]
#only("2")[#voiceover("Is it overconfidence, where investors overestimate their abilities,")]
#only("3")[#voiceover("or is it rationality, which assumes investors make logical decisions,")]
#only("4")[#voiceover("or maybe market efficiency, which suggests prices reflect all available information,")]
#only("5")[#voiceover("or is it utility maximization, where investors aim to maximize their satisfaction?")]
]#questionDef(
questionText: "Which of the following is a psychological bias identified in behavioral finance?", \nanswerOptions: ("Overconfidence", "Rationality", "Market efficiency", "Utility maximization"),
correctAnswerIndex: 0
)