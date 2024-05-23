#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mappings]
// The title "Linear Mappings" is shown on this slide
#v(40pt)
#only("1-")[A linear mapping preserves which of the following? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Vector addition ➕]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Scalar multiplication ✖️]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Both vector addition and scalar multiplication ➕✖️]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Neither ❌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of linear mappings. A linear mapping preserves which of the following properties?")]
#only("2")[#voiceover("Does it preserve vector addition,")]
#only("3")[#voiceover("or does it preserve scalar multiplication,")]
#only("4")[#voiceover("or does it preserve both vector addition and scalar multiplication,")]
#only("5")[#voiceover("or does it preserve neither of these properties?")]
]#questionDef(
questionText: "A linear mapping preserves which of the following?",
answerOptions: ("Vector addition", "Scalar multiplication", "Both vector addition and scalar multiplication", "Neither"),
correctAnswerIndex: 2,
)