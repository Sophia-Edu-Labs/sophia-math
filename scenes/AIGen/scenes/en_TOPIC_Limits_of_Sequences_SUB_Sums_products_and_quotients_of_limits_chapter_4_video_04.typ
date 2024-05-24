#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Combining Limits 🧮]
#v(40pt)
#only("1-")[
- Limits of sums, products, and quotients
]
#v(20pt)
#only("2-")[
- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$
]
#v(20pt)
#only("3-")[
- $lim_(n -> infinity) (a_n b_n) = lim_(n -> infinity) a_n dot lim_(n -> infinity) b_n$
]
#v(20pt)
#only("4-")[
- $lim_(n -> infinity) (a_n / b_n) = lim_(n -> infinity) a_n / lim_(n -> infinity) b_n$, if $lim_(n -> infinity) b_n != 0$
]
#only("1")[
#voiceover("In this recap, we'll go over how to combine limits using sums, products, and quotients to find the limit of more complex sequences.")
]
#only("2")[
#voiceover("The limit of the sum of two sequences is equal to the sum of their individual limits.")
]
#only("3")[
#voiceover("Similarly, the limit of the product of two sequences is equal to the product of their individual limits.")
]
#only("4")[
#voiceover("For quotients, the limit of the quotient of two sequences is equal to the quotient of their individual limits, provided that the limit of the denominator sequence is not zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]
#v(40pt)
#only("1-")[
Given $a_n = 1/n$ and $b_n = 2/n^2$, find:
]
#v(20pt)
#only("2-")[
$lim_(n -> infinity) (a_n + b_n) / a_n$
]
#only("1")[
#voiceover("Let's look at an example. Given two sequences a_n equals 1 over n and b_n equals 2 over n squared, we want to find the limit of their sum divided by a_n as n approaches infinity.")
]
#only("2")[
#voiceover("We can break this down using the rules we just discussed.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution 🎯]
#v(40pt)
#only("1-")[
$lim_(n -> infinity) (a_n + b_n) / a_n$
]
#v(20pt)
#only("2-")[
$= (lim_(n -> infinity) a_n + lim_(n -> infinity) b_n) / lim_(n -> infinity) a_n$
]
#v(20pt)
#only("3-")[
$= (0 + 0) / 0$
]
#v(20pt)
#only("4-")[
$= 0 / 0$ (indeterminate form)
]
#v(20pt)
#only("5-")[
$= lim_(n -> infinity) (1 + b_n / a_n) = 1$
]
#only("1")[
#voiceover("We start with the limit we want to find.")
]
#only("2")[
#voiceover("Using the rules for limits of sums and quotients, we can split this into the sum of the limits of a_n and b_n, divided by the limit of a_n.")
]
#only("3")[
#voiceover("We know that the limit of 1 over n and 2 over n squared, as n approaches infinity, are both zero.")
]
#only("4")[
#voiceover("This gives us zero divided by zero, which is an indeterminate form.")
]
#only("5")[
#voiceover("To resolve this, we can simplify the original expression to 1 plus b_n over a_n, and then find the limit. As n approaches infinity, b_n over a_n goes to zero, so the limit is 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[
- Limits can be combined using sum, product, and quotient rules
]
#v(20pt)
#only("2-")[
- Be careful with indeterminate forms (like 0/0)
]
#v(20pt)
#only("3-")[
- Simplify expressions before finding limits when necessary
]
#only("1")[
#voiceover("The key takeaways from this recap are:")
]
#only("2")[
#voiceover("First, limits can be combined using the rules for sums, products, and quotients. However, be careful with indeterminate forms like zero over zero.")
]
#only("3")[
#voiceover("If you encounter an indeterminate form, try simplifying the expression before finding the limit, as we did in the example.")
]
]