#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension of a Vector Space]
#v(40pt)
#only("1-")[The dimension of a vector space is the number of vectors in a \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) span 🌐]
#v(10pt)
#only("3-")[b) basis 📏]
#v(10pt)
#only("4-")[c) subspace 🪐]
#v(10pt)
#only("5-")[d) linear combination 🧮]
#only("1")[#voiceover("Let's test your understanding of the dimension of a vector space. The dimension of a vector space is the number of vectors in a...")]
#only("2")[#voiceover("span,")]
#only("3")[#voiceover("basis,")]
#only("4")[#voiceover("subspace,")]
#only("5")[#voiceover("or linear combination?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "The dimension of a vector space is the number of vectors in a \_\_\_\_\_.",
answerOptions: ("span", "basis", "subspace", "linear combination"),
correctAnswerIndex: 1,
)