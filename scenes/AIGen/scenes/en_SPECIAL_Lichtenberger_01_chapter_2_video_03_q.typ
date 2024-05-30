#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure and Depth 🐟]
#v(40pt)
#only("1-")[A small fish dives from a depth of $10 "m"$ to a depth of $30 "m"$. What happens to its buoyancy?]
#v(40pt)
#only("2-")[a) It approximately doubles. 2️⃣]
#v(10pt)
#only("3-")[b) It approximately triples. 3️⃣]
#v(10pt)
#only("4-")[c) It approximately quadruples. 4️⃣]
#v(10pt)
#only("5-")[d) It remains about the same. 🤔]
#only("1")[#voiceover("Let's test your understanding of pressure and depth. A small fish dives from a depth of 10 meters to a depth of 30 meters. What happens to its buoyancy?")]
#only("2")[#voiceover("Does it approximately double,")]  
#only("3")[#voiceover("or does it approximately triple,")]
#only("4")[#voiceover("or maybe it approximately quadruples,")]
#only("5")[#voiceover("or does it remain about the same?")]
]#questionDef(
questionText: "A small fish dives from a depth of $10 \text{ m}$ to a depth of $30 \text{ m}$. What happens to its buoyancy?", 
answerOptions: ("It approximately doubles.", "It approximately triples.", "It approximately quadruples.", "It remains about the same."),
correctAnswerIndex: 3,
)