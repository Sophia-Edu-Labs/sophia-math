#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we can solve this step by step.]
#only("1")[
#voiceover("Great job! That's absolutely correct. Let's now go through the solution step by step to understand how we arrived at this answer.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[- $T: R^3 -> R^2$]
#v(20pt)
#only("2-")[- $"dim"("ker"(T)) = 1$]
#only("1")[
#voiceover("We are given a linear transformation T from R 3 to R 2.")
]
#only("2")[
#voiceover("We are also told that the dimension of the kernel of T is 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula]
#v(40pt)
#only("1-")[- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
#v(20pt)
#only("2-")[- Here, $V = R^3$, so $"dim"(V) = 3$]
#only("1")[
#voiceover("To find the dimension of the image of T, we can use the dimension formula. It states that the dimension of the domain V equals the dimension of the kernel of T plus the dimension of the image of T.")
]
#only("2")[
#voiceover("In this case, the domain V is R 3, so the dimension of V is 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solve]
#v(40pt)
#only("1-")[- $3 = 1 + "dim"("im"(T))$]
#v(20pt)
#only("2-")[- $"dim"("im"(T)) = 3 - 1 = 2$]
#only("1")[
#voiceover("Substituting the given values into the formula, we get 3 equals 1 plus the dimension of the image of T.")
]
#only("2")[
#voiceover("Solving for the dimension of the image of T, we get that it equals 3 minus 1, which is 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Answer]
#v(40pt)
#only("1-")[- $"dim"("im"(T)) = 2$ 📐]
#only("1")[
#voiceover("Therefore, the dimension of the image of T is 2. Great work on solving this problem!")
]
]