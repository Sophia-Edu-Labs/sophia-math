#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying n-th Roots]
#v(40pt)
#only("1-")[- $root(4, 81)$]
// The original problem is shown on all slides
#v(20pt)
#only("2-")[- $root(4, 3^4)$]
// The first step is shown from slide 2 onward
#v(20pt)
#only("3-")[- $(3^4)^(1/4)$]
// The second step is shown from slide 3 onward
#v(20pt)
#only("4-")[- $3^(4/4)$]
// The third step is shown from slide 4 onward
#v(20pt)
#only("5-")[- $3^1$]
// The fourth step is shown from slide 5 onward
#v(20pt)
#only("6-")[- $3$]
// The final answer is shown from slide 6 onward
#only("1")[
#voiceover("That's right, great job! Let's see how we can simplify the fourth root of 81 step by step.")
]
#only("2")[
#voiceover("First, we can recognize that 81 is a perfect fourth power. In fact, it's 3 to the fourth power.")
]
#only("3")[
#voiceover("Now, we can use the property that the fourth root of a number is the same as raising that number to the power of one-fourth.")
]
#only("4")[
#voiceover("Next, we can use the power rule for exponents. When we raise a power to a power, we multiply the exponents.")
]
#only("5")[
#voiceover("Four divided by four is one.")
]
#only("6")[
#voiceover("And three to the first power is just three. Therefore, the fourth root of 81 simplifies to 3.")
]
]