#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Calculate the pressure difference between the ground floor and the fourth floor (14 m higher) if the ground floor pressure is 4 bar. Use $ Delta p = rho dot g dot h $. (Answer in bar)]
#only("1")[
#voiceover("That's not quite right. Let's see the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[- Ground floor pressure: 4 bar]
#v(20pt)
#only("2-")[- Height difference: 14 m]
#v(20pt)
#only("3-")[- $ rho $ (density of water): 1000 kg/m³]
#v(20pt)
#only("4-")[- $ g $ (acceleration due to gravity): 9.81 m/s²]
// The given information is gradually revealed across slides
#only("1")[
#voiceover("First, let's list out the given information. We know that the pressure at the ground floor is 4 bar.")
]
#only("2")[
#voiceover("The fourth floor is 14 meters higher than the ground floor.")
]  
#only("3")[
#voiceover("We'll also need the density of water, which is 1000 kilograms per cubic meter.")
]
#only("4")[
#voiceover("And the acceleration due to gravity, which is 9.81 meters per second squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formula]
#v(40pt)
#only("1-")[$ Delta p = rho dot g dot h $]
// The formula is shown on all slides
#only("1")[
#voiceover("The formula we'll use to calculate the pressure difference is Delta p equals rho times g times h, where Delta p is the pressure difference, rho is the density of the fluid, g is the acceleration due to gravity, and h is the height difference.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[$ Delta p = 1000 dot 9.81 dot 14 $]
#v(20pt)
#only("2-")[$ Delta p = 137340 $ Pa]
#v(20pt)
#only("3-")[$ Delta p = 137340 / 100000 = 1.3734 $ bar]
// The solution is gradually built up across slides
#only("1")[
#voiceover("Let's plug in the values. Delta p equals 1000 times 9.81 times 14.")
]
#only("2")[
#voiceover("Calculating this, we get 137,340 Pascals.")
]  
#only("3")[
#voiceover("To convert Pascals to bar, we divide by 100,000. This gives us 1.3734 bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[Pressure at 4th floor = Ground floor pressure - $ Delta p $]
#v(20pt)
#only("2-")[Pressure at 4th floor = 4 - 1.3734 = 2.6266 bar 🎉]
// The final answer is revealed across two slides
#only("1")[
#voiceover("To find the actual pressure at the fourth floor, we take the ground floor pressure and subtract the pressure difference we just calculated.")
]
#only("2")[
#voiceover("So the pressure at the fourth floor is 4 minus 1.3734, which equals 2.6266 bar. Great work!")
]
]