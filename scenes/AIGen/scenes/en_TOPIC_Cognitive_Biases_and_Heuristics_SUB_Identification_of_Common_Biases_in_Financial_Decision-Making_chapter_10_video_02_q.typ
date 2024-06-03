#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
// The title "Representativeness Heuristic" is shown on this slide
#v(40pt)
#only("1-")[What is the representativeness heuristic? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Judging probability based on resemblance 📊]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Judging probability based on statistical data 📈]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Ignoring similarities 🙈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above ❌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the representativeness heuristic. What is it?")]
#only("2")[#voiceover("Is it judging probability based on resemblance,")]
#only("3")[#voiceover("or is it judging probability based on statistical data,")]
#only("4")[#voiceover("or maybe ignoring similarities,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is the representativeness heuristic?",
answerOptions: ("Judging probability based on resemblance", "Judging probability based on statistical data", "Ignoring similarities", "None of the above"),
correctAnswerIndex: 0,
)