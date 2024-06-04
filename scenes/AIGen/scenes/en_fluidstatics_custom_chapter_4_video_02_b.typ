#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Volume Calculation 🎈]
#v(40pt)
#only("1-")[#text(size: 24pt, weight: "bold")[Given:]]
#v(20pt)
#only("2-")[- Total mass to lift: $m = 640$ kg]
#v(10pt)
#only("3-")[- Air density at 464 m: $rho_"air" = 1.188$ kg/m³]
#v(10pt)
#only("4-")[- Gas density: $rho_"gas" = 0.60$ kg/m³]
#v(10pt)
#only("5-")[- Formula: $V = m / (rho_"air" - rho_"gas")$]

#only("1")[
#voiceover("That's not quite right. Let's walk through the correct solution step by step.")
]
#only("2")[
#voiceover("First, we are given the total mass that needs to be lifted, which is 640 kilograms. This includes the balloon, passengers, and gondola.")
]
#only("3")[
#voiceover("Next, we have the air density at an altitude of 464 meters, which is 1.188 kilograms per cubic meter.")
]
#only("4")[
#voiceover("We also have the density of the gas used in the balloon, which is 0.60 kilograms per cubic meter.")
]
#only("5")[
#voiceover("The formula to calculate the minimum volume of the balloon is V equals m divided by rho air minus rho gas, where V is the volume, m is the total mass, rho air is the air density, and rho gas is the gas density.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution 🧮]
#v(40pt)
#only("1-")[#text(size: 24pt, weight: "bold")[Step 1: Plug in values]]
#v(20pt)
#only("2-")[$ V = 640 / (1.188 - 0.60) $]
#v(10pt)
#only("3-")[#text(size: 24pt, weight: "bold")[Step 2: Simplify denominator]]
#v(20pt)  
#only("4-")[$ V = 640 / 0.588 $]
#v(10pt)
#only("5-")[#text(size: 24pt, weight: "bold")[Step 3: Calculate volume]]
#v(20pt)
#only("6-")[$ V = 1088.44$ m³]
#v(10pt)
#only("7-")[#text(size: 24pt, weight: "bold")[Step 4: Round to nearest integer]]
#v(20pt)
#only("8-")[$ V = 1088$ m³]

#only("1")[
#voiceover("Now, let's solve the problem. In the first step, we plug in the given values into the formula.")
]
#only("2")[
#voiceover("So, V equals 640 divided by 1.188 minus 0.60.")
]
#only("3")[
#voiceover("In the next step, we simplify the denominator.")
]
#only("4")[
#voiceover("1.188 minus 0.60 equals 0.588. So, our equation becomes V equals 640 divided by 0.588.")
]
#only("5")[
#voiceover("Now, we can calculate the volume by dividing 640 by 0.588.")
]
#only("6")[
#voiceover("This gives us a volume of 1088.44 cubic meters.")
]
#only("7")[
#voiceover("Since we're asked to round to the nearest integer, we perform the final step.")
]
#only("8")[
#voiceover("Rounding 1088.44 to the nearest integer gives us 1088 cubic meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The minimum volume of the balloon needed to lift a total mass of 640 kg in Uster is #text(fill: green)[1088 m³].]

#only("1")[
#voiceover("Therefore, the minimum volume of the balloon needed to lift a total mass of 640 kilograms in Uster is 1088 cubic meters. Great work on solving this problem!")
]
]