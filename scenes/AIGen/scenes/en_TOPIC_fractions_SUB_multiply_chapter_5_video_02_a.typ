#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great, you recognized that correctly! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Multiplying Fractions]

#v(40pt)

#only("2-")[#text()[$frac(1,2) * frac(2,3)$]]
// The multiplication of fractions is shown from slide 2 onward

#only("2")[
#voiceover("We start with the multiplication of one-half and two-thirds.")
]

]


#slide()[
#only("1")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together.")
]

#only("2")[
#voiceover("So, let's multiply the numerators and denominators.")
]

#text(size: 30pt, weight: "bold")[Step-by-Step Multiplication]

#v(40pt)

#only("1-")[- Multiply the numerators: $1 * 2$]
// The multiplication of numerators is shown from slide 1 onward

#only("2-")[- Multiply the denominators: $2 * 3$]
// The multiplication of denominators is shown from slide 2 onward

]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Fraction]

#v(40pt)

#only("1-")[$ frac(1 * 2, 2 * 3) = frac(2, 6) $]
// The result of the multiplication is shown from slide 1 onward

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Simplify the fraction]]]
// The instruction to simplify the fraction is highlighted in aqua from slide 2 onward

#v(10pt)

#only("3-")[$ frac(2, 6) = frac(1, 3) $]
// The simplified fraction is shown from slide 3 onward

#only("1")[#voiceover("We get the fraction two-sixths.")]
#only("2")[#voiceover("Now, we simplify the fraction by dividing the numerator and the denominator by their greatest common divisor.")]
#only("3")[#voiceover("Two-sixths simplifies to one-third.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[$ frac(1, 2) * frac(2, 3) = frac(1, 3) $]
// The final answer is shown from slide 1 onward

#only("1")[#voiceover("So, one-half multiplied by two-thirds equals one-third. This means your friend gets one-third of the whole cake.")]
]