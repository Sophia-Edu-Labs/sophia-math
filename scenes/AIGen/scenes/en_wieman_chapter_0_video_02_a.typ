#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job, that's exactly right! Let's go through why this is the correct answer step by step.")
]

#text(size: 30pt, weight: "bold")[Pinball Machine Design]

#v(40pt)

#only("2-")[- Launching pinball to top of game 🎯]
#v(20pt)
#only("3-")[- Need to determine spring constant 🌀]

#only("2")[
#voiceover("So we're designing a pinball machine and want to launch the pinball to the top of the game.")
]
#only("3")[
#voiceover("To do this, we need to figure out what spring constant is required for the launcher.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Energy Considerations]

#v(40pt)

#only("1-")[- Pinball starts with elastic potential energy in compressed spring 🍥]
#v(20pt)  
#only("2-")[- Pinball ends with gravitational potential energy at top of game 🌍]

#only("1")[
#voiceover("At the start, the pinball has elastic potential energy stored in the compressed spring of the launcher.")
]
#only("2")[
#voiceover("At the end, when the pinball reaches the top, this energy has been converted to gravitational potential energy due to the height.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Energy Conservation]

#v(40pt)

#only("1-")[- By conservation of energy, initial and final energies must be equal ⚖]
#v(20pt)
#only("2-")[$ "Elastic Potential Energy" = "Gravitational Potential Energy" $]

#only("1")[
#voiceover("By the principle of conservation of energy, the initial elastic potential energy must equal the final gravitational potential energy.")
]
#only("2")[
#voiceover("So to determine the spring constant, we set the elastic potential energy equal to the gravitational potential energy.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Correct Answer]

#v(40pt)  

#only("1-")[A) Elastic Potential Energy and Gravitational Potential Energy ✅]

#only("1")[
#voiceover("Therefore, the correct energies to equate are elastic potential energy and gravitational potential energy. Well done!")
]
]