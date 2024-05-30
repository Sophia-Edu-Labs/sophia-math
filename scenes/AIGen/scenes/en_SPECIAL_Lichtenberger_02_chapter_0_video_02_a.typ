#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift Problem]
#v(40pt)
#only("1-")[- Lift a 6000 kg ship engine by 2.0 m 🚢]
#v(20pt)
#only("2-")[- Pump piston area: 5.0 cm² 🔺]
#v(20pt)
#only("3-")[- Press piston area: 400 cm² 🔻]
#v(20pt)
#only("4-")[- Find: Pressure in the fluid? 🌊]
#only("1")[
#voiceover("Great job on getting the correct answer! Let's go through the solution step by step. We need to lift a ship engine with a mass of 6000 kg by a height of 2.0 meters using a hydraulic lift.")
]
#only("2")[
#voiceover("The area of the pump piston is given as 5.0 square centimeters.")
]
#only("3")[
#voiceover("And the area of the press piston is 400 square centimeters.")
]
#only("4")[
#voiceover("Our task is to find the pressure in the fluid.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
#only("1-")[1. Calculate force on press piston 🔻]
#v(20pt)
#only("2-")[2. Use force to find pressure 🌊]
#only("1")[
#voiceover("To solve this, we'll first calculate the force acting on the press piston.")
]
#only("2")[
#voiceover("Then we'll use this force to determine the pressure in the fluid.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Force on Press Piston]
#v(40pt)
#only("1-")[- Force = mass × acceleration]
#v(20pt)
#only("2-")[$ F = m g $]
#v(20pt)
#only("3-")[$ F = 6000 "kg" × 9.81 "m/s²" $]
#v(20pt)
#only("4-")[$ F = 58860 "N" $]
#only("1")[
#voiceover("The force on the press piston is the weight of the ship engine, which is its mass times the acceleration due to gravity.")
]
#only("2")[
#voiceover("So the force F equals the mass m times g, the gravitational acceleration.")
]
#only("3")[
#voiceover("Plugging in the values, we have 6000 kilograms times 9.81 meters per second squared.")
]
#only("4")[
#voiceover("This gives us a force of 58860 Newtons.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Pressure in Fluid]
#v(40pt)
#only("1-")[- Pressure = Force ÷ Area]
#v(20pt)
#only("2-")[$ P = F / A $]
#v(20pt)
#only("3-")[$ P = 58860 "N" / 400 "cm²" $]
#v(20pt)
#only("4-")[$ P = 147.15 "N/cm²" $]
#v(20pt)
#only("5-")[$ P = 14.715 "N/mm²" = 14.7 "bar" $]
#only("1")[
#voiceover("Now, pressure is defined as force per unit area.")
]
#only("2")[
#voiceover("So pressure P equals force F divided by area A.")
]
#only("3")[
#voiceover("We have a force of 58860 Newtons and an area of 400 square centimeters for the press piston.")
]
#only("4")[
#voiceover("Dividing these, we get a pressure of 147.15 Newtons per square centimeter.")
]
#only("5")[
#voiceover("Converting to standard units, this is equivalent to 14.715 Newtons per square millimeter or approximately 14.7 bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Force on press piston: $58860 "N"$ 🔻]
#v(20pt)
#only("2-")[- Pressure in fluid: $14.7 "bar"$ 🌊]
#only("1")[
#voiceover("To summarize, the force acting on the press piston is 58860 Newtons.")
]
#only("2")[
#voiceover("And the pressure in the hydraulic fluid is approximately 14.7 bar.")
]
]