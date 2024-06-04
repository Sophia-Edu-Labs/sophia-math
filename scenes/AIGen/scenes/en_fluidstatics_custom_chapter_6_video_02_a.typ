#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[- Height: $h = 30$ m]
#v(20pt)
#only("2-")[- Density of water: $rho = 1000$ kg/m³]
#v(20pt)
#only("3-")[- Formula: $p = rho dot g dot h$]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step. We are given that the height the water needs to be lifted is 30 meters.")
]
#only("2")[
#voiceover("We also know that the density of water is 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("And we are provided with the formula to calculate the pressure, which is density times acceleration due to gravity times height.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1]
#v(40pt)
#only("1-")[Identify the values:]
#v(20pt)
#only("2-")[- $rho = 1000$ kg/m³]
#v(20pt)
#only("3-")[- $g = 9.81$ m/s²]
#v(20pt)
#only("4-")[- $h = 30$ m]
#only("1")[
#voiceover("The first step is to identify the values we need to plug into the formula.")
]
#only("2")[
#voiceover("We have the density, rho, which is 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("The acceleration due to gravity, g, is a constant 9.81 meters per second squared.")
]
#only("4")[
#voiceover("And the height, h, is given as 30 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2]
#v(40pt)
#only("1-")[Plug the values into the formula:]
#v(20pt)
#only("2-")[$p = rho dot g dot h$]
#v(20pt)
#only("3-")[$p = 1000 dot 9.81 dot 30$]
#only("1")[
#voiceover("Now, we plug these values into the formula.")
]
#only("2")[
#voiceover("The pressure equals density times acceleration due to gravity times height.")
]
#only("3")[
#voiceover("Substituting the values, we get pressure equals 1000 times 9.81 times 30.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3]
#v(40pt)
#only("1-")[Calculate:]
#v(20pt)
#only("2-")[$p = 1000 dot 9.81 dot 30$]
#v(20pt)
#only("3-")[$p = 294300$ Pa]
#only("1")[
#voiceover("The final step is to calculate the result.")
]
#only("2")[
#voiceover("We multiply 1000 by 9.81 by 30.")
]
#only("3")[
#voiceover("This gives us 294,300 Pascals, which is the required pump pressure to lift the water to a height of 30 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Answer]
#v(40pt)
#only("1-")[The required pump pressure is $294300$ Pa. 🎉]
#only("1")[
#voiceover("Therefore, the answer is 294,300 Pascals. Well done on solving this problem!")
]
]