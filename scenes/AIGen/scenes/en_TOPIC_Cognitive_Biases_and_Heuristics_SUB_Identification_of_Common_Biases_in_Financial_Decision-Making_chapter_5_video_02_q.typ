#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior 🐑]
// The title "Herd Behavior" with a sheep emoji is shown on this slide
#v(40pt)
#only("1-")[What is herd behavior?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Making decisions independently 🧠]
// Answer option a) with a brain emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Following the actions of a larger group 🦘]
// Answer option b) with a kangaroo emoji (to symbolize following) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Ignoring group actions 🙈]
// Answer option c) with a see-no-evil monkey emoji is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above ❌]
// Answer option d) with a cross mark emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of herd behavior. What does herd behavior refer to?")]
#only("2")[#voiceover("Is it making decisions independently,")]
#only("3")[#voiceover("or is it following the actions of a larger group,")]
#only("4")[#voiceover("or maybe ignoring group actions,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is herd behavior?",
answerOptions: ("Making decisions independently", "Following the actions of a larger group", "Ignoring group actions", "None of the above"),
correctAnswerIndex: 1,
)