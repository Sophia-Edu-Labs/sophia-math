#import "../sophiatheme.typ": *

#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("In einer Klasse mit 25 Schülern soll ein Komitee gebildet werden.")
  ]
  #only("2")[
    #voiceover("Das Komitee soll aus 5 Schülern bestehen. Die Anzahl der Möglichkeiten, dieses Komitee zu bilden, wird durch den Binomialkoeffizienten")
  ]
  #text(size: 30pt, weight: "bold")[
    Komitee bilden
  ]

  #v(40pt)
   
  #only("1-")[
    - Klasse mit 25 Schülern
  ]

  #only("2-")[  
    - Bilde Komitee aus 5 Schülern
  ]

  #v(40pt)

  #only("3-")[
    $ binom(n,k) $
  ]

  #only("3")[
    #voiceover("n über k beschrieben. Bestimme welche Werte wir für n und für k einsetzen müssen.")
  ]
]

#questionDef(
  questionText: "Was sind $n$ und $k$ für den Binomialkoeffizienten $\\binom{n}{k}$, der die Anzahl der Möglichkeiten angibt, das Komitee zu bilden?",
  // use latex!
  answerOptions: ("$n=25, k=5$", "$n=0, k=0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
      )
    ),
    answerOptionMatcher:("$n=\\key{a}, k=\\key{b}$"),
    answerOptionsTypes: (
      "a": "number",
      "b": "number"  
    )
  ),
)