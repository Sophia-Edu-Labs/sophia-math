#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Volume 🌊]
// The title "Buoyancy and Volume" with a water wave emoji is shown on this slide
#v(40pt)
#only("1-")[Three objects with the same mass but different volumes are placed in water.]
// The scenario is introduced from slide 1 onward
#v(20pt)
#only("2-")[The object with the medium volume floats. 🎈]
// Additional information is given from slide 2 onward
#v(40pt)
#only("3-")[Which other object also floats?]
// The question is posed from slide 3 onward
#v(40pt)
#only("4-")[a) the small one 🏐]
// Answer option a) with a small ball emoji is shown from slide 4 onward
#v(10pt)
#only("5-")[b) the large one 🏀]
// Answer option b) with a large ball emoji is shown from slide 5 onward
#v(10pt)
#only("6-")[c) both]
// Answer option c) is shown from slide 6 onward
#v(10pt)
#only("7-")[d) neither]
// Answer option d) is shown from slide 7 onward
#only("1")[#voiceover("Imagine we have three objects with the same mass but different volumes.")]
#only("2")[#voiceover("We place these objects in water and observe that the object with the medium volume floats.")]
#only("3")[#voiceover("Now, the question is: Which other object, if any, will also float?")]
#only("4")[#voiceover("Is it the object with the small volume,")]
#only("5")[#voiceover("or the object with the large volume,")]
#only("6")[#voiceover("or will both of these objects float,")]
#only("7")[#voiceover("or will neither of them float?")]
]#questionDef(
questionText: "Of three differently sized objects with the same mass, the one with the medium volume floats. Which other object also floats?",
answerOptions: ("the small one", "the large one", "both", "neither"),
correctAnswerIndex: 1,
)