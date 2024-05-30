#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[- You correctly calculated the pH as 3]
#v(20pt)
#only("2-")[- Let's review the solution step by step]
#only("1")[
#voiceover("Let's review the correct solution for calculating the pH of a solution with a hydrogen ion concentration of 1 times 10 to the power of negative 3 molar.")
]
#only("2")[
#voiceover("Now, let's review the solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Recall pH Formula]
#v(40pt)
#only("1-")[- pH = -log[H+]]
#only("1")[
#voiceover("The first step is to recall the formula for calculating pH from the hydrogen ion concentration. pH equals the negative logarithm of the hydrogen ion concentration.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Substitute Values]
#v(40pt)
#only("1-")[- [H+] = $1 dot 10^(-3)$ M]
#v(20pt)
#only("2-")[- pH = -log($1 dot 10^(-3)$)]
#only("1")[
#voiceover("Next, we substitute the given hydrogen ion concentration of 1 times 10 to the power of negative 3 molar into the formula.")
]
#only("2")[
#voiceover("This gives us pH equals the negative logarithm of 1 times 10 to the power of negative 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify]
#v(40pt)
#only("1-")[- pH = -log($1 dot 10^(-3)$)]
#v(20pt)
#only("2-")[- pH = -(-3 log(10))]
#v(20pt)
#only("3-")[- pH = 3 log(10)]
#only("1")[
#voiceover("Now, we simplify the expression inside the logarithm.")
]
#only("2")[
#voiceover("Using the logarithm rule for powers, we can rewrite this as the negative of negative 3 times the logarithm of 10.")
]
#only("3")[
#voiceover("The two negatives cancel out, leaving us with pH equals 3 times the logarithm of 10.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Evaluate]
#v(40pt)
#only("1-")[- pH = 3 log(10)]
#v(20pt)
#only("2-")[- log(10) = 1]
#v(20pt)
#only("3-")[- pH = 3 dot 1 = 3]
#only("1")[
#voiceover("In the final step, we evaluate the logarithm of 10.")
]
#only("2")[
#voiceover("The logarithm of 10 to any base is equal to 1.")
]
#only("3")[
#voiceover("Therefore, pH equals 3 times 1, which equals 3. And that's the pH of the solution!")
]
]