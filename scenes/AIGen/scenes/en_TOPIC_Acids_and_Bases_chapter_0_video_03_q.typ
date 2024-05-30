#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Bases and Protons 🧪]
#v(40pt)
#only("1-")[What do bases accept in a chemical reaction?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Electrons ⚛️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Protons ➕]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Neutrons 🔳]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Ions 🧂]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on bases. What do bases accept in a chemical reaction?")]
#only("2")[#voiceover("Do they accept electrons,")]
#only("3")[#voiceover("or do they accept protons,")]
#only("4")[#voiceover("or maybe they accept neutrons,")]
#only("5")[#voiceover("or do they accept ions?")]
]#questionDef(
questionText: "What do bases accept in a chemical reaction?",
answerOptions: ("Electrons", "Protons", "Neutrons", "Ions"),
correctAnswerIndex: 1,
)