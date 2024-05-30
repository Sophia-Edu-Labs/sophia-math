#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Liftoff 🎈]
#v(40pt)
#only("1-")[That's not quite right. Let's go through the correct solution step by step.]
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[
- Balloon lifts off when buoyant force = weight
- Ignore volume of gondola and passengers
- Uster is at 464 m above sea level
]
#only("1")[
#voiceover("We are given that the balloon will lift off when the buoyant force equals the weight of the balloon. We can ignore the volume of the gondola and passengers. Also, Uster is at 464 meters above sea level.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Buoyancy Equation]
#v(40pt)
#only("1-")[
$"Buoyant Force" = ("Density of Air" - "Density of Heated Gas") dot "Volume of Balloon" dot g$
]
#only("2-")[
$F_B = (rho_("air") - rho_("heated gas")) dot V dot g$
]
#only("1")[
#voiceover("The first step is to write out the equation for buoyant force. It is equal to the density of air minus the density of the heated gas inside the balloon, multiplied by the volume of the balloon and the acceleration due to gravity.")
]
#only("2")[
#voiceover("We can express this mathematically as F sub B equals rho sub air minus rho sub heated gas, multiplied by V and g.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Equate Forces ⚖]
#v(40pt)
#only("1-")[
$"Buoyant Force" = "Weight of Balloon"$
]
#only("2-")[
$(rho_("air") - rho_("heated gas")) dot V dot g = m_("balloon") dot g$
]
#only("1")[
#voiceover("The next step is to equate the buoyant force to the weight of the balloon.")
]
#only("2")[
#voiceover("So we have rho sub air minus rho sub heated gas, multiplied by V and g, equals m sub balloon multiplied by g.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Solve for Volume]
#v(40pt)
#only("1-")[
$V = (m_("balloon") dot g)/((rho_("air") - rho_("heated gas")) dot g)$
]
#only("2-")[
$V = m_("balloon")/(rho_("air") - rho_("heated gas"))$
]
#only("1")[
#voiceover("Now we can solve for the volume V. We divide both sides by rho sub air minus rho sub heated gas, multiplied by g.")
]
#only("2")[
#voiceover("The g's cancel out, and we are left with V equals m sub balloon divided by rho sub air minus rho sub heated gas.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Calculate Densities 🌡]
#v(40pt)
#only("1-")[
- $rho_("air") = 1.225 "kg/m"^3$ at sea level
- Uster is at 464 m, so $rho_("air") = 1.17 "kg/m"^3$
- $rho_("heated gas") = 0.09 "kg/m"^3$
]
#only("1")[
#voiceover("The last step is to calculate the densities and plug in the values. The density of air is 1.225 kilograms per cubic meter at sea level. But since Uster is at 464 meters, we need to adjust this value. At this altitude, the density of air is approximately 1.17 kilograms per cubic meter. The density of the heated gas inside the balloon is 0.09 kilograms per cubic meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 5: Plug In Values 🔢]
#v(40pt)
#only("1-")[
$V = m_("balloon")/(1.17 - 0.09) = m_("balloon")/1.08$
]
#only("2-")[
If $m_("balloon") = 1175 "kg"$, then:
]
#only("3-")[
$V = 1175/1.08 = 1088 "m"^3$
]
#only("1")[
#voiceover("We plug these values into our equation. V equals m sub balloon divided by 1.17 minus 0.09, which simplifies to m sub balloon divided by 1.08.")
]
#only("2")[
#voiceover("If the mass of the balloon is 1175 kilograms, then...")
]
#only("3")[
#voiceover("V equals 1175 divided by 1.08, which gives us 1088 cubic meters. This is the minimum volume the balloon needs to lift off in Uster.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- Equate buoyant force to weight of balloon
- Solve for volume
- Calculate densities based on altitude
- Plug in values to get minimum volume
]
#only("1")[
#voiceover("To summarize, we equated the buoyant force to the weight of the balloon, solved for volume, calculated the densities based on the altitude, and plugged in the values to get the minimum volume needed for liftoff.")
]
]