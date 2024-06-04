#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
// The title "Confirmation Bias" is shown on this slide
#v(40pt)
#only("1-")[What is confirmation bias? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Seeking information that contradicts one's beliefs 🔍❌]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Ignoring information 🙈]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Seeking information that confirms one's beliefs 🔍✅]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above 🚫]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on confirmation bias. What is confirmation bias?")]
#only("2")[#voiceover("Is it seeking information that contradicts one's beliefs,")]
#only("3")[#voiceover("or is it ignoring information,")]
#only("4")[#voiceover("or maybe seeking information that confirms one's beliefs,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is confirmation bias?",
answerOptions: ("Seeking information that contradicts one's beliefs", "Ignoring information", "Seeking information that confirms one's beliefs", "None of the above"),
correctAnswerIndex: 2,
)