#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
#v(40pt)
#only("1-")[Which of the following sets of vectors is linearly independent? 🤔]
#v(40pt)
#only("2-")[a) $mat(1; 0)$, $mat(3; 0)$]
#v(10pt)
#only("3-")[b) $mat(1; 1)$, $mat(2; 2)$]
#v(10pt)
#only("4-")[c) $mat(1; 2)$, $mat(2; 4)$]
#v(10pt)
#only("5-")[d) $mat(1; 1)$, $mat(1; -1)$]

#only("1")[#voiceover("Let's test your understanding of linear independence. Which of the following sets of vectors is linearly independent?")]
#only("2")[#voiceover("Is it the set containing the vectors (1; 0) and (3; 0),")]
#only("3")[#voiceover("or the set containing the vectors (1; 1) and (2; 2),")]
#only("4")[#voiceover("or maybe the set containing the vectors (1; 2) and (2; 4),")]
#only("5")[#voiceover("or is it the set containing the vectors (1; 1) and (1; -1)?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following sets of vectors is linearly independent?",
answerOptions: ("$\\begin{pmatrix}1 \\\\ 0\\end{pmatrix}, \\begin{pmatrix}3 \\\\ 0\\end{pmatrix}$", "$\\begin{pmatrix}1 \\\\ 1\\end{pmatrix}, \\begin{pmatrix}2 \\\\ 2\\end{pmatrix}$", "$\\begin{pmatrix}1 \\\\ 2\\end{pmatrix}, \\begin{pmatrix}2 \\\\ 4\\end{pmatrix}$", "$\\begin{pmatrix}1 \\\\ 1\\end{pmatrix}, \\begin{pmatrix}1 \\\\ -1\\end{pmatrix}$"),
correctAnswerIndex: 3,
)