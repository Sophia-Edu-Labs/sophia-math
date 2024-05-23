#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Generating Sets for $RR^2$]
#v(40pt)
#only("1-")[Which of the following sets of vectors is a generating set for $RR^2$?]
#v(40pt)
#only("2-")[a) ${(1, 0), (0, 1)}$]
#v(10pt)
#only("3-")[b) ${(1, 1), (1, -1)}$]
#v(10pt)
#only("4-")[c) ${(2, 3), (4, 6)}$]
#v(10pt)
#only("5-")[d) Both a and b]

#only("1")[#voiceover("Let's test your understanding of generating sets. Which of the following sets of vectors is a generating set for the two-dimensional real vector space $RR^2$?")]
#only("2")[#voiceover("Is it the set containing the standard basis vectors $(1, 0)$ and $(0, 1)$,")]
#only("3")[#voiceover("or the set containing the vectors $(1, 1)$ and $(1, -1)$,")]
#only("4")[#voiceover("or perhaps the set with the vectors $(2, 3)$ and $(4, 6)$,")]
#only("5")[#voiceover("or are both sets a) and b) generating sets for $RR^2$?")]
]#questionDef(
questionText: "Which of the following sets of vectors is a generating set for $\mathbb{R}^2$?",
answerOptions: ("$\{(1, 0), (0, 1)\}$", "$\{(1, 1), (1, -1)\}$", "$\{(2, 3), (4, 6)\}$", "Both a and b"),
correctAnswerIndex: 3
)