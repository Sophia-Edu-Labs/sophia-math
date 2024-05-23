#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's the correct solution. Let's go through it step by step.")
]

#text(size: 30pt, weight: "bold")[Decomposing the Function]

#v(40pt)

#only("2-")[$ k(x) = sqrt(3x + 2) $]
// The function k(x) is shown from slide 2 onward

#only("2")[
#voiceover("We're given the function k of x equals the square root of three x plus two.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Identify the "outer" function 🎭]
// The approach of identifying the outer function is shown from slide 1 onward

#only("2-")[- Identify the "inner" function 🎭]
// The approach of identifying the inner function is shown from slide 2 onward

#only("1")[
#voiceover("To decompose this, we need to identify the 'outer' and 'inner' functions.")
]
#only("2")[
#voiceover("The outer function is the operation that's performed last, and the inner function is the argument of the outer function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[$ k(x) = sqrt(3x + 2) $]
// The original function is shown from slide 1 onward

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Identify the outer function]]]
// The identification of the outer function is highlighted in aqua from slide 2 onward

#v(10pt)

#only("3-")[$ f(x) = sqrt(x) $]
// The outer function is shown from slide 3 onward

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Identify the inner function]]]
// The identification of the inner function is highlighted in aqua from slide 4 onward

#v(10pt)

#only("5-")[$ g(x) = 3x + 2 $]
// The inner function is shown from slide 5 onward

#v(10pt)

#only("6-")[#align(center)[#text(fill:aqua)[⇓ Combine the functions]]]
// The combination of the functions is highlighted in aqua from slide 6 onward

#v(10pt)

#only("7-")[$ k(x) = f(g(x)) = sqrt(3x + 2) $]
// The final decomposition is shown from slide 7 onward

#only("1")[#voiceover("We start with the function k of x equals the square root of three x plus two.")]

#only("2")[#voiceover("First, we identify the outer function. In this case, it's the square root.")]

#only("3")[#voiceover("So, we define f of x to be the square root of x.")]

#only("4")[#voiceover("Next, we identify the inner function. It's the argument of the square root, which is three x plus two.")]

#only("5")[#voiceover("So, we define g of x to be three x plus two.")]

#only("6")[#voiceover("Finally, we combine these functions to get the original function.")]

#only("7")[#voiceover("k of x equals f of g of x, which is the square root of three x plus two. 🎉")]
]