#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis for R^2]
// The title "Basis for R^2" is shown on this slide
#v(40pt)
#only("1-")[Which of the following sets of vectors forms a basis for R^2? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $mat(1; 0), mat(0; 1)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $mat(1; 1), mat(2; 2)$]
// Answer option b) is shown from slide 3 onward  
#v(10pt)
#only("4-")[c) $mat(1; 2), mat(2; 4)$]
// Answer option c) is shown from slide 4 onward
#v(10pt) 
#only("5-")[d) $mat(1; 1), mat(1; -1)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of basis vectors. Which of the following sets of vectors forms a basis for R^2?")]
#only("2")[#voiceover("Is it the set containing the vectors (1; 0) and (0; 1),")]
#only("3")[#voiceover("or the set containing the vectors (1; 1) and (2; 2),")]
#only("4")[#voiceover("or maybe the set with the vectors (1; 2) and (2; 4),")]
#only("5")[#voiceover("or finally, is it the set with the vectors (1; 1) and (1; -1)?")]
]#questionDef(
questionText: "Which of the following sets of vectors forms a basis for $\mathbb{R}^2$?",
answerOptions: ("$\begin{pmatrix} 1 \\\\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\\\ 1 \end{pmatrix}$", "$\begin{pmatrix} 1 \\\\ 1 \end{pmatrix}, \begin{pmatrix} 2 \\\\ 2 \end{pmatrix}$", "$\begin{pmatrix} 1 \\\\ 2 \end{pmatrix}, \begin{pmatrix} 2 \\\\ 4 \end{pmatrix}$", "$\begin{pmatrix} 1 \\\\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$"),
correctAnswerIndex: 0
)