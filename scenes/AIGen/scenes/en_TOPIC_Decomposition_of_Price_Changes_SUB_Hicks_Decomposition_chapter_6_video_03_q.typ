#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Application]
// The title "Real-World Application" is shown on all slides
#v(40pt)

#only("1-")[Consider a scenario where the government imposes a tax on a specific good. 🏛️]
// The scenario is shown from slide 1 onward
#v(20pt)

#only("2-")[How can Hicks Decomposition be used to analyze the effects of this tax on consumer behavior? 🤔]
// The question is shown from slide 2 onward

#only("1")[
#voiceover("Let's consider a real-world scenario where the government imposes a tax on a specific good.")
]

#only("2")[
#voiceover("How can Hicks Decomposition be used to analyze the effects of this tax on consumer behavior?")
]
]#questionDef(
questionText: "How can Hicks Decomposition be used to analyze the effects of a tax on a specific good on consumer behavior?",
answerOptions: ("Hicks Decomposition can separate the substitution and income effects of the price increase due to the tax, helping to understand how consumers adjust their consumption of the taxed good and other goods.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)