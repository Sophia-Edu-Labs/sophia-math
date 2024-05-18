#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Examples of Vector Spaces 🌌]
#v(40pt)
#only("1-")[- $RR^n$: The set of all n-tuples of real numbers]
#v(20pt)
#only("2-")[- $P$: The set of all polynomials]
#v(20pt)
#only("3-")[- $C[a,b]$: The set of all continuous functions on the interval $[a,b]$]
#only("1")[
#voiceover("Common examples of vector spaces include R to the n, which is the set of all n-tuples of real numbers.")
]
#only("2")[
#voiceover("Another example is the set of all polynomials, often denoted by P.")
]
#only("3")[
#voiceover("The set of all continuous functions on a closed interval from a to b, denoted by C of a, b, is also a vector space.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Not All Sets are Vector Spaces ❌]
#v(40pt)
#only("1-")[Example: The set of non-negative real numbers $RR_+$]
#v(20pt)
#only("2-")[Reason: Not closed under scalar multiplication]
#only("1")[
#voiceover("It's important to note that not all sets form vector spaces. For example, consider the set of non-negative real numbers, denoted by R subscript plus.")
]
#only("2")[
#voiceover("This set is not a vector space because it's not closed under scalar multiplication. If you multiply a non-negative number by a negative scalar, the result is a negative number, which is not in the set.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 📝]
#v(40pt)
#only("1-")[- Common vector spaces: $RR^n$, $P$, $C[a,b]$ ✅]
#v(20pt)
#only("2-")[- Not all sets are vector spaces (e.g., $RR_+$) ❌]
#only("1")[
#voiceover("To recap, common examples of vector spaces include R to the n, the set of all polynomials, and the set of all continuous functions on a closed interval.")
]
#only("2")[
#voiceover("However, not all sets form vector spaces. The set of non-negative real numbers is an example of a set that is not a vector space because it fails to satisfy the closure property under scalar multiplication.")
]
]