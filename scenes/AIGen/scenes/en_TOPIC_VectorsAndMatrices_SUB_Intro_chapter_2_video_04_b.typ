#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dot Product Calculation]
#v(40pt)

#only("1-")[Let's calculate the dot product of vectors:]
#v(20pt)
#only("2-")[#align(center)[$vec(a) = (-1, 2, 3)$ and $vec(b) = (4, 0, -2)$]]
#v(20pt)
#only("3-")[#text(fill: blue)[Formula: $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + a_3 b_3$]]
#v(20pt)
#only("4-")[Calculation:]
#only("5-")[#align(center)[$(-1 dot 4) + (2 dot 0) + (3 dot (-2))$]]
#v(20pt)
#only("6-")[#align(center)[$= -4 + 0 - 6$]]
#v(20pt)
#only("7-")[#align(center)[#text(fill: green)[Result: $-10$]]]

#only("1")[#voiceover("Not quite. Let's walk through the solution step-by-step to understand how we arrive at -10.")]

#only("2")[#voiceover("We're given two vectors: a, which is negative one, two, three, and b, which is four, zero, negative two.")]

#only("3")[#voiceover("To calculate the dot product, we use the formula: a dot b equals a1 times b1, plus a2 times b2, plus a3 times b3. Here, the subscripts represent the components of each vector.")]

#only("4")[#voiceover("Now, let's plug in the values from our vectors into this formula.")]

#only("5")[#voiceover("We get: negative one times four, plus two times zero, plus three times negative two.")]

#only("6")[#voiceover("Let's evaluate each term: negative one times four is negative four. Two times zero is zero. And three times negative two is negative six. Adding these up...")]

#only("7")[#voiceover("We get negative four plus zero minus six, which equals negative ten. And that's our final answer! The dot product of these two vectors is indeed negative ten.")]
]