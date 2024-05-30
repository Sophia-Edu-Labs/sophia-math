#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Acid-Metal Reaction 🧪🔩]
#v(40pt)
#only("1-")[What gas is produced when acids react with metals?]
#v(40pt)
#only("2-")[a) Oxygen 🌬️]
#v(10pt)
#only("3-")[b) Nitrogen 🌪️]
#v(10pt)
#only("4-")[c) Hydrogen 💨]
#v(10pt)
#only("5-")[d) Carbon dioxide 🌫️]
#only("1")[#voiceover("Let's test your chemistry knowledge! What gas is produced when acids react with metals?")]
#only("2")[#voiceover("Is it oxygen,")]
#only("3")[#voiceover("or nitrogen,")]  
#only("4")[#voiceover("or maybe hydrogen,")]
#only("5")[#voiceover("or is it carbon dioxide?")]
]#questionDef(
questionText: "What gas is produced when acids react with metals?",
answerOptions: ("Oxygen", "Nitrogen", "Hydrogen", "Carbon dioxide"),
correctAnswerIndex: 2,
)