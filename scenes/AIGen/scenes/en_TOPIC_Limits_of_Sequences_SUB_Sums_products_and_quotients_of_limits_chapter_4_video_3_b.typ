#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Combining Limits]
#v(40pt)
- Given: $a_n = 1/n$ and $b_n = 2/n^2$
- Find: $lim_(n -> infinity) (a_n + b_n) / a_n$
#only("1")[#voiceover("That's not quite right. Let's go through the correct solution step by step. We're given two sequences, a_n equals 1 over n and b_n equals 2 over n squared. We need to find the limit as n approaches infinity of a_n plus b_n, all divided by a_n.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Find $lim_(n -> infinity) a_n$]
#v(40pt)
#only("1-")[- $a_n = 1/n$]
#only("2-")[- $lim_(n -> infinity) 1/n = 0$]
#only("1")[#voiceover("First, let's find the limit of a_n. We know that a_n equals 1 over n.")]
#only("2")[#voiceover("As n approaches infinity, 1 over n approaches 0. So the limit of a_n is 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Find $lim_(n -> infinity) b_n$]
#v(40pt)
#only("1-")[- $b_n = 2/n^2$]
#only("2-")[- $lim_(n -> infinity) 2/n^2 = 0$]
#only("1")[#voiceover("Next, let's find the limit of b_n. We know that b_n equals 2 over n squared.")]
#only("2")[#voiceover("As n approaches infinity, 2 over n squared also approaches 0. So the limit of b_n is 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Apply Limit Laws]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) / a_n$]
#only("2-")[- $= (lim_(n -> infinity) a_n + lim_(n -> infinity) b_n) / lim_(n -> infinity) a_n$]
#only("3-")[- $= (0 + 0) / 0$]
#only("4-")[- $= 0 / 0$ 🚨 Indeterminate Form!]
#only("1")[#voiceover("Now, let's apply the limit laws to our original expression. We have the limit of a_n plus b_n, all divided by a_n.")]
#only("2")[#voiceover("By the limit laws, this is equal to the limit of a_n plus the limit of b_n, all divided by the limit of a_n.")]
#only("3")[#voiceover("We found earlier that the limits of both a_n and b_n are 0. So this becomes 0 plus 0, divided by 0.")]
#only("4")[#voiceover("Uh oh! This is the indeterminate form 0 over 0. We can't evaluate this directly. We need to do some algebraic manipulation.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Algebraic Manipulation]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) ((1/n) + (2/n^2)) / (1/n)$]
#only("2-")[- $= lim_(n -> infinity) (1 + (2/n)) / 1$]
#only("3-")[- $= lim_(n -> infinity) (1 + (2/n))$]
#only("1")[#voiceover("Let's substitute back in the original expressions for a_n and b_n. We have the limit of 1 over n plus 2 over n squared, all divided by 1 over n.")]
#only("2")[#voiceover("Simplifying, the n's cancel out in the numerator and denominator, leaving us with the limit of 1 plus 2 over n, all divided by 1.")]
#only("3")[#voiceover("The division by 1 doesn't change anything, so we're left with the limit of 1 plus 2 over n.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 5: Evaluate the Limit]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (1 + (2/n))$]
#only("2-")[- $= 1 + lim_(n -> infinity) (2/n)$]
#only("3-")[- $= 1 + 0 = 1$ 🎉]
#only("1")[#voiceover("We're in the home stretch now! We have the limit of 1 plus 2 over n.")]
#only("2")[#voiceover("By the limit laws, this is equal to 1 plus the limit of 2 over n. We found earlier that the limit of 2 over n is 0.")]
#only("3")[#voiceover("So our final answer is 1 plus 0, which equals 1. And there we have it! The limit of a_n plus b_n, all divided by a_n, is 1.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
- $lim_(n -> infinity) (a_n + b_n) / a_n = 1$
#only("1")[#voiceover("In conclusion, even though we initially encountered an indeterminate form, we were able to use algebraic manipulation to evaluate the limit. This is a common technique in limit problems. Always remember to apply the limit laws and simplify where possible. Great work on solving this problem!")]
]