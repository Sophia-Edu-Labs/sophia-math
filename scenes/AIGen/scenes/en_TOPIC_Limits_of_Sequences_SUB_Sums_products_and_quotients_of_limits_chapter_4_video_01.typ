#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Combining Limits]
#v(40pt)
#only("1-")[- Limits can be combined using:
  - ➕ Sums
  - ✖️ Products 
  - ➗ Quotients]
#v(20pt)
#only("2-")[- To find the limit of more complex sequences]
#only("1")[
#voiceover("Limits of sequences can be combined using sums, products, and quotients.")
]
#only("2")[
#voiceover("This allows us to find the limit of more complex sequences by breaking them down into simpler parts.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Sum Rule]
#v(40pt)
#only("1-")[If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$, then:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n + b_n) = L + M$]
#only("1")[
#voiceover("The sum rule states that if the limit of sequence a sub n is L and the limit of sequence b sub n is M, then...")
]
#only("2")[
#voiceover("the limit of the sum of these sequences, a sub n plus b sub n, is equal to L plus M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Product Rule]
#v(40pt)
#only("1-")[If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$, then:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n b_n) = L M$]
#only("1")[
#voiceover("Similarly, the product rule states that if the limit of sequence a sub n is L and the limit of sequence b sub n is M, then...")
]
#only("2")[
#voiceover("the limit of the product of these sequences, a sub n times b sub n, is equal to L times M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Quotient Rule]
#v(40pt)
#only("1-")[If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$ (𝑀 ≠ 0), then:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n / b_n) = L / M$]
#only("1")[
#voiceover("Finally, the quotient rule states that if the limit of sequence a sub n is L and the limit of sequence b sub n is M, where M is not equal to zero, then...")
]
#only("2")[
#voiceover("the limit of the quotient of these sequences, a sub n divided by b sub n, is equal to L divided by M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Given $a_n = 1/n$ and $b_n = 2/n^2$, find:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n + b_n) / a_n$]
#v(20pt)
#only("3-")[Solution: $lim_(n -> infinity) (a_n + b_n) / a_n = 1$]
#only("1")[
#voiceover("Let's look at an example. Given sequences a sub n equals 1 over n and b sub n equals 2 over n squared, we want to find...")
]
#only("2")[
#voiceover("the limit as n approaches infinity of the sum of a sub n and b sub n, divided by a sub n.")
]
#only("3")[
#voiceover("Using the sum, quotient, and individual limits, we can calculate that this limit is equal to 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Limits can be combined using sum, product, and quotient rules 🎨]
#v(20pt)
#only("2-")[- Allows finding limits of complex sequences by breaking them down 🧩]
#v(20pt)
#only("3-")[- Powerful tool for analyzing the behavior of sequences 🔍]
#only("1")[
#voiceover("In summary, limits of sequences can be combined using the sum, product, and quotient rules.")
]
#only("2")[
#voiceover("This allows us to find the limits of complex sequences by breaking them down into simpler parts.")
]
#only("3")[
#voiceover("These rules provide a powerful tool for analyzing the behavior of sequences as they approach infinity.")
]
]