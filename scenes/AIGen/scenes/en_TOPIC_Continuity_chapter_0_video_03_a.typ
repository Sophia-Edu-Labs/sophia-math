#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of $f(x) = 2x + 3$ as $x$ approaches 1]
#v(40pt)
#only("1-")[- Given: $f(x) = 2x + 3$]
#v(20pt)
#only("2-")[- We want to find: $lim_(x -> 1) f(x)$]
#v(20pt)
#only("3-")[- Approach: Direct Substitution 🔀]
#only("1")[
#voiceover("Alright, let's tackle this problem step by step. We are given the function f of x equals 2x plus 3.")
]
#only("2")[
#voiceover("Our goal is to find the limit of this function as x approaches 1.")
]
#only("3")[
#voiceover("To do this, we will use the method of direct substitution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Substitute]
#v(40pt)
#only("1-")[- $lim_(x -> 1) f(x) = lim_(x -> 1) (2x + 3)$]
#v(20pt)
#only("2-")[- Substitute $x = 1$:]
#v(20pt)
#only("3-")[- $= 2(1) + 3$]
#only("1")[
#voiceover("First, we write out the limit expression, substituting the function f of x with its definition 2x plus 3.")
]
#only("2")[
#voiceover("Next, we directly substitute x with 1 in the expression.")
]
#only("3")[
#voiceover("This gives us 2 times 1 plus 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Simplify]
#v(40pt)
#only("1-")[- $lim_(x -> 1) f(x) = 2(1) + 3$]
#v(20pt)
#only("2-")[- Simplify: $= 2 + 3$]
#v(20pt)
#only("3-")[- $= 5$ ✅]
#only("1")[
#voiceover("Now we have the simplified expression after substitution: 2 times 1 plus 3.")
]
#only("2")[
#voiceover("Let's simplify this further. 2 times 1 is 2, plus 3 is...")
]
#only("3")[
#voiceover("5! Therefore, the limit of f of x as x approaches 1 is equal to 5. Great job!")
]
]