#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis of a Vector Space]
#v(40pt)
#only("1-")[A basis of a vector space is a set of vectors that are:]
#v(40pt)
#only("2-")[a) Linearly dependent and span the space]
#v(10pt)
#only("3-")[b) Linearly independent and span the space]
#v(10pt)
#only("4-")[c) Linearly dependent and do not span the space]
#v(10pt)
#only("5-")[d) Linearly independent and do not span the space]
#only("1")[#voiceover("Let's test your understanding of basis. A basis of a vector space is a set of vectors that are:")]
#only("2")[#voiceover("a) Linearly dependent and span the space,")]
#only("3")[#voiceover("b) Linearly independent and span the space,")]
#only("4")[#voiceover("c) Linearly dependent and do not span the space,")]
#only("5")[#voiceover("or d) Linearly independent and do not span the space?")]
]#questionDef(
questionText: "A basis of a vector space is a set of vectors that are:",
answerOptions: ("Linearly dependent and span the space", "Linearly independent and span the space", "Linearly dependent and do not span the space", "Linearly independent and do not span the space"),
correctAnswerIndex: 1
)