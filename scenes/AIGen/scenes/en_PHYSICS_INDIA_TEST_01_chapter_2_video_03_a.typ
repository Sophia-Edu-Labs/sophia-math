#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Free Electrons in a Conductor]
#v(40pt)

#only("1-")[- Given: 5 × 10^22 free electrons per cm³]
#v(20pt)
#only("2-")[- Volume: 2 cm³]
#v(20pt)
#only("3-")[- Goal: Calculate total number of free electrons]

#only("1")[
#voiceover("Excellent work on solving this problem! Let's break down the solution step by step. We're given that a conductor has 5 times 10 to the power of 22 free electrons per cubic centimeter.")
]

#only("2")[
#voiceover("We need to find the total number of free electrons in 2 cubic centimeters.")
]

#only("3")[
#voiceover("To do this, we'll multiply the number of free electrons per cubic centimeter by the total volume.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)

#only("1-")[
#align(center)[
$"Total electrons" = "Electrons per cm³" × "Volume in cm³"$
]
]

#v(20pt)

#only("2-")[
#align(center)[
$"Total electrons" = (5 × 10^22) × 2$
]
]

#v(20pt)

#only("3-")[
#align(center)[
$"Total electrons" = 10 × 10^22 = 1 × 10^23$
]
]

#only("1")[
#voiceover("Let's set up our calculation. The total number of electrons is equal to the number of electrons per cubic centimeter multiplied by the volume in cubic centimeters.")
]

#only("2")[
#voiceover("We substitute our values: 5 times 10 to the power of 22 for the electrons per cubic centimeter, and 2 for the volume.")
]

#only("3")[
#voiceover("Simplifying this, we get 10 times 10 to the power of 22, which is equal to 1 times 10 to the power of 23.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)

#only("1-")[
#align(center)[
#text(size: 24pt)[Total number of free electrons: $1 × 10^23$]
]
]

#v(40pt)

#only("2-")[
#text(size: 20pt)[💡 This is equivalent to 100,000,000,000,000,000,000,000 electrons!]
]

#only("1")[
#voiceover("So, our final answer is that there are 1 times 10 to the power of 23 free electrons in 2 cubic centimeters of this conductor.")
]

#only("2")[
#voiceover("To put this enormous number into perspective, it's equivalent to one hundred sextillion electrons! This demonstrates the incredibly large number of free electrons present in conductors, which contributes to their ability to conduct electricity so well.")
]
]