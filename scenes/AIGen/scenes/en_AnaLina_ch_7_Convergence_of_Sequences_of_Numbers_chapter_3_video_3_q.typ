#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Convergence of a Sequence]

#v(40pt)

#only("1-")[Sequence: $a_n = 1/n$]

#v(20pt)

#only("2-")[Limit: $L = 0$]

#v(20pt)

#only("3-")[Exercise: Prove that $a_n$ converges to $L$ using the formal definition of convergence.]

#only("1")[
#voiceover("Consider the sequence a sub n equals 1 over n.")
]

#only("2")[
#voiceover("We want to show that this sequence converges to the limit L equals 0.")
]

#only("3")[
#voiceover("Your task is to prove that a sub n converges to L using the formal definition of convergence. Good luck!")
]

]#questionDef(
questionText: "Prove that the sequence $a_n = \frac{1}{n}$ converges to $L = 0$ using the formal definition of convergence.",
answerOptions: ("A correct proof using the formal definition of convergence, showing that for any $\epsilon > 0$, there exists an $N$ such that for all $n \geq N$, $|a_n - L| < \epsilon$.", "The proof is incorrect or incomplete."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)