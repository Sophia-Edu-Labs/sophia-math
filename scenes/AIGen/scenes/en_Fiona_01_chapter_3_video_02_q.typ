#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Absolute Frequency of Deaths in COVID-19 Cases]
#v(40pt)

// First visual element visible from subslide 1 to the end
#only("1-")[- In a sample of 10,000 COVID-19 cases 🦠]
// Second visual element visible from subslide 2 to the end
#only("2-")[- 150 people died 💀]
// Third visual element visible from subslide 3 to the end
#only("3-")[- What is the absolute frequency of deaths? ❓]

// First voiceover read out on subslide 1 only
#only("1")[
#voiceover("Let's consider a sample of ten thousand COVID-19 cases.")
]
// Second voiceover read out on subslide 2 only
#only("2")[
#voiceover("In this sample, one hundred and fifty people died.")
]
// Third voiceover read out on subslide 3 only
#only("3")[
#voiceover("What is the absolute frequency of deaths?")
]
]

//Type: FREE 
#questionDef( 
questionText: "In a sample of $10,000$ COVID-19 cases, $150$ people died. What is the absolute frequency of deaths?", 
answerOptions: ("$150$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)