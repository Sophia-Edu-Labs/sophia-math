#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying n-th Roots 🌳]
#v(40pt)
#only("1-")[- Factoring the number inside the root]
#v(20pt)
#only("2-")[- Example: $root(3, 27) = root(3, 3^3) = 3$]
#v(20pt)
#only("3-")[- Why? $root(3, 3^3) = (3^3)^(1/3) = 3^(3/3) = 3^1 = 3$]
#only("1")[
#voiceover("To simplify n-th roots, we can factor the number inside the root.")
]
#only("2")[
#voiceover("For example, the cube root of 27 can be simplified by factoring 27 as 3 cubed. This gives us the cube root of 3 cubed, which simplifies to 3.")
]
#only("3")[
#voiceover("Why does this work? Well, the cube root of 3 cubed is equal to 3 cubed to the power of one-third. This is the same as 3 to the power of 3 divided by 3, which is just 3 to the power of 1, or simply 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[More Examples 📝]
#v(40pt)
#only("1-")[- $root(4, 81) = root(4, 3^4) = 3$]
#v(20pt)
#only("2-")[- $root(5, 32) = root(5, 2^5) = 2$]
#v(20pt)
#only("3-")[- $root(2, 64) = root(2, 8^2) = 8$]
#only("1")[
#voiceover("Let's look at a few more examples. The fourth root of 81 can be simplified by factoring 81 as 3 to the fourth power. This gives us the fourth root of 3 to the fourth power, which simplifies to 3.")
]
#only("2")[
#voiceover("Similarly, the fifth root of 32 can be simplified by factoring 32 as 2 to the fifth power. This gives us the fifth root of 2 to the fifth power, which simplifies to 2.")
]
#only("3")[
#voiceover("Finally, the square root of 64 can be simplified by factoring 64 as 8 squared. This gives us the square root of 8 squared, which simplifies to 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points 🔑]
#v(40pt)
#only("1-")[- Factor the number inside the root]
#v(20pt)
#only("2-")[- Look for a factor that is a perfect n-th power]
#v(20pt)
#only("3-")[- The n-th root and the power cancel out]
#only("1")[
#voiceover("To simplify n-th roots, always start by factoring the number inside the root.")
]
#only("2")[
#voiceover("Look for a factor that is a perfect n-th power, like a perfect square, a perfect cube, and so on.")
]
#only("3")[
#voiceover("When you take the n-th root of a number raised to the n-th power, the root and the power cancel out, leaving you with the simplified result.")
]
]