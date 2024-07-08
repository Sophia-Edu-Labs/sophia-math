#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Behavior of $x^4$ as $x$ Approaches Infinity]
  #v(40pt)

  #only("1-")[Consider the function $f(x) = x^4$]
  #v(20pt)

  #only("2-")[How does this function behave as $x$ approaches:
    #only("3-")[- Positive infinity ($x arrow infinity$)]
    #only("4-")[- Negative infinity ($x arrow -infinity$)]
  ]

  #v(20pt)

  #only("5-")[Possible behaviors:
    #only("6-")[a) Approaches 0]
    #only("7-")[b) Grows exponentially]
    #only("8-")[c) Decreases without bound]
    #only("9-")[d) Increases without bound]
  ]

  #only("1")[#voiceover("Let's examine the behavior of a power function. Consider the function f of x equals x to the fourth power.")]
  
  #only("2")[#voiceover("We want to understand how this function behaves as x approaches extreme values.")]
  
  #only("3")[#voiceover("First, let's think about what happens as x approaches positive infinity.")]
  
  #only("4")[#voiceover("Then, we'll consider what happens as x approaches negative infinity.")]
  
  #only("5")[#voiceover("Here are some possible behaviors for the function:")]
  
  #only("6")[#voiceover("Option A: The function approaches zero.")]
  
  #only("7")[#voiceover("Option B: The function grows exponentially.")]
  
  #only("8")[#voiceover("Option C: The function decreases without bound.")]
  
  #only("9")[#voiceover("Option D: The function increases without bound. Which of these describes the behavior of x to the fourth power as x approaches both positive and negative infinity?")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following describes the behavior of $f(x) = x^4$ as $x$ approaches infinity and negative infinity?", 
answerOptions: ("Approaches $0$", "Grows exponentially", "Decreases without bound", "Increases without bound"),
correctAnswerIndex: 3 
)