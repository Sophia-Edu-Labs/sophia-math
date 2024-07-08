#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion mit negativem Exponenten]
  #v(40pt)

  #only("1-")[Betrachte eine Potenzfunktion der Form:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$f(x) = a x^b$]]
  #v(20pt)
  #only("3-")[wobei $a = 2$ ist und die Funktion durch den Punkt $(1, 2)$ verläuft.]
  #v(20pt)
  #only("4-")[Was ist der Wert des negativen Exponenten $b$?]

  #only("1")[
    #voiceover("Lass uns eine Potenzfunktion mit einem negativen Exponenten untersuchen.")
  ]

  #only("2")[
    #voiceover("Wir betrachten eine Funktion der Form f von x gleich a mal x hoch b.")
  ]

  #only("3")[
    #voiceover("Es ist gegeben, dass a gleich 2 ist und die Funktion durch den Punkt 1 Komma 2 verläuft.")
  ]

  #only("4")[
    #voiceover("Deine Aufgabe ist es, den Wert des negativen Exponenten b zu bestimmen. Denke daran, dass ein negativer Exponent bedeutet, dass die Funktion abnimmt, wenn x zunimmt. Überlege, wie Du den gegebenen Punkt und den Wert von a verwenden kannst, um b zu finden.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Schreibe die Potenzfunktion mit einem negativen Exponenten, die durch den Punkt $(1, 2)$ verläuft, wobei $a = 2$ ist.", 
answerOptions: ("$f(x) = 2x^{-1}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)