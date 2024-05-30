#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Volume]
#v(40pt)
#only("1-")[Of three differently sized objects with the same mass, the one with the medium volume floats. Which other object also floats?]
#v(40pt)
#only("2-")[a) the small one 🪨]
#v(10pt)
#only("3-")[b) the large one 🏐]
#v(10pt) 
#only("4-")[c) both]
#v(10pt)
#only("5-")[d) neither]
#only("1")[#voiceover("Let's test your understanding of buoyancy and volume. We have three differently sized objects with the same mass. The one with the medium volume floats. Which other object also floats?")]
#only("2")[#voiceover("Is it the small one,")]  
#only("3")[#voiceover("or the large one,")]
#only("4")[#voiceover("or do both of them float,")]
#only("5")[#voiceover("or does neither of them float?")]
]#questionDef(
questionText: "Of three differently sized objects with the same mass, the one with the medium volume floats. Which other object also floats?",
answerOptions: ("the small one", "the large one", "both", "neither"),
correctAnswerIndex: 1)