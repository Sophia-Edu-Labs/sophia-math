#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see why.]
#only("1")[
#voiceover("That's not quite right. Let's see the correct solution and why the sequence $a_n = 1/n$ satisfies the epsilon criterion for $\epsilon = 0.01$.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Epsilon Criterion]
#v(40pt)
#only("1-")[- Sequence $(a_n)$ satisfies epsilon criterion for $epsilon > 0$ if:]
#v(20pt)
#only("2-")[- $∃ N ∈ NN, ∀ n ≥ N: |a_n - a| < epsilon$]
#only("1")[
#voiceover("A sequence a_n satisfies the epsilon criterion for a given epsilon greater than 0 if")
]
#only("2")[
#voiceover("there exists a natural number N such that for all n greater than or equal to N, the absolute value of a_n minus a is less than epsilon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Solve for $n$]
#v(40pt)
#only("1-")[- $|a_n - a| < epsilon$]
#v(20pt)
#only("2-")[- $|1/n - 0| < 0.01$]
#v(20pt)
#only("3-")[- $1/n < 0.01$]
#v(20pt)
#only("4-")[- $n > 100$]
#only("1")[
#voiceover("We start by solving the inequality |a_n minus a| less than epsilon for n.")
]
#only("2")[
#voiceover("For our sequence, this means |1/n minus 0| less than 0.01, as the limit of 1/n is 0.")
]
#only("3")[
#voiceover("Simplifying, we get 1/n less than 0.01.")
]
#only("4")[
#voiceover("Solving for n, we find that n must be greater than 100.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Choose $N$]
#v(40pt)
#only("1-")[- We need $n > 100$]
#v(20pt)
#only("2-")[- Let's choose $N = 101$]
#v(20pt)
#only("3-")[- Then $∀ n ≥ 101: |a_n - 0| < 0.01$]
#only("1")[
#voiceover("We need n to be greater than 100.")
]
#only("2")[
#voiceover("So let's choose N to be 101.")
]
#only("3")[
#voiceover("Then for all n greater than or equal to 101, |a_n minus 0| is less than 0.01.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion ✅]
#v(40pt)
#only("1-")[- $∃ N = 101, ∀ n ≥ N: |a_n - 0| < 0.01$]
#v(20pt)
#only("2-")[- Sequence $a_n = 1/n$ satisfies epsilon criterion for $epsilon = 0.01$]
#only("1")[
#voiceover("In conclusion, there exists an N, namely 101, such that for all n greater than or equal to N, |a_n minus 0| is less than 0.01.")
]
#only("2")[
#voiceover("Therefore, the sequence a_n equals 1/n satisfies the epsilon criterion for epsilon equals 0.01.")
]
]