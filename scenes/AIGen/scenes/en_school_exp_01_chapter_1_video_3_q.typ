#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Population Growth]
#v(40pt)
#only("1-")[Initial population: 30,000]
#v(20pt)
#only("2-")[Linear growth: 3,000 per year]
#v(20pt)
#only("3-")[Calculate the population after 10 years]
#only("1")[
#voiceover("Consider a population with an initial size of 30,000.")
]
#only("2")[
#voiceover("The population grows linearly by 3,000 each year.")
]
#only("3")[
#voiceover("Your task is to calculate the population size after 10 years.")
]
]#questionDef(
questionText: "What is the population size after 10 years, given an initial population of 30,000 and a linear growth of 3,000 per year?",
answerOptions: ("The population after 10 years is 60,000.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)