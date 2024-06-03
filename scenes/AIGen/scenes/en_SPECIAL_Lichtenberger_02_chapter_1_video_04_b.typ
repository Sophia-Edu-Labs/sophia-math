#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure Change]

#v(40pt)

#only("1-")[- Reservoir level drops by 2 m 🌊]

#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]

#only("2")[
#voiceover("We're told that the reservoir level drops by 2 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Pressure change depends on height change]
// The approach of considering the height change is shown from slide 1 onward

#only("2-")[- Use formula: $Delta P = rho dot g dot Delta h$]
// The formula for pressure change is shown from slide 2 onward

#only("1")[
#voiceover("The key here is to recognize that the pressure change depends on the change in height of the water column.")
]

#only("2")[
#voiceover("We can use the formula delta P equals rho times g times delta h, where delta P is the pressure change, rho is the density of water, g is the acceleration due to gravity, and delta h is the change in height.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[- $Delta h = -2 "m"$]
// The height change is shown from slide 1 onward

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Substitute into formula]]]
// The substitution into the formula is highlighted in aqua from slide 2 onward

#v(10pt)

#only("3-")[$ Delta P = 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (-2 "m") $]
// The formula with substituted values is shown from slide 3 onward

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Calculate]]]
// The calculation step is highlighted in aqua from slide 4 onward

#v(10pt)

#only("5-")[$ Delta P = -19620 "Pa" = -0.1962 "bar" $]
// The final result is shown from slide 5 onward

#only("1")[
#voiceover("The change in height, delta h, is negative 2 meters, because the level drops.")
]

#only("2")[
#voiceover("We substitute this into our formula.")
]

#only("3")[
#voiceover("Delta P equals one thousand kilograms per cubic meter, which is the density of water, times nine point eight one meters per second squared, which is the acceleration due to gravity, times negative two meters.")
]

#only("4")[
#voiceover("Calculating this...")
]

#only("5")[
#voiceover("We get that delta P equals negative nineteen thousand six hundred and twenty pascals, or negative zero point one nine six two bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[- Pressure decreases by 0.1962 bar for each tap 📉]

#only("1")[
#voiceover("Therefore, the pressure decreases by zero point one nine six two bar for each tap, regardless of their initial pressure, because they all experience the same change in height of the water column above them.")
]
]