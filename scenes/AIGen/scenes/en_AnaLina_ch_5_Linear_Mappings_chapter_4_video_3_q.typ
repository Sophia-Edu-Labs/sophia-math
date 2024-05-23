#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula]
#v(40pt)
#only("1-")[
- For a linear mapping $T: V arrow W$
]
#v(20pt)
#only("2-")[
- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$
]
#v(40pt)
#only("3-")[
Given:
- $T: R^3 arrow R^2$
- $"dim"("ker"(T)) = 1$
]
#v(40pt)
#only("4-")[
Find:
- $"dim"("im"(T)) = ?$
]

#only("1")[
#voiceover("Consider the dimension formula for a linear mapping T from V to W.")
]
#only("2")[
#voiceover("It states that the dimension of V equals the dimension of the kernel of T plus the dimension of the image of T.")
]
#only("3")[
#voiceover("Now, let's look at the given information. We have a linear mapping T from R 3 to R 2, and the dimension of the kernel of T is 1.")
]
#only("4")[
#voiceover("Your task is to find the dimension of the image of T.")
]
]#questionDef(
questionText: "What is $\dim(\mathrm{im}(T))$?",
answerOptions: ("1", "2", "3"),
correctAnswerIndex: 1,
)