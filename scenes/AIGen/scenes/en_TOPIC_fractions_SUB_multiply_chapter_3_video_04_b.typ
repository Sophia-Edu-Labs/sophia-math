#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's okay, let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Multiplication of Fractions]

#v(40pt)

#only("2-")[#text()[$ 5/2 * 13/4 $]]
#only("2")[
#voiceover("We start with the multiplication of the fractions five halves and thirteen fourths.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]

#v(40pt)

#only("1-")[- Multiply the numerators: $ 5 dot 13 $]
#only("2-")[- Multiply the denominators: $ 2 dot 4 $]
#only("3-")[- Simplify the result: $ 65/8 $]
#only("4-")[- Convert to mixed number: $ 8 1/8 $]

#only("1")[
#voiceover("First, we multiply the numerators. So, five times thirteen.")
]

#only("2")[
#voiceover("Next, we multiply the denominators. So, two times four.")
]

#only("3")[
#voiceover("Now, we simplify the result. The product of the numerators is sixty-five and the product of the denominators is eight. So, we get sixty-five eighths.")
]

#only("4")[
#voiceover("Finally, we convert the improper fraction to a mixed number. Sixty-five divided by eight is eight with a remainder of one. So, we get eight and one-eighth.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[$ 5/2 * 13/4 = 65/8 $]
#only("2-")[$ 65/8 = 8 1/8 $]

#only("1")[
#voiceover("So, the final answer is sixty-five eighths or eight and one-eighth.")
]

]