#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Symmetrie der kubischen Funktion]
  #v(40pt)

  #only("1-")[Betrachte die Funktion:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$ f(x) = x^3 $]]
  #v(40pt)

  #only("3-")[Frage: Beschreibe die Symmetrie dieser Funktion.]

  #only("1")[
    #voiceover("Lass uns die Symmetrie einer speziellen kubischen Funktion untersuchen.")
  ]

  #only("2")[
    #voiceover("Betrachte die Funktion f von x gleich x hoch drei.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Symmetrie dieser Funktion zu beschreiben. Überlege, wie der Graph dieser Funktion aussehen würde und welche Eigenschaften er in Bezug auf Symmetrie haben könnte.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Beschreibe die Symmetrie der Funktion $f(x) = x^3$.", 
answerOptions: ("Die Funktion $f(x) = x^3$ ist eine ungerade Funktion. Das bedeutet, dass sie Rotationssymmetrie um den Ursprung hat. Mathematisch kann dies als $f(-x) = -f(x)$ für alle $x$ ausgedrückt werden.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)