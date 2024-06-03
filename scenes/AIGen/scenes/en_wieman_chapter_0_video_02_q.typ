#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pinball Machine Design]
#v(40pt)
#only("1-")[You are an engineer designing a pinball machine 🎰]
#v(20pt)
#only("2-")[Goal: Launch a typical pinball to the top of the game 🚀]
#v(20pt)
#only("3-")[To determine the necessary spring constant, what two energies do you have to equate? 🤔]
#only("1")[
#voiceover("Imagine you are an engineer designing a pinball machine.")
]
#only("2")[
#voiceover("Your goal is to launch a typical pinball to the top of the game.")
]  
#only("3")[
#voiceover("To determine the necessary spring constant for the launcher, what two energies do you have to equate?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Energy Options]
#v(40pt)  
#only("1-")[A) Elastic Potential Energy and Gravitational Potential Energy]
#v(20pt)
#only("2-")[B) Kinetic Energy and Gravitational Potential Energy]  
#v(20pt)
#only("3-")[C) Thermal Energy and Kinetic Energy]
#v(20pt) 
#only("4-")[D) Elastic Potential Energy and Thermal Energy]
#only("1")[
#voiceover("Option A: Elastic Potential Energy and Gravitational Potential Energy")
]
#only("2")[  
#voiceover("Option B: Kinetic Energy and Gravitational Potential Energy")
]
#only("3")[
#voiceover("Option C: Thermal Energy and Kinetic Energy") 
]
#only("4")[
#voiceover("Or option D: Elastic Potential Energy and Thermal Energy")
]
]

#questionDef(
questionText: "What two energies do you have to equate to determine the necessary spring constant for launching the pinball to the top of the game?",
answerOptions: ("Elastic Potential Energy and Gravitational Potential Energy", "Kinetic Energy and Gravitational Potential Energy", "Thermal Energy and Kinetic Energy", "Elastic Potential Energy and Thermal Energy"),
correctAnswerIndex: 0,
)