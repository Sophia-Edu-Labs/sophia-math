#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure at Depth]
#v(40pt)
#only("1-")[- Pressure depends on depth, density, and gravity]
#v(20pt)
#only("2-")[- Given: depth $h = 1000 "m"$, density of seawater $rho = 1020 "kg/m"^3$, gravity $g = 9.81 "m/s"^2$]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's look at how we can calculate the pressure at a depth of 1000 meters in seawater. Pressure depends on the depth, the density of the fluid, and the acceleration due to gravity.")
]
#only("2")[
#voiceover("We're given that the depth is 1000 meters, the density of seawater is 1020 kilograms per cubic meter, and the acceleration due to gravity is 9.81 meters per second squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Formula]
#v(40pt)
#only("1-")[- $p = rho dot g dot h$]
#v(20pt)
#only("2-")[- $p$ = pressure, $rho$ = density, $g$ = gravity, $h$ = depth]
#only("1")[
#voiceover("The formula to calculate pressure is p equals rho times g times h, where p is the pressure, rho is the density of the fluid, g is the acceleration due to gravity, and h is the depth.")
]
#only("2")[
#voiceover("Let's substitute the given values into this formula.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)
#only("1-")[- $p = 1020 "kg/m"^3 dot 9.81 "m/s"^2 dot 1000 "m"$]
#v(20pt)
#only("2-")[- $p = 10006200 "kg/m/s"^2$]
#v(20pt)
#only("3-")[- $p = 10006200 "Pa"$ (since $1 "Pa" = 1 "kg/m/s"^2$)]
#only("1")[
#voiceover("Substituting the values, we get p equals 1020 kilograms per cubic meter times 9.81 meters per second squared times 1000 meters.")
]
#only("2")[
#voiceover("Multiplying these numbers, we get 10006200 kilograms per meter per second squared.")
]
#only("3")[
#voiceover("This unit, kilograms per meter per second squared, is equivalent to the unit of pressure, Pascals. So the pressure at a depth of 1000 meters in seawater is 10006200 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Pressure at 1000 m depth in seawater: 10006200 Pa 🌊]
#v(20pt)
#only("2-")[- Key formula: $p = rho dot g dot h$ 📏]
#v(20pt)
#only("3-")[- Remember units: $"Pa" = "kg/m/s"^2$ 📐]
#only("1")[
#voiceover("In summary, the pressure at a depth of 1000 meters in seawater is 10006200 Pascals.")
]
#only("2")[
#voiceover("The key formula to remember is p equals rho times g times h.")
]
#only("3")[
#voiceover("And don't forget, the unit of pressure, Pascals, is equivalent to kilograms per meter per second squared.")
]
]