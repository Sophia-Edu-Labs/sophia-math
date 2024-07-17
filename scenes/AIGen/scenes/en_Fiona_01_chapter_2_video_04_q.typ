#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Traveling to Spain or the USA]
#v(40pt)

#only("1")[#voiceover("Let's consider the question at hand.")]
#only("2-")[#text()[- What is the relative frequency of traveling to Spain or the USA? 🌍🇪🇸🇺🇸]]
#v(20pt)
#only("3-")[#text()[- Relative frequency is calculated as the number of favorable outcomes divided by the total number of outcomes.]]
#v(20pt)
#only("4-")[#text()[- We need to determine the number of people who traveled to Spain or the USA.]]
#v(20pt)
#only("5-")[#text()[- Then, we divide that by the total number of people surveyed.]]
#v(20pt)
#only("6-")[#text()[- This will give us the relative frequency.]]
#v(20pt)

#only("2")[
#voiceover("What is the relative frequency of traveling to Spain or the USA?")
]
#only("3")[
#voiceover("Relative frequency is calculated as the number of favorable outcomes divided by the total number of outcomes.")
]
#only("4")[
#voiceover("We need to determine the number of people who traveled to Spain or the USA.")
]
#only("5")[
#voiceover("Then, we divide that by the total number of people surveyed.")
]
#only("6")[
#voiceover("This will give us the relative frequency.")
]
]

//Type: FREE 
#questionDef( 
questionText: "What is the relative frequency of traveling to Spain or the USA?", 
answerOptions: ("To determine the relative frequency, we need the total number of observations and the number of observations for traveling to Spain or the USA. The relative frequency is then calculated as $rac{	ext{Number of observations for Spain or USA}}{	ext{Total number of observations}}$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)