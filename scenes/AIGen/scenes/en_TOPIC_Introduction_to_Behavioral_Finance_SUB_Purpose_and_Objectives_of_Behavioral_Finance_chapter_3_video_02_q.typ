#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Common Biases in Behavioral Finance]
// The title "Common Biases in Behavioral Finance" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a common bias in Behavioral Finance?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Overconfidence 🙋‍♂️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Rational decision-making 🤔]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Accurate predictions 🎯]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Efficient markets 📈]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on common biases in Behavioral Finance. Which of the following is a common bias?")]
#only("2")[#voiceover("Is it overconfidence, where people tend to overestimate their abilities and knowledge,")]
#only("3")[#voiceover("or is it rational decision-making, where people always make logical and optimal choices,")]
#only("4")[#voiceover("or maybe accurate predictions, where people can consistently predict future market trends correctly,")]
#only("5")[#voiceover("or is it efficient markets, where prices always fully reflect all available information?")]
]#questionDef(
questionText: "Which of the following is a common bias in Behavioral Finance?",
answerOptions: ("Overconfidence", "Rational decision-making", "Accurate predictions", "Efficient markets"),
correctAnswerIndex: 0,
)