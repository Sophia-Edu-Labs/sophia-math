#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on recognizing the problem correctly! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Multiplying Fractions]

#v(40pt)

#only("2-")[#text()[$frac(5,6) dot frac(2,3)$]]
#only("2")[
#voiceover("We start with the fractions five sixths and two thirds.")
]

]


#slide()[
#only("1")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together.")
]

#text(size: 30pt, weight: "bold")[Multiplication Process]

#v(40pt)

#only("1-")[- Multiply numerators: $5 dot 2$]
#only("2-")[- Multiply denominators: $6 dot 3$]

#only("2")[
#voiceover("First, we multiply the numerators: five times two.")
]

#only("3")[
#voiceover("Next, we multiply the denominators: six times three.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Result]

#v(40pt)

#only("1-")[$frac(5 dot 2, 6 dot 3)$]
#v(10pt)
#only("2-")[$frac(10, 18)$]
#v(10pt)
#only("3-")[$frac(5, 9)$]

#only("1")[
#voiceover("So, we have the fraction five times two over six times three.")
]

#only("2")[
#voiceover("This simplifies to ten over eighteen.")
]

#only("3")[
#voiceover("And further simplifies to five ninths.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[- Your friend gets $frac(5, 9)$ of the whole pizza 🍕]

#only("1")[
#voiceover("So, your friend gets five ninths of the whole pizza.")
]

]