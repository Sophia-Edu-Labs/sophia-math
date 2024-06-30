#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of a Cube]
#v(40pt)

#only("1-")[How do you calculate the surface area of a cube? 📏🧊]
#v(20pt)

#only("2-")[a) 6 × side length]
#v(10pt)
#only("3-")[b) side length × side length]
#v(10pt)
#only("4-")[c) 6 × (side length × side length)]
#v(10pt)
#only("5-")[d) side length × side length × side length]

#only("1")[#voiceover("Let's test your understanding of cube geometry. How do you calculate the surface area of a cube?")]
#only("2")[#voiceover("Is it six times the side length,")]
#only("3")[#voiceover("or is it side length times side length,")]
#only("4")[#voiceover("or maybe six times side length times side length,")]
#only("5")[#voiceover("or could it be side length times side length times side length?")]
]

//Type: MC 
#questionDef( 
questionText: "How do you calculate the surface area of a cube?", 
answerOptions: ("$6 \\times \\text{side length}$", "$\text{side length} \\times \\text{side length}$", "$6 \\times (\text{side length} \\times \\text{side length})$", "$\text{side length} \\times \\text{side length} \\times \\text{side length}$"),
correctAnswerIndex: 2 
)