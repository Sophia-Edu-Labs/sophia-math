#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise Question]
#v(40pt)
#only("1-")[Using the formal definition of divergence to infinity, prove that the sequence $a_n = n$ diverges to infinity.]
#only("1")[
#voiceover("Using the formal definition of divergence to infinity, prove that the sequence a sub n equals n diverges to infinity.")
]
]#questionDef(
questionText: "Using the formal definition of divergence to infinity, prove that the sequence $a_n = n$ diverges to infinity.",
answerOptions: ("Correct proof showing that for any $M > 0$, there exists an $N$ such that for all $n \geq N$, $a_n > M$.", "Incorrect or incomplete proof."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)