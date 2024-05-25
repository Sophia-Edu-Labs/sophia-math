#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Biases]
// The title "Behavioral Biases" is shown on this slide
#v(40pt)
#only("1-")[Which bias describes the tendency to hold losing investments too long?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Overconfidence 🙋‍♂️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Loss aversion 📉]
// Answer option b) is shown from slide 3 onward
#v(10pt) 
#only("4-")[c) Confirmation bias 🔍]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Anchoring ⚓]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on behavioral biases in trading. Which bias describes the tendency to hold losing investments for too long?")]
#only("2")[#voiceover("Is it overconfidence,")]
#only("3")[#voiceover("or loss aversion,")]
#only("4")[#voiceover("or maybe confirmation bias,")]
#only("5")[#voiceover("or is it anchoring?")]
]#questionDef(
questionText: "Which bias describes the tendency to hold losing investments too long?", 
answerOptions: ("Overconfidence", "Loss aversion", "Confirmation bias", "Anchoring"),
correctAnswerIndex: 1,
)