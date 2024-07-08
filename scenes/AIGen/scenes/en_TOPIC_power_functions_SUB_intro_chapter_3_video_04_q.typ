#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function with Negative Coefficient]
  #v(40pt)

  #only("1-")[Write a power function that:]
  #v(20pt)
  #only("2-")[- Has a negative coefficient 📉]
  #v(10pt)
  #only("3-")[- Passes through the point (1, -5) 📍]
  #v(10pt)
  #only("4-")[- Has $b = 2$ 🔢]

  #only("1")[
    #voiceover("Let's consider a power function with some specific characteristics.")
  ]

  #only("2")[
    #voiceover("First, we need a power function with a negative coefficient.")
  ]

  #only("3")[
    #voiceover("Second, this function should pass through the point one comma negative five.")
  ]

  #only("4")[
    #voiceover("Lastly, we're given that b equals two.")
  ]

  #only("5-")[Can you write the equation for this power function?]

  #only("5")[
    #voiceover("Can you write the equation for this power function that satisfies all these conditions?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Write the power function that has a negative coefficient and passes through the point $(1, -5)$ with $b = 2$.", 
answerOptions: ("$f(x) = -5x^2$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)