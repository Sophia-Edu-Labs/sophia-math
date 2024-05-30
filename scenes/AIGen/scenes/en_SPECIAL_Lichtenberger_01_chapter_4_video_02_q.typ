#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy 🌊]
#v(40pt)
#only("1-")[Three objects of equal size made of lead, iron, and styrofoam are fully submerged in water. For which object is the buoyant force greatest?]
#v(40pt)
#only("2-")[a) For the iron object 🎚️]
#v(10pt)
#only("3-")[b) For the styrofoam object 🧽]
#v(10pt)
#only("4-")[c) For the lead object 🧱]
#v(10pt) 
#only("5-")[d) For all equally 🤝]
#only("1")[#voiceover("Let's test your understanding of buoyancy. We have three objects of equal size made of lead, iron, and styrofoam. They are fully submerged in water. For which object is the buoyant force the greatest?")]
#only("2")[#voiceover("Is it for the iron object,")]
#only("3")[#voiceover("or for the styrofoam object,")]
#only("4")[#voiceover("or maybe for the lead object,")]
#only("5")[#voiceover("or is the buoyant force the same for all of them?")]
]#questionDef(
questionText: "Three objects of equal size made of lead, iron, and styrofoam are fully submerged in water. For which object is the buoyant force greatest?", answerOptions: ("For the iron object", "For the styrofoam object", "For the lead object", "For all equally"),
correctAnswerIndex: 1
)