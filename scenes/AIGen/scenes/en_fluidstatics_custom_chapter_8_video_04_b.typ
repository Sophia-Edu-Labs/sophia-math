#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[City Water Supply System]
#v(40pt)
#only("1-")[
- Reservoir level drops by 2 m 📉
- Calculate new pressure at tap 🚰
- Use $p = rho dot g dot h$ 🧮
]
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step. We're given that the reservoir level drops by 2 meters and we need to calculate the new pressure at the tap using the formula p equals rho times g times h.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[
- Reservoir level drop: 2 m
- Tap location: 50 m below initial reservoir level
- $rho$ (water density): 1000 kg/m³
- $g$ (gravitational acceleration): 9.81 m/s²
]
#only("1")[
#voiceover("The problem gives us the following information: The reservoir level drops by 2 meters. The tap is located 50 meters below the initial reservoir level. The density of water, rho, is 1000 kilograms per cubic meter. And the gravitational acceleration, g, is 9.81 meters per second squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Calculate New Height]
#v(40pt)
#only("1-")[
- New height = Initial height - Drop
- $h_("new") = h_("initial") - h_("drop")$
]
#v(20pt)
#only("2-")[
- $h_("new") = 50 "m" - 2 "m" = 48 "m"$
]
#only("1")[
#voiceover("The first step is to calculate the new height. The new height equals the initial height minus the drop. In mathematical notation, h subscript new equals h subscript initial minus h subscript drop.")
]
#only("2")[
#voiceover("Plugging in the values, we get h subscript new equals 50 meters minus 2 meters, which equals 48 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Apply Pressure Formula]
#v(40pt)
#only("1-")[
- $p = rho dot g dot h$
]
#v(20pt)
#only("2-")[
- $p = 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot 48 "m"$
]
#v(20pt)
#only("3-")[
- $p = 470880 "Pa" = 470.88 "kPa"$
]
#only("1")[
#voiceover("Step 2 is to apply the pressure formula. Pressure equals density times gravitational acceleration times height.")
]
#only("2")[
#voiceover("Substituting the values, we have pressure equals 1000 kilograms per cubic meter times 9.81 meters per second squared times 48 meters.")
]
#only("3")[
#voiceover("Multiplying these out, we get a pressure of 470880 Pascals, which is equivalent to 470.88 kilopascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Answer]
#v(40pt)
#only("1-")[
The new pressure at the tap is $470880 "Pa"$ or $470.88 "kPa"$. 🎉
]
#only("1")[
#voiceover("Therefore, the new pressure at the tap after the reservoir level drops by 2 meters is 470880 Pascals or 470.88 kilopascals. Great work on solving this problem!")
]
]