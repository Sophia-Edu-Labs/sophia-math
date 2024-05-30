#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overpressure Calculation]
#v(40pt)
#only("1-")[Given:]
#only("1-")[- Ground floor pressure: 4.0 bar]
#only("2-")[- Height difference: 14 m]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step. We are given that the pressure on the ground floor is 4.0 bar and the water pipe we are interested in is 14 meters higher.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Formula]
#v(40pt)
#only("1-")[$ P = P_("ground floor") + ρ ⋅ g ⋅ h $]
#only("1-")[Where:]
#only("1-")[- $P$: Pressure at height $h$]
#only("1-")[- $P_("ground floor")$: Pressure at ground floor]
#only("2-")[- $ρ$: Density of water (1000 kg/m³)]
#only("2-")[- $g$: Acceleration due to gravity (9.81 m/s²)]
#only("2-")[- $h$: Height difference]
#only("1")[
#voiceover("To calculate the pressure at a different height, we use the formula: Pressure equals the pressure at the ground floor plus the product of the density of water, acceleration due to gravity, and the height difference.")
]
#only("2")[
#voiceover("Here, ρ represents the density of water which is 1000 kilograms per cubic meter, g is the acceleration due to gravity which is 9.81 meters per second squared, and h is the height difference, in this case, 14 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)
#only("1-")[$ P = 4.0 "bar" + 1000 "kg/m³" ⋅ 9.81 "m/s²" ⋅ 14 "m" $]
#only("2-")[$ P ≈ 4.0 "bar" + 1.37 "bar" $]
#only("3-")[$ P ≈ 5.37 "bar" $]
#only("1")[
#voiceover("Let's plug in the values. The pressure equals 4.0 bar plus 1000 kilograms per cubic meter times 9.81 meters per second squared times 14 meters.")
]
#only("2")[
#voiceover("Calculating this, we get approximately 4.0 bar plus 1.37 bar.")
]
#only("3")[
#voiceover("Adding these together, we find that the pressure at the fourth floor is approximately 5.37 bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Result]
#v(40pt)
#only("1-")[The overpressure in the water pipe on the fourth floor is approximately 2.6 bar higher than on the ground floor. 🚰]
#only("1")[
#voiceover("Therefore, the overpressure in the water pipe on the fourth floor is approximately 2.6 bar higher than on the ground floor. Great work on solving this problem!")
]
]