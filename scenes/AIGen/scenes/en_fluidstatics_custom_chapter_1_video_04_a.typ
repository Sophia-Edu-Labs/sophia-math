#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Calculate the new water pressure at the ground floor if the water level drops by 2 m. Use $ p = rho dot g dot h $. (Answer in bar)]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's go through the solution step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[- Water level drops by 2 m]
#v(20pt)
#only("2-")[- $ rho $ of water = 1000 kg/m³]
#v(20pt)
#only("3-")[- $ g $ = 9.81 m/s²]
#v(20pt) 
#only("4-")[- Original pressure at ground floor = 4 bar]
#only("1")[
#voiceover("We are given that the water level drops by 2 meters.")
]
#only("2")[
#voiceover("We also know that the density of water, denoted by rho, is 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("The acceleration due to gravity, denoted by g, is 9.81 meters per second squared.")
]
#only("4")[
#voiceover("And the original pressure at the ground floor was 4 bar.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1]
#v(40pt)
#only("1-")[Calculate the change in pressure ($Δp$) due to the 2 m drop in water level.]
#v(20pt)
#only("2-")[$ Δp = rho dot g dot Δh $]
#v(20pt)
#only("3-")[$ Δp = 1000 dot 9.81 dot 2 $]
#v(20pt)
#only("4-")[$ Δp = 19620 $ Pa]
#only("1")[
#voiceover("First, we need to calculate the change in pressure, denoted by delta p, due to the 2 meter drop in water level.")
]
#only("2")[
#voiceover("We can use the formula delta p equals rho times g times delta h, where delta h is the change in height.")
]
#only("3")[
#voiceover("Plugging in the values, we have delta p equals 1000 times 9.81 times 2.")
]
#only("4")[
#voiceover("This gives us a change in pressure of 19620 Pascals.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2]
#v(40pt)
#only("1-")[Convert $Δp$ from Pascals to bar.]
#v(20pt)
#only("2-")[1 bar = 100000 Pa]
#v(20pt)
#only("3-")[$ Δp = (19620 / 100000) $ bar]
#v(20pt)
#only("4-")[$ Δp = 0.1962 $ bar]
#only("1")[
#voiceover("Next, we need to convert this change in pressure from Pascals to bar.")
]
#only("2")[
#voiceover("We know that 1 bar is equal to 100000 Pascals.")
]
#only("3")[
#voiceover("So, we can divide 19620 by 100000 to get the change in pressure in bar.")
]
#only("4")[
#voiceover("This gives us a change in pressure of 0.1962 bar.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3]
#v(40pt)
#only("1-")[Calculate the new pressure at the ground floor.]
#v(20pt)
#only("2-")[New pressure = Original pressure - $Δp$]
#v(20pt)
#only("3-")[New pressure = 4 - 0.1962]
#v(20pt)
#only("4-")[New pressure = 3.8038 bar 🎉]
#only("1")[
#voiceover("Finally, we can calculate the new pressure at the ground floor.")
]
#only("2")[
#voiceover("The new pressure will be the original pressure minus the change in pressure.")
]
#only("3")[
#voiceover("So, we take 4 and subtract 0.1962.")
]
#only("4")[
#voiceover("This gives us a new pressure at the ground floor of 3.8038 bar. And that's the solution!")
]
]