#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequences Recap 📜]
#v(40pt)
#only("1-")[- Ordered list of numbers]
#v(20pt)
#only("2-")[- Often defined by a formula for the $n$-th term]
#v(20pt)
#only("3-")[- Example: $a_n = 2n + 1$]
#only("1")[
#voiceover("Let's recap what we've learned about sequences. A sequence is an ordered list of numbers.")
]
#only("2")[
#voiceover("Sequences are often defined by a formula for the n-th term.")
]
#only("3")[
#voiceover("For example, the sequence a sub n equals 2n plus 1 is defined by this formula for its n-th term.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Convergence 🎯]
#v(40pt)
#only("1-")[- Sequence converges if terms approach a specific value as $n → ∞$]
#v(20pt)
#only("2-")[- Example: $a_n = 1/n$ converges to 0]
#only("1")[
#voiceover("We also learned about convergence. A sequence converges if its terms approach a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("For instance, the sequence a sub n equals 1 over n converges to 0 as n approaches infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergence ♾️]
#v(40pt)
#only("1-")[- Sequence diverges to infinity if terms increase without bound as $n → ∞$]
#v(20pt)
#only("2-")[- Example: $a_n = n$ diverges to infinity]
#only("1")[
#voiceover("On the other hand, a sequence diverges to infinity if its terms increase without bound as n goes to infinity.")
]
#only("2")[
#voiceover("An example of a divergent sequence is a sub n equals n, which diverges to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Sequences are ordered lists of numbers, often defined by a formula]
#v(20pt)
#only("2-")[- Convergent sequences approach a specific value as $n → ∞$]
#v(20pt)
#only("3-")[- Divergent sequences increase without bound as $n → ∞$]
#only("1")[
#voiceover("To sum up, sequences are ordered lists of numbers, often defined by a formula for the n-th term.")
]
#only("2")[
#voiceover("Convergent sequences approach a specific value as n goes to infinity.")
]
#only("3")[
#voiceover("While divergent sequences increase without bound as n approaches infinity.")
]
]