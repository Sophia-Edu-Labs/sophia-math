#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Consider the vectors:]
#v(20pt)
#only("2-")[- $mat(1;2;3)$]
#v(10pt) 
#only("3-")[- $mat(2;4;6)$]
#v(10pt)
#only("4-")[- $mat(3;6;9)$]
#v(40pt)
#only("5-")[Find a basis for the vector space spanned by these vectors. 🎯]

#only("1")[
#voiceover("Let's look at an exercise about finding a basis.")
]
#only("2")[
#voiceover("We have the vector one, two, three,")
]
#only("3")[
#voiceover("the vector two, four, six,")
]
#only("4")[
#voiceover("and the vector three, six, nine.")
]
#only("5")[
#voiceover("Your task is to find a basis for the vector space spanned by these vectors.")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Find a basis for the vector space spanned by the vectors $\begin{pmatrix}1\\2\\3\end{pmatrix}, \begin{pmatrix}2\\4\\6\end{pmatrix}, \begin{pmatrix}3\\6\\9\end{pmatrix}$.",
answerOptions: ("The basis is $\begin{pmatrix}1\\2\\3\end{pmatrix}$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)