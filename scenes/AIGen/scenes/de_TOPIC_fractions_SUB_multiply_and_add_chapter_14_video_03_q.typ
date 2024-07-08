#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Bruchproblem.")
  ]

  #text(size: 30pt, weight: "bold")[Äquivalente Brüche]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Ändere $3/4$ in einen Bruch mit einem Nenner von 16]
  ]

  #only("2")[
    #voiceover("Wir müssen den Bruch drei Viertel in einen äquivalenten Bruch mit einem Nenner von sechzehn ändern. Überlege, wie wir sowohl den Zähler als auch den Nenner anpassen können, um dies zu erreichen.")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[🤔 Wie können wir sowohl den Zähler als auch den Nenner anpassen?]
  ]

  #only("3")[
    #voiceover("Überlege, welche Operation wir am Nenner durchführen müssen, um ihn von vier auf sechzehn zu ändern. Wie würde diese Operation den Zähler beeinflussen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{3}{4}$ in einen Bruch mit einem Nenner von $16$.", 
answerOptions: ("$\frac{12}{16}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)