#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Combining Limits]
#v(40pt)
Given $lim_(n -> infinity) a_n = 1$ and $lim_(n -> infinity) b_n = 2$, what is $lim_(n -> infinity) (a_n + b_n) a_n$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) 2]#only("3-")[#text(fill:red)[b) 2]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) 3]#only("4-")[#text(fill:green)[c) 3]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) 4]#only("5-")[#text(fill:red)[d) 4]]
#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 1: Use the sum rule for limits]
#v(10pt)
#only("2-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(10pt)
#only("3-")[- $= 1 + 2 = 3$]
#v(40pt)
#only("4-")[Step 2: Use the product rule for limits]
#v(10pt)
#only("5-")[- $lim_(n -> infinity) ((a_n + b_n) a_n) = (lim_(n -> infinity) (a_n + b_n)) (lim_(n -> infinity) a_n)$]
#v(10pt)
#only("6-")[- $= 3 dot 1 = 3$]
#v(40pt)
#only("7-")[Therefore, $lim_(n -> infinity) ((a_n + b_n) a_n) = 3$. 🎉]

#only("1")[#voiceover("Let's solve this step by step.")]
#only("2")[#voiceover("First, we use the sum rule for limits. This states that the limit of a sum is equal to the sum of the limits.")]
#only("3")[#voiceover("Applying this rule, we get that the limit of a n plus b n as n approaches infinity is equal to the limit of a n, which is 1, plus the limit of b n, which is 2. This gives us 3.")]
#only("4")[#voiceover("Next, we use the product rule for limits. This rule states that the limit of a product is equal to the product of the limits.")]
#only("5")[#voiceover("So, the limit of a n plus b n times a n as n approaches infinity is equal to the limit of a n plus b n, which we just found to be 3, times the limit of a n, which is given as 1.")]
#only("6")[#voiceover("Multiplying these, we get 3 times 1, which is 3.")]
#only("7")[#voiceover("Therefore, the limit of a n plus b n times a n as n approaches infinity is equal to 3.")]
]