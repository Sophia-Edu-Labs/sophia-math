#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving $root(4, x) = 3$]
#v(40pt)
#only("1-")[- Raise both sides to the power of 4]
#v(20pt)
#only("2-")[$(root(4, x))^4 = 3^4$]
#v(20pt)
#only("3-")[- Simplify]
#v(20pt)
#only("4-")[$ x = 81$]
#only("1")[
#voiceover("That's not quite right. Let's go over the correct solution. To solve the equation fourth root of x equals 3, we can raise both sides to the power of 4.")
]
#only("2")[
#voiceover("This gives us the fourth root of x to the power of 4 equals 3 to the power of 4.")
]
#only("3")[
#voiceover("On the left side, the fourth root and the fourth power cancel out, leaving just x. On the right side, 3 to the power of 4 is 81.")
]
#only("4")[
#voiceover("So we have x equals 81. 🎉")
]
]