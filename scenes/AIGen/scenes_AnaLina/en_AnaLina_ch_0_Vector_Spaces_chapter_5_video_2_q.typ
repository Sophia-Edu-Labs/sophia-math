#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Generating Sets]
#v(40pt)
#only("1-")[A generating set (or spanning set) of a vector space is a set of vectors whose linear combinations fill the entire vector space.]
#v(40pt)
#only("2-")[Which of the following must be true for a generating set of a vector space?]
#v(40pt)
#only("3-")[a) It must be linearly independent 🧩]
#v(10pt)
#only("4-")[b) It must contain the zero vector 0️⃣]
#v(10pt)
#only("5-")[c) It must span the entire vector space 🌌]
#v(10pt)
#only("6-")[d) It must be finite ↔]

#only("1")[#voiceover("A generating set, also known as a spanning set, of a vector space is a set of vectors whose linear combinations fill the entire vector space.")]
#only("2")[#voiceover("Which of the following must be true for a generating set of a vector space?")]
#only("3")[#voiceover("Must it be linearly independent?")]
#only("4")[#voiceover("Must it contain the zero vector?")]  
#only("5")[#voiceover("Must it span the entire vector space?")]
#only("6")[#voiceover("Or must it be finite?")]
]#questionDef(
questionText: "A generating set of a vector space must \_\_\_\_\_.",
answerOptions: ("be linearly independent", "contain the zero vector", "span the entire vector space", "be finite"),
correctAnswerIndex: 2
)