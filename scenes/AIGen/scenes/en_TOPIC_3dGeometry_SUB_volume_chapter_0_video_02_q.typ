#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cube]
  #v(40pt)

  #only("1-")[How do you calculate the volume of a cube?]
  #v(40pt)

  #only("2-")[a) side length × side length]
  #v(10pt)
  #only("3-")[b) 6 × side length]
  #v(10pt)
  #only("4-")[c) side length × side length × side length]
  #v(10pt)
  #only("5-")[d) side length × side length × height]

  #only("1")[#voiceover("Let's explore an important concept in geometry: the volume of a cube. Here's a question for you to ponder:")]
  #only("2")[#voiceover("Is it calculated by multiplying the side length by itself?")]
  #only("3")[#voiceover("Or is it six times the side length?")]
  #only("4")[#voiceover("Perhaps it's the side length multiplied by itself three times?")]
  #only("5")[#voiceover("Or could it be the side length squared, multiplied by the height?")]

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

  #only("6")[#voiceover("Think about the shape of a cube. It's a three-dimensional object with equal sides. How might this affect the way we calculate its volume? Consider each option carefully before making your choice.")]
]

//Type: MC 
#questionDef( 
questionText: "How do you calculate the volume of a cube?", 
answerOptions: ("$\text{side length} \\times \\text{side length}$", "$6 \\times \\text{side length}$", "$\text{side length} \\times \\text{side length} \\times \\text{side length}$", "$\text{side length} \\times \\text{side length} \\times \\text{height}$"),
correctAnswerIndex: 2 
)