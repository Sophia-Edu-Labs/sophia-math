#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula Exercise]
#v(40pt)
#only("1-")[Given a linear mapping $T: R^4 -> R^3$ with $"dim"("ker"(T)) = 2$.]
#v(20pt)
#only("2-")[Find $"dim"("im"(T))$ and explain the relationship. 🤔]

#only("1")[
#voiceover("Consider a linear mapping T from R 4 to R 3 where the dimension of the kernel of T is 2.")
]
#only("2")[
#voiceover("Your task is to find the dimension of the image of T and explain the relationship between the dimensions of the kernel, image, and the domain space.")
]
]#questionDef(
questionText: "Given a linear mapping $T: \mathbb{R}^4 \\to \mathbb{R}^3$ with $\dim(\ker(T)) = 2$, find $\dim(\operatorname{im}(T))$ and explain the relationship.",
answerOptions: ("The dimension of the image is 2. The relationship is that the sum of the dimensions of the kernel and image equals the dimension of the domain, i.e., $\dim(\mathbb{R}^4) = \dim(\ker(T)) + \dim(\operatorname{im}(T))$.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)