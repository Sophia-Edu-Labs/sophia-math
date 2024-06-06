#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplify $5 3^(1/3) - 2 3^(1/3)$]
#v(40pt)
#only("1-")[- $5 3^(1/3) - 2 3^(1/3)$]
#v(20pt)
#only("2-")[- $= (5 - 2) 3^(1/3)$]
#v(20pt)
#only("3-")[- $= 3 3^(1/3)$]
#v(20pt)
#only("4-")[- $= 3 root(3,3)$]
#only("1")[
#voiceover("Not quite, but don't worry. Let's go through the correct solution step by step.")
]
#only("2")[
#voiceover("First, we can factor out the common term, which is the cube root of 3. This leaves us with 5 minus 2 times the cube root of 3.")
]
#only("3")[
#voiceover("Now we can simplify 5 minus 2, which gives us 3 times the cube root of 3.")
]
#only("4")[
#voiceover("The cube root of 3 can be written as the third root of 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Simplify $5 3^(1/3) - 2 3^(1/3)$ (continued)]
#v(40pt)
#only("1-")[- $= 3 ⋅ 3^(1/3)$]
#v(20pt)
#only("2-")[- $= 3^(1+1/3)$]
#v(20pt)
#only("3-")[- $= 3^(4/3)$]
#v(20pt)
#only("4-")[- $= root(3,3^4)$]
#v(20pt)
#only("5-")[- $= root(3,81)$]
#v(20pt)
#only("6-")[- $= 3^(4/3) = 3 ⋅ root(3,3) ≈ 5.24 🎉$]
#only("1")[
#voiceover("This is the same as 3 multiplied by the cube root of 3.")
]
#only("2")[
#voiceover("Using the power rule for exponents, we can add the exponents when multiplying terms with the same base. So this becomes 3 to the power of 1 plus 1/3.")
]
#only("3")[
#voiceover("Simplifying the exponent, we get 3 to the power of 4/3.")
]
#only("4")[
#voiceover("This can be rewritten as the cube root of 3 to the power of 4.")
]
#only("5")[
#voiceover("3 to the power of 4 is 81, so we have the cube root of 81.")
]
#only("6")[
#voiceover("The cube root of 81 is 3 to the power of 4/3, or 3 times the cube root of 3, which is approximately equal to 5.24. Well done!")
]
]