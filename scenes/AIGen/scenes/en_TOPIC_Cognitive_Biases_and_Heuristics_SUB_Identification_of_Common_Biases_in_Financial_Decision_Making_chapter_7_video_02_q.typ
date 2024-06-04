#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sunk Cost Fallacy]
// The title "Sunk Cost Fallacy" is shown on this slide
#v(40pt)
#only("1-")[What is the sunk cost fallacy? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Ignoring past investments 🙈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Continuing an endeavor due to past investments 💸]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Making decisions based on future benefits 🔮]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above ❌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the sunk cost fallacy. What is the sunk cost fallacy?")]
#only("2")[#voiceover("Is it ignoring past investments,")]
#only("3")[#voiceover("or is it continuing an endeavor due to past investments,")]
#only("4")[#voiceover("or maybe making decisions based on future benefits,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is the sunk cost fallacy?",
answerOptions: ("Ignoring past investments", "Continuing an endeavor due to past investments", "Making decisions based on future benefits", "None of the above"),
correctAnswerIndex: 1,
)