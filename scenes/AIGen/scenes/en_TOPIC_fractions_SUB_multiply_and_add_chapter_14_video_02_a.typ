#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

#only("1-")[
$7/9 × 2/3 = ?$
]

#v(20pt)

#only("2-")[
$7/9 × 2/3 = (7 × 2) / (9 × 3)$
]

#v(20pt)

#only("3-")[
$= 14 / 27$
]

#only("1")[
#voiceover("Great job! That's the correct answer. Let's walk through the solution step-by-step.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 7 by 2 in the numerator, and 9 by 3 in the denominator.")
]

#only("3")[
#voiceover("This gives us 14 over 27. And that's our final answer! Notice that we didn't need to simplify this fraction further, as 14 and 27 don't have any common factors other than 1.")
]
]