#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Betrachten wir die folgende Funktion:")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = x^4 e^x $]
  ]

  #v(40pt)

  #only("3-")[
    Kannst du diese Funktion mit der Produktregel ableiten?
  ]

  #only("2")[
    #voiceover("f von x ist gleich x hoch vier mal e hoch x.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Funktion mit der Produktregel abzuleiten. Denke daran, die Regel sorgfältig anzuwenden und die Ableitungen beider Teile des Produkts zu berücksichtigen.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Leite $f(x) = x^4 e^x$ mit der Produktregel ab.", 
answerOptions: ("Mit der Produktregel haben wir $f'(x) = \frac{d}{dx}(x^4) 	\\times e^x + x^4 	\\times \frac{d}{dx}(e^x)$. Daher ist $f'(x) = 4x^3 e^x + x^4 e^x = x^3 e^x (4 + x)$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)