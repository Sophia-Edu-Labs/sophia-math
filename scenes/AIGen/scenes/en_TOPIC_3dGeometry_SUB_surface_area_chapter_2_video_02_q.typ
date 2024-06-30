#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cuboid]
  #v(40pt)

  #only("1-")[How do you calculate the surface area of a cuboid?]
  #v(40pt)

  #only("2-")[a) Length × Width × Height]
  #v(10pt)
  #only("3-")[b) 2(Length × Width + Length × Height + Width × Height)]
  #v(10pt)
  #only("4-")[c) Length + Width + Height]
  #v(10pt)
  #only("5-")[d) 6 × (Length × Width)]

  #only("1")[#voiceover("Let's test your understanding of cuboid geometry. How do you calculate the surface area of a cuboid?")]
  #only("2")[#voiceover("Is it Length multiplied by Width multiplied by Height?")]
  #only("3")[#voiceover("Or is it 2 times the sum of Length times Width, Length times Height, and Width times Height?")]
  #only("4")[#voiceover("Could it be simply Length plus Width plus Height?")]
  #only("5")[#voiceover("Or perhaps 6 times Length multiplied by Width?")]
]

//Type: MC 
#questionDef( 
questionText: "How do you calculate the surface area of a cuboid?", 
answerOptions: ("$\text{Length} \\times \\text{Width} \\times \\text{Height}$", "$2(\text{Length} \\times \\text{Width} + \\text{Length} \\times \\text{Height} + \\text{Width} \\times \\text{Height})$", "$\text{Length} + \\text{Width} + \\text{Height}$", "$6 \\times (\text{Length} \\times \\text{Width})$"),
correctAnswerIndex: 1 
)