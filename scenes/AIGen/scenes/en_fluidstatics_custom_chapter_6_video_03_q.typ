#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Agricultural Irrigation Pump 🌾🚰]
#v(40pt)
#only("1-")[Which type of pump is most efficient for agricultural irrigation?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Centrifugal 🌀]
// Answer option a) is shown from slide 2 onward
#v(10pt) 
#only("3-")[b) Piston 🔨]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Diaphragm 📏]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Peristaltic 🌈]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on agricultural irrigation pumps. Which type of pump is most efficient for agricultural irrigation?")]
#only("2")[#voiceover("Is it a centrifugal pump,")]  
#only("3")[#voiceover("or a piston pump,")]
#only("4")[#voiceover("or maybe a diaphragm pump,")]
#only("5")[#voiceover("or is it a peristaltic pump?")]
]#questionDef(
questionText: "Which type of pump is most efficient for agricultural irrigation?",
answerOptions: ("Centrifugal", "Piston", "Diaphragm", "Peristaltic"),
correctAnswerIndex: 0,
)