#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sequence Quotients]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = ? $]
#only("1")[
#voiceover("Consider two sequences a sub n and b sub n. What is the limit of their quotient as n approaches infinity?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sequence Quotients]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = (lim_(n -> infinity) a_n)/(lim_(n -> infinity) b_n) $]
#v(20pt)
#only("2-")[⚠️ Provided $ lim_(n -> infinity) b_n ≠ 0 $]
#only("1")[
#voiceover("The limit of the quotient of two sequences is equal to the quotient of their individual limits.")
]
#only("2")[
#voiceover("However, this is only true if the limit of the denominator sequence b sub n is not equal to zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $ a_n = 1/n $ and $ b_n = 1/n^2 $]
#v(20pt)
#only("2-")[$ lim_(n -> infinity) (a_n/b_n) = ? $]
#only("1")[
#voiceover("Let's look at an example. Consider the sequences a sub n equals 1 over n and b sub n equals 1 over n squared.")
]
#only("2")[
#voiceover("What is the limit of the quotient of these sequences as n approaches infinity?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = (lim_(n -> infinity) (1)/(n))/(lim_(n -> infinity) (1)/(n^2)) $]
#v(20pt)
#only("2-")[$ = (0)/(0) = (0 dot n^2)/(0 dot n) = n $]
#v(20pt)
#only("3-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = lim_(n -> infinity) n = infinity $]
#only("1")[
#voiceover("Using the rule we just learned, this is equal to the limit of a sub n divided by the limit of b sub n.")
]
#only("2")[
#voiceover("The limit of 1 over n is zero and the limit of 1 over n squared is also zero. So this is 0 over 0, which is an indeterminate form. But we can rewrite this as 0 times n squared over 0 times n, which simplifies to just n.")
]
#only("3")[
#voiceover("Therefore, the limit of the quotient of these sequences is the limit of n as n approaches infinity, which is infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = (lim_(n -> infinity) a_n)/(lim_(n -> infinity) b_n) $]
#v(20pt)
#only("2-")[⚠️ Provided $ lim_(n -> infinity) b_n ≠ 0 $]
#v(20pt)
#only("3-")[🧮 Use L'Hôpital's rule for (0)/(0) or (infinity)/(infinity)]
#only("1")[
#voiceover("In summary, the limit of the quotient of two sequences is the quotient of their limits,")
]
#only("2")[
#voiceover("provided that the limit of the denominator sequence is not zero.")
]
#only("3")[
#voiceover("If you end up with an indeterminate form like 0 over 0 or infinity over infinity, you can use L'Hôpital's rule to evaluate the limit.")
]
]