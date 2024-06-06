#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents]
// The title "Rational Exponents" is shown on this slide
#v(40pt)
#only("1-")[Exercise: Simplify $((27^(1/3))^2)^3$]
// The exercise is shown from slide 1 onward
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1]
#v(40pt)
#only("1-")[Simplify the inner exponent first: $27^(1/3)$]
// The first step is shown from slide 1 onward
#v(20pt)
#only("2-")[$27^(1/3) = 3$]
// The simplification is shown from slide 2 onward
#only("1")[
#voiceover("First, we simplify the innermost exponent. 27 to the power of 1/3 is the cube root of 27, which equals 3.")
]
#only("2")[
#voiceover("So, we can rewrite the expression as 3 squared, all cubed.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2]
#v(40pt)
#only("1-")[Simplify the middle exponent: $(3^2)^3$]
// The second step is shown from slide 1 onward
#v(20pt)
#only("2-")[$3^2 = 9$]
// The simplification is shown from slide 2 onward
#only("1")[
#voiceover("Next, we simplify the middle exponent. 3 squared equals 9.")
]
#only("2")[
#voiceover("Now the expression becomes 9 cubed.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3]
#v(40pt)
#only("1-")[Simplify the outer exponent: $9^3$]
#v(20pt)
#only("2-")[$9^3 = 729$]
#only("1")[
#voiceover("Finally, we simplify the outer exponent. 9 cubed equals 729.")
]
#only("2")[
#voiceover("Therefore, the simplified expression is 729.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- $((27^(1/3))^2)^3$
- = $((3)^2)^3$
- = $(9)^3$
- = $729$ 🎉
]
// The summary is shown from slide 1 onward
#only("1")[
#voiceover("To recap, we simplified the expression ((27 to the power of 1/3) squared) cubed by working from the innermost exponent outwards. 27 to the power of 1/3 equals 3, then 3 squared equals 9, and finally 9 cubed equals 729.")
]
]