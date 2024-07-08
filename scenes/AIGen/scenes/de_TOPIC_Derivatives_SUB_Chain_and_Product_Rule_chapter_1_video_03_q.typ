#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Betrachte die folgende Funktion:")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("2-")[#text()[$ f(x) = x^2 \sin(x) $]]
  #v(20pt)

  #only("3-")[Verwende die Produktregel, um $f'(x)$ zu finden.]

  #only("2")[
    #voiceover("f von x ist gleich x Quadrat mal Sinus von x.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Produktregel anzuwenden, um die Ableitung dieser Funktion zu finden. Was ist f Strich von x?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Verwende die Produktregel, um $f(x) = x^2 \, \sin(x)$ zu differenzieren.", 
answerOptions: ("Mit der Produktregel ergibt sich $f'(x) = \frac{d}{dx}[x^2] \cdot \sin(x) + x^2 \cdot \frac{d}{dx}[\sin(x)] = 2x \cdot \sin(x) + x^2 \cdot \cos(x)$. Daher ist $f'(x) = 2x \sin(x) + x^2 \cos(x)$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)