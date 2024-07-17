#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Absolute Frequency of Traveling to Italy]
#v(40pt)

// First visual element visible from subslide 1 to the end
#only("1-")[- Spain: 7 times 🇪🇸]
#v(20pt)

// Second visual element visible from subslide 2 to the end
#only("2-")[- Germany: 2 times 🇩🇪]
#v(20pt)

// Third visual element visible from subslide 3 to the end
#only("3-")[- Italy: 9 times 🇮🇹]
#v(20pt)

// Fourth visual element visible from subslide 4 to the end
#only("4-")[- USA: 1 time 🇺🇸]

// First voiceover read out on subslide 1 only
#only("1")[
#voiceover("Let's consider the travel data. A person traveled to Spain seven times.")
]

// Second voiceover read out on subslide 2 only
#only("2")[
#voiceover("They traveled to Germany two times.")
]

// Third voiceover read out on subslide 3 only
#only("3")[
#voiceover("They traveled to Italy nine times.")
]

// Fourth voiceover read out on subslide 4 only
#only("4")[
#voiceover("And they traveled to the USA one time.")
]

// Fifth visual element visible from subslide 5 to the end
#only("5-")[- What is the absolute frequency of traveling to Italy? ❓]

// Fifth voiceover read out on subslide 5 only
#only("5")[
#voiceover("What is the absolute frequency of traveling to Italy?")
]
]

//Type: FREE 
#questionDef( 
questionText: "A person traveled to Spain $7$ times, Germany $2$ times, Italy $9$ times, and the USA $1$ time. What is the absolute frequency of traveling to Italy?", 
answerOptions: ("$9$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)