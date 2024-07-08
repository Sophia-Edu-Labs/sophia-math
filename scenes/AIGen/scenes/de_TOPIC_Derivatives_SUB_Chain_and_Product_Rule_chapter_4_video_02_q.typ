#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir die folgende Funktion:")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = x^3 cos(x) $]
  ]

  #v(40pt)

  #only("3-")[
    Kannst du diese Funktion mit der Produktregel ableiten?
  ]

  #only("2")[
    #voiceover("f von x ist gleich x hoch drei mal Kosinus von x.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Funktion mit der Produktregel abzuleiten. Denke daran, die Regel Schritt für Schritt anzuwenden und sei vorsichtig mit der trigonometrischen Funktion.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Leite $f(x) = x^3 \, \cos(x)$ mit der Produktregel ab.", 
answerOptions: ("Mit der Produktregel erhalten wir $f'(x) = \frac{d}{dx} [x^3 \, \cos(x)] = x^3 \frac{d}{dx} [\cos(x)] + \cos(x) \frac{d}{dx} [x^3] = x^3 (-\sin(x)) + \cos(x) (3x^2) = -x^3 \sin(x) + 3x^2 \cos(x)$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)