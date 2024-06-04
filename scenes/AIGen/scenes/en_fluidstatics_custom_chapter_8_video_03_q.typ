#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[City Water Supply System]
// The title "City Water Supply System" is shown on this slide
#v(40pt)
#only("1-")[What factor most affects the pressure in a city water supply system? 🌊]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Temperature 🌡️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Pipe material 🚰]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Elevation difference 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Water hardness 💧]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of city water supply systems. What factor most affects the pressure in a city water supply system?")]
#only("2")[#voiceover("Is it the temperature,")]
#only("3")[#voiceover("or the pipe material,")]
#only("4")[#voiceover("or the elevation difference,")]
#only("5")[#voiceover("or the water hardness?")]
]#questionDef(
questionText: "What factor most affects the pressure in a city water supply system?",
answerOptions: ("Temperature", "Pipe material", "Elevation difference", "Water hardness"),
correctAnswerIndex: 2,
)