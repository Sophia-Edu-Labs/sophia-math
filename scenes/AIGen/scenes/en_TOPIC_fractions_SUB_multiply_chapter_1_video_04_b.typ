#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's okay! Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Multiplying Fractions]

#v(40pt)

#only("2-")[#text()[$ (2/3) dot (3/4) $]]
// The multiplication of fractions is shown from slide 2 onward

#only("2")[
#voiceover("We start with the fractions two-thirds and three-fourths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]

#v(40pt)

#only("1-")[- Multiply the numerators: $2 dot 3$]
#v(20pt)
#only("2-")[- Multiply the denominators: $3 dot 4$]

#only("1")[
#voiceover("First, we multiply the numerators: two times three.")
]

#only("2")[
#voiceover("Next, we multiply the denominators: three times four.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Result]

#v(40pt)

#only("1-")[$ (2 dot 3) / (3 dot 4) = 6/12 $]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]
#v(20pt)
#only("3-")[$ 6/12 = 1/2 $]

#only("1")[
#voiceover("So, we get six-twelfths.")
]

#only("2")[
#voiceover("Now, we simplify six-twelfths.")
]

#only("3")[
#voiceover("And we get one-half as the final answer.")
]
]