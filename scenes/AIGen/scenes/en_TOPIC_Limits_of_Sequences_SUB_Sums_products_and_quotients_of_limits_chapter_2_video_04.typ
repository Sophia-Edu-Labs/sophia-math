#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Product of Limits 📈×📉]

#v(40pt)

#only("1-")[
- If $lim_(n->infinity) a_n = L$ and $lim_(n->infinity) b_n = M$, then $lim_(n->infinity) (a_n b_n) = L M$
]

#only("1")[
#voiceover("To recap, if the limit of sequence a_n as n approaches infinity is L, and the limit of sequence b_n as n approaches infinity is M, then the limit of the product of these sequences, a_n times b_n, as n approaches infinity, is equal to the product of their individual limits, L times M.")
]

#v(40pt)

#only("2-")[
For example:
- If $a_n = 1/n$ and $b_n = 2/n$
- $lim_(n->infinity) a_n = 0$ and $lim_(n->infinity) b_n = 0$
- Then, $lim_(n->infinity) (a_n b_n) = lim_(n->infinity) (1/n × 2/n) = 0 × 0 = 0$
]

#only("2")[
#voiceover("For example, if a_n equals 1 over n, and b_n equals 2 over n, we know that the limit of a_n as n approaches infinity is 0, and the limit of b_n as n approaches infinity is also 0. Then, the limit of the product a_n times b_n, which is 1 over n times 2 over n, as n approaches infinity, is equal to the product of the individual limits, 0 times 0, which is 0.")
]

#v(40pt)

#only("3-")[
💡 This property allows us to find limits of more complex sequences by breaking them down into simpler ones.
]

#only("3")[
#voiceover("This property of limits is very useful, as it allows us to find limits of more complex sequences by breaking them down into simpler sequences whose limits we can easily find, and then multiplying these limits together.")
]
]