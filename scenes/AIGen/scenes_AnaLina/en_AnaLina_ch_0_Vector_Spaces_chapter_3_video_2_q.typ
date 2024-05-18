#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspace Criteria]
// The title "Subspace Criteria" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a #text(weight: "bold")[necessary] condition for a subset to be a subspace? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) It must be finite 🔢]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) It must contain the zero vector 0️⃣]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) It must be bounded 📏]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) It must be open 🔓]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of subspaces. Which of the following is a necessary condition for a subset to be a subspace?")]
#only("2")[#voiceover("Must it be finite,")]  
#only("3")[#voiceover("or must it contain the zero vector,")]
#only("4")[#voiceover("or does it have to be bounded,")]
#only("5")[#voiceover("or is being open a necessary condition?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is a necessary condition for a subset to be a subspace?",  
answerOptions: ("It must be finite", "It must contain the zero vector", "It must be bounded", "It must be open"),
correctAnswerIndex: 1,
)