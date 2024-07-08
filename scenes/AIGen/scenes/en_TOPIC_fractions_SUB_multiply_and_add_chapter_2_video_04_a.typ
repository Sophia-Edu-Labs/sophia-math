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
$8/9 times 1/2 = ?$
]

#v(20pt)

#only("2-")[
$8/9 times 1/2 = (8 times 1)/(9 times 2)$
]

#v(20pt)

#only("3-")[
$8/9 times 1/2 = 8/(9 times 2)$
]

#v(20pt)

#only("4-")[
$8/9 times 1/2 = 8/18$
]

#v(20pt)

#only("5-")[
$8/18 = 4/9$ (simplified)
]

#only("1")[
#voiceover("Great job on solving this problem! Let's walk through the solution step by step. We start with the problem: eight ninths times one half.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 8 by 1 in the numerator, and 9 by 2 in the denominator.")
]

#only("3")[
#voiceover("Eight times one is simply eight, so our numerator remains eight.")
]

#only("4")[
#voiceover("Nine times two is eighteen, so our denominator becomes eighteen. This gives us eight eighteenths.")
]

#only("5")[
#voiceover("We can simplify this fraction further. Both 8 and 18 are divisible by 2, so we divide both the numerator and denominator by 2. This gives us our final answer: four ninths.")
]
]