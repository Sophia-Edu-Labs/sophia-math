#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Deaths]
#v(40pt)

// First visual element visible from subslide 1 to the end
#only("1-")[- In another region, out of 20,000 cases, 300 people died. 🏥]
#v(20pt)

// Second visual element visible from subslide 2 to the end
#only("2-")[- What is the relative frequency of deaths in this region? ❓]
#v(20pt)

// First voiceover read out on subslide 1 only
#only("1")[
#voiceover("In another region, out of twenty thousand cases, three hundred people died.")
]

// Second voiceover read out on subslide 2 only
#only("2")[
#voiceover("What is the relative frequency of deaths in this region?")
]
]

//Type: FREE 
#questionDef( 
questionText: "In another region, out of $20,000$ cases, $300$ people died. What is the relative frequency of deaths in this region?", 
answerOptions: ("$\frac{300}{20000} = 0.015$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)