#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's practice scalar multiplication of matrices with a numeric exercise.")
]

#text(size: 30pt, weight: "bold")[Scalar Matrix Multiplication]
#v(40pt)

#only("2-")[
Multiply the matrix by the scalar:

#v(10pt)

$5 dot mat(1, 0; 0, 1)$
]

#only("2")[
#voiceover("Multiply the given 2 by 2 identity matrix by the scalar 5. Remember, in scalar matrix multiplication, we multiply each element of the matrix by the scalar.")
]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrix $\begin{bmatrix} 1 & 0 \\\\ 0 & 1 \end{bmatrix}$ by the scalar $5$.", 
answerOptions: ("$\begin{bmatrix} 5 & 0 \\\\ 0 & 5 \end{bmatrix}$", "$\begin{bmatrix} -6 & 4 \\\\ 4 & -6 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
c: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
d: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)