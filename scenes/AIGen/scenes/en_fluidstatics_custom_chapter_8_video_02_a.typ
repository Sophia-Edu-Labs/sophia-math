#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure at a Tap 🚰]
#v(40pt)
#only("1-")[Calculate the pressure at a tap located 50 m below a reservoir.]
#v(20pt)
#only("2-")[Use: $p = rho dot g dot h$]
#v(20pt)
#only("3-")[Given: $rho_("water") = 1000$ kg/m³, $h = 50$ m]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's go through the solution step by step.")
]
#only("2")[
#voiceover("To calculate the pressure, we use the formula p equals rho times g times h, where p is the pressure, rho is the density of the fluid, g is the acceleration due to gravity, and h is the height difference.")
]
#only("3")[
#voiceover("We are given that the density of water is 1000 kilograms per cubic meter and the height difference is 50 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution 🧮]
#v(40pt)
#only("1-")[Step 1: Identify the values]
#v(20pt)
#only("2-")[- $rho = 1000$ kg/m³]
#v(10pt)
#only("3-")[- $g = 9.81$ m/s²]
#v(10pt)
#only("4-")[- $h = 50$ m]
#only("1")[
#voiceover("First, let's identify the values we need.")
]
#only("2")[
#voiceover("The density of water, rho, is 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("The acceleration due to gravity, g, is 9.81 meters per second squared.")
]
#only("4")[
#voiceover("And the height difference, h, is 50 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution 🧮]
#v(40pt)
#only("1-")[Step 2: Substitute the values into the formula]
#v(20pt)
#only("2-")[$p = 1000$ kg/m³ $dot 9.81$ m/s² $dot 50$ m]
#v(20pt)
#only("3-")[$p = 490500$ kg/(m dot s²)]
#only("1")[
#voiceover("Next, we substitute these values into the formula.")
]
#only("2")[
#voiceover("p equals 1000 kilograms per cubic meter times 9.81 meters per second squared times 50 meters.")
]
#only("3")[
#voiceover("This gives us p equals 490500 kilograms per meter second squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution 🧮]
#v(40pt)
#only("1-")[Step 3: Convert the units]
#v(20pt)
#only("2-")[1 Pa = 1 kg/(m dot s²)]
#v(20pt)
#only("3-")[$p = 490500$ kg/(m dot s²) $= 490500$ Pa]
#only("1")[
#voiceover("Finally, we convert the units.")
]
#only("2")[
#voiceover("One Pascal is equal to one kilogram per meter second squared.")
]
#only("3")[
#voiceover("So, p equals 490500 kilograms per meter second squared is equal to 490500 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Answer 🎉]
#v(40pt)
#only("1-")[$p = 490500$ Pa]
#v(20pt)
#only("2-")[The pressure at the tap is 490500 Pascals.]
#only("1")[
#voiceover("Therefore, the pressure at the tap is 490500 Pascals.")
]
#only("2")[
#voiceover("Great work on solving this problem! You've demonstrated a good understanding of how to calculate pressure in a fluid at a given depth.")
]
]