#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of Composite Figures]
#v(40pt)

#only("1-")[How do you find the surface area of a composite figure?]
#v(20pt)

#only("2-")[a) Multiply all dimensions 📏✖️]
#v(10pt)
#only("3-")[b) Add the volumes of each part 📦➕]
#v(10pt)
#only("4-")[c) Add the surface areas of each part, subtracting overlapping areas 🧮➖]
#v(10pt)
#only("5-")[d) Subtract the smaller figure from the larger 🔽➖]

#only("1")[#voiceover("Let's test your understanding of composite figures. How do you find the surface area of a composite figure?")]
#only("2")[#voiceover("Is it by multiplying all dimensions?")]
#only("3")[#voiceover("Or perhaps by adding the volumes of each part?")]
#only("4")[#voiceover("Maybe it's by adding the surface areas of each part, but subtracting overlapping areas?")]
#only("5")[#voiceover("Or could it be by subtracting the smaller figure from the larger? Think carefully about how surface area works for complex shapes before you answer.")]
]

//Type: MC 
#questionDef( 
questionText: "How do you find the surface area of a composite figure?", 
answerOptions: ("Multiply all dimensions", "Add the volumes of each part", "Add the surface areas of each part, subtracting overlapping areas", "Subtract the smaller figure from the larger"),
correctAnswerIndex: 2 
)