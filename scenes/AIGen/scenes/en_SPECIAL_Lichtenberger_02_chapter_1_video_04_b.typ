#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite, but don't worry! Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Given Information]

#v(40pt)

#only("2-")[- Reservoir level drops by 2 m]
// The given information is shown from slide 2 onward

#only("2")[
#voiceover("We're given that the reservoir level drops by 2 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Use the formula: $Delta P = rho dot g dot Delta h$]
// The formula for pressure change is shown from slide 1 onward

#only("1")[
#voiceover("To find the pressure change, we'll use the formula delta P equals rho times g times delta h, where delta P is the change in pressure, rho is the density of water, g is the acceleration due to gravity, and delta h is the change in height.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[$ Delta h = -2 "m" $]
// The change in height is shown from slide 1 onward

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Substitute into the formula]]]
// The substitution step is highlighted in aqua from slide 2 onward

#v(10pt)

#only("3-")[$ Delta P = 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (-2 "m") $]
// The formula with substituted values is shown from slide 3 onward

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]
// The simplification step is highlighted in aqua from slide 4 onward

#v(10pt)

#only("5-")[$ Delta P = -19620 "Pa" = -0.1962 "bar" $]
// The final answer is shown from slide 5 onward

#only("1")[#voiceover("The change in height, delta h, is negative 2 meters, since the reservoir level drops.")]

#only("2")[#voiceover("We substitute this into our formula, along with the density of water, 1000 kilograms per cubic meter, and the acceleration due to gravity, 9.81 meters per second squared.")]

#only("3")[#voiceover("This gives us delta P equals 1000 times 9.81 times negative 2.")]

#only("4")[#voiceover("Simplifying this...")]

#only("5")[#voiceover("We get delta P equals negative 19620 Pascals, or negative 0.1962 bar. The negative sign indicates a decrease in pressure.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎉]

#v(40pt)

#only("1-")[The pressure decreases by 0.1962 bar for each tap.]
// The conclusion is shown from slide 1 onward

#only("1")[
#voiceover("Therefore, if the reservoir level drops by 2 meters, the pressure decreases by 0.1962 bar for each tap, regardless of their initial positions.")
]
]