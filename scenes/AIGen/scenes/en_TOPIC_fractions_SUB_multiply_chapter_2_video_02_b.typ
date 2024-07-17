#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Nice try! Let's review the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Multiplying Fractions]

#v(40pt)

#only("2-")[#text()[$ (1/2) dot (2/3) dot (3/4) $]]
#only("2")[
#voiceover("We start with the fractions one half, two thirds, and three fourths.")
]

]


#slide()[
#only("1")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together.")
]

#text(size: 30pt, weight: "bold")[Step-by-Step Solution]

#v(40pt)

#only("1-")[- Multiply the numerators: $1 dot 2 dot 3$]
#v(20pt)
#only("2-")[- Multiply the denominators: $2 dot 3 dot 4$]

#only("1")[
#voiceover("First, we multiply the numerators together: one times two times three.")
]

#only("2")[
#voiceover("Next, we multiply the denominators together: two times three times four.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Result]

#v(40pt)

#only("1-")[$ (1 dot 2 dot 3) / (2 dot 3 dot 4) $]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Simplify the fraction]]]
#v(20pt)
#only("3-")[$ 6 / 24 $]
#v(20pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Simplify further]]]
#v(20pt)
#only("5-")[$ 1 / 4 $]

#only("1")[
#voiceover("So, we have the fraction one times two times three over two times three times four.")
]

#only("2")[
#voiceover("We simplify the fraction by multiplying the numerators and denominators.")
]

#only("3")[
#voiceover("This gives us six over twenty-four.")
]

#only("4")[
#voiceover("We can simplify this further by dividing both the numerator and the denominator by their greatest common divisor, which is six.")
]

#only("5")[
#voiceover("So, we get one fourth as the final answer.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[$ (1/2) dot (2/3) dot (3/4) = 1/4 $]

#only("1")[
#voiceover("Therefore, the product of one half, two thirds, and three fourths is one fourth.")
]

]