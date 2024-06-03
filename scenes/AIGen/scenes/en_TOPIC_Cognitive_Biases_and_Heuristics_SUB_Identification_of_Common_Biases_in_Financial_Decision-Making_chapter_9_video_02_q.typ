#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Availability Heuristic]
// The title "Availability Heuristic" is shown on this slide
#v(40pt)
#only("1-")[What is the availability heuristic?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Estimating likelihood based on statistical data 📊]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Overestimating likelihood based on memory 🧠]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Ignoring memorable events 🙈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above ❌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the availability heuristic. What is the availability heuristic?")]
#only("2")[#voiceover("Is it estimating likelihood based on statistical data,")]
#only("3")[#voiceover("or is it overestimating likelihood based on memory,")]
#only("4")[#voiceover("or maybe ignoring memorable events,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is the availability heuristic?",
answerOptions: ("Estimating likelihood based on statistical data", "Overestimating likelihood based on memory", "Ignoring memorable events", "None of the above"),
correctAnswerIndex: 1,
)