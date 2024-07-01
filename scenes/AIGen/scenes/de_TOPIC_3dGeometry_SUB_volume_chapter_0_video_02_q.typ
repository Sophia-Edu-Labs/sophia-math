#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Würfels]
  #v(40pt)

  #only("1-")[Wie berechnet man das Volumen eines Würfels?]
  #v(40pt)

  #only("2-")[a) Seitenlänge × Seitenlänge]
  #v(10pt)
  #only("3-")[b) 6 × Seitenlänge]
  #v(10pt)
  #only("4-")[c) Seitenlänge × Seitenlänge × Seitenlänge]
  #v(10pt)
  #only("5-")[d) Seitenlänge × Seitenlänge × Höhe]

  #only("1")[#voiceover("Lass uns ein wichtiges Konzept der Geometrie erkunden: das Volumen eines Würfels. Hier ist eine Frage für Dich:")]
  #only("2")[#voiceover("Wird es berechnet, indem man die Seitenlänge mit sich selbst multipliziert?")]
  #only("3")[#voiceover("Oder ist es sechs mal die Seitenlänge?")]
  #only("4")[#voiceover("Vielleicht ist es die Seitenlänge, multipliziert mit sich selbst, drei Mal?")]
  #only("5")[#voiceover("Oder könnte es die Seitenlänge zum Quadrat, multipliziert mit der Höhe sein?")]

  #only("6-")[
    #align(center)[
      #box(width: 200pt, height: 200pt)[
        #place(top + left, dx: 20pt, dy: 20pt)[
          #text(size: 24pt)[s]
        ]
        #place(center)[
          #text(size: 60pt)[?]
        ]
      ]
    ]
  ]

  #only("6")[#voiceover("Denke an die Form eines Würfels. Es ist ein dreidimensionales Objekt mit gleichen Seiten. Wie könnte dies die Berechnung seines Volumens beeinflussen? Überlege jede Option sorgfältig, bevor Du Deine Wahl triffst.")]
]

//Typ: MC 
#questionDef( 
questionText: "Wie berechnet man das Volumen eines Würfels?", 
answerOptions: ("$\\text{Seitenlänge} \\times \\text{Seitenlänge}$", "$6 \\times \\text{Seitenlänge}$", "$\\text{Seitenlänge} \\times \\text{Seitenlänge} \\times \\text{Seitenlänge}$", "$\\text{Seitenlänge} \\times \\text{Seitenlänge} \\times \\text{Höhe}$"),
correctAnswerIndex: 2 
)