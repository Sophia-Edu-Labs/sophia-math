#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions Applications]
// The title "Composite Functions Applications" is shown on this slide
#v(40pt)
#only("1-")[In which field might composite functions be particularly useful? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Physics 🌍]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Economics 📈]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Biology 🌿]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) All of the above 🌟]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's think about where composite functions might be particularly useful.")]
#only("2")[#voiceover("Could it be in physics,")]
#only("3")[#voiceover("or maybe in economics,")]
#only("4")[#voiceover("or perhaps in biology,")]
#only("5")[#voiceover("or could it be that composite functions are useful in all of these fields?")]
]#questionDef(
questionText: "In which field might composite functions be particularly useful?",
answerOptions: ("Physics", "Economics", "Biology", "All of the above"),
correctAnswerIndex: 3
)