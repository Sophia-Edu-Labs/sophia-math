#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Current Formula]
  #v(40pt)

  #only("1-")[
    Which formula correctly represents current?
  ]

  #v(20pt)

  #only("2-")[a) $I = Q t$]
  #v(10pt)
  #only("3-")[b) $I = Q/t$]
  #v(10pt)
  #only("4-")[c) $I = t/Q$]
  #v(10pt)
  #only("5-")[d) $I = Q + t$]

  #only("1")[
    #voiceover("In this exercise, we're going to test your understanding of electric current. The question is: Which formula correctly represents current?")
  ]

  #only("2")[
    #voiceover("Is it I equals Q times t,")
  ]

  #only("3")[
    #voiceover("or is it I equals Q divided by t,")
  ]

  #only("4")[
    #voiceover("or perhaps I equals t divided by Q,")
  ]

  #only("5")[
    #voiceover("or could it be I equals Q plus t?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding the Variables]
  #v(40pt)

  #only("1-")[
    - $I$: Electric current
  ]

  #v(20pt)

  #only("2-")[
    - $Q$: Electric charge
  ]

  #v(20pt)

  #only("3-")[
    - $t$: Time
  ]

  #only("1")[
    #voiceover("Before we answer, let's understand what these variables mean. I represents electric current,")
  ]

  #only("2")[
    #voiceover("Q represents electric charge,")
  ]

  #only("3")[
    #voiceover("and t represents time.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Units and Dimensions]
  #v(40pt)

  #only("1-")[
    #table(
      columns: (auto, auto),
      inset: 10pt,
      align: horizon,
      [*Quantity*], [*SI Unit*],
      [Current ($I$)], [Ampere (A)],
      [Charge ($Q$)], [Coulomb (C)],
      [Time ($t$)], [Second (s)]
    )
  ]

  #only("1")[
    #voiceover("Let's consider the units of these quantities. Current is measured in amperes, charge in coulombs, and time in seconds. Think about how these units should relate to each other in the correct formula.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conceptual Understanding]
  #v(40pt)

  #only("1-")[
    Current is the rate of flow of charge
  ]

  #v(20pt)

  #only("2-")[
    Rate = Quantity / Time
  ]

  #only("1")[
    #voiceover("Conceptually, electric current is defined as the rate of flow of electric charge.")
  ]

  #only("2")[
    #voiceover("In general, rate is calculated by dividing a quantity by time. How might this apply to our formula for current?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Current Formula]
  #v(40pt)

  #only("1-")[
    Which formula correctly represents current?
  ]

  #v(20pt)

  #only("2-")[a) $I = Q t$]
  #v(10pt)
  #only("3-")[b) $I = Q/t$]
  #v(10pt)
  #only("4-")[c) $I = t/Q$]
  #v(10pt)
  #only("5-")[d) $I = Q + t$]

  #only("1")[
    #voiceover("Now, let's return to our original question. Which formula correctly represents current?")
  ]

  #only("2")[
    #voiceover("Is it I equals Q times t,")
  ]

  #only("3")[
    #voiceover("or is it I equals Q divided by t,")
  ]

  #only("4")[
    #voiceover("or perhaps I equals t divided by Q,")
  ]

  #only("5")[
    #voiceover("or could it be I equals Q plus t? Think carefully about what we've discussed and choose your answer.")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Which formula correctly represents current?", 
answerOptions: ("$I = Qt$", "$I = \frac{Q}{t}$", "$I = \frac{t}{Q}$", "$I = Q + t$"),
correctAnswerIndex: 1 
)