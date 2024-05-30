#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure and Depth]
// The title "Pressure and Depth" is shown on this slide
#v(40pt)
#only("1-")[🐠 A small fish dives from a depth of 10 m to a depth of 30 m.]
// The statement about the fish diving is shown from slide 1 onward
#v(40pt)
#only("2-")[What happens to the pressure? 🤔]
// The question is shown from slide 2 onward
#v(40pt)
#only("3-")[a) It approximately doubles. 2️⃣]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) It approximately triples. 3️⃣]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) It approximately quadruples. 4️⃣]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) It remains about the same. 🤷]
// Answer option d) is shown from slide 6 onward
#only("1")[#voiceover("A small fish dives from a depth of 10 meters to a depth of 30 meters.")]
#only("2")[#voiceover("What happens to the pressure the fish experiences?")]
#only("3")[#voiceover("Does it approximately double,")]
#only("4")[#voiceover("or does it approximately triple,")]
#only("5")[#voiceover("or maybe it approximately quadruples,")]
#only("6")[#voiceover("or does it remain about the same?")]
]#questionDef(
questionText: "A small fish dives from a depth of $10$ m to a depth of $30$ m. What happens to the pressure?",
answerOptions: ("It approximately doubles.", "It approximately triples.", "It approximately quadruples.", "It remains about the same."),
correctAnswerIndex: 1,
)