#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $8^(1/3)$]
#v(40pt)
#only("1-")[🎉 That's right, great job! Let's see how we can simplify this step-by-step. 🧮]
#v(20pt)
#only("2-")[- $8^(1/3) = (2^3)^(1/3)$]
#v(20pt)
#only("3-")[- $(2^3)^(1/3) = 2^(3⋅1/3)$]
#v(20pt)
#only("4-")[- $2^(3⋅1/3) = 2^1 = 2$]
#only("1")[
#voiceover("That's right, great job! Let's see how we can simplify 8 to the power of 1/3 step-by-step.")
]
#only("2")[
#voiceover("First, we can write 8 as 2 to the power of 3, so 8 to the power of 1/3 is equal to 2 to the power of 3, all raised to the power of 1/3.")
]
#only("3")[
#voiceover("Now, we can use the power rule for exponents, which states that (a to the power of m) to the power of n is equal to a to the power of m times n. So, (2 to the power of 3) to the power of 1/3 is equal to 2 to the power of 3 times 1/3.")
]
#only("4")[
#voiceover("3 times 1/3 is equal to 1, so 2 to the power of 3 times 1/3 is equal to 2 to the power of 1, which is just 2. Therefore, 8 to the power of 1/3 simplifies to 2.")
]
]