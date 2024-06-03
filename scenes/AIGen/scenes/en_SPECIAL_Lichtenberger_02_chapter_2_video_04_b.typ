#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ice Floe Area]
#v(40pt)
#only("1-")[Great job! 🎉 You correctly calculated the area of the ice floe. Let's go through the solution step by step.]
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[
- Polar bear mass: $m = 400 "kg"$
- Ice floe sinks: $Delta h = 2.5 "cm" = 0.025 "m"$
- Density of water: $rho_("water") = 1000 "kg/m"^3$
]
#only("1")[
#voiceover("First, let's summarize the given information. The polar bear has a mass of 400 kilograms. When it steps onto the ice floe, the floe sinks 2.5 centimeters, or 0.025 meters, deeper into the water. We also know that the density of water is 1000 kilograms per cubic meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy Principle]
#v(40pt)
#only("1-")[The weight of the displaced water equals the weight of the object causing the displacement.]
#v(20pt)
#only("2-")[In this case: $m_("polar bear") dot g = rho_("water") dot g dot Delta V$]
#only("1")[
#voiceover("The key principle we'll use to solve this problem is the buoyancy principle. It states that the weight of the displaced water equals the weight of the object causing the displacement.")
]
#only("2")[
#voiceover("In this case, it means that the weight of the polar bear, given by its mass times the acceleration due to gravity, equals the density of water times the acceleration due to gravity times the change in volume of the displaced water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Area]
#v(40pt)
#only("1-")[The change in volume $Delta V$ can be expressed as the area of the ice floe $A$ times the change in height $Delta h$.]
#v(20pt)
#only("2-")[$Delta V = A dot Delta h$]
#v(20pt)
#only("3-")[Substituting this into the buoyancy equation:]
#v(10pt)
#only("3-")[$m_("polar bear") dot g = rho_("water") dot g dot A dot Delta h$]
#v(20pt)
#only("4-")[Solving for $A$:]
#v(10pt)
#only("4-")[$A = (m_("polar bear") dot g)/(rho_("water") dot g dot Delta h)$]
#only("1")[
#voiceover("To find the area of the ice floe, we need to express the change in volume in terms of the area. The change in volume equals the area of the ice floe times the change in height.")
]
#only("2")[
#voiceover("Mathematically, we write this as delta V equals A times delta h.")
]
#only("3")[
#voiceover("Now, we can substitute this expression for delta V into the buoyancy equation. We get that the mass of the polar bear times g equals the density of water times g times the area of the ice floe times the change in height.")
]
#only("4")[
#voiceover("To solve for the area A, we divide both sides by the density of water, g, and delta h. This gives us the formula for the area.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Plugging in Values]
#v(40pt)
#only("1-")[
$A = (400 "kg" dot 9.81 "m/s"^2)/(1000 "kg/m"^3 dot 9.81 "m/s"^2 dot 0.025 "m")$
]
#v(20pt)
#only("2-")[
$A = 16 "m"^2$
]
#only("1")[
#voiceover("Now, we can plug in the values. The mass of the polar bear is 400 kilograms, the acceleration due to gravity is 9.81 meters per second squared, the density of water is 1000 kilograms per cubic meter, and the change in height is 0.025 meters.")
]
#only("2")[
#voiceover("When we calculate this, we get that the area of the ice floe is 16 square meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The area of the ice floe is $16 "m"^2$. 🧊]
#only("1")[
#voiceover("In conclusion, the area of the ice floe that the polar bear steps onto is 16 square meters. Great work on solving this problem!")
]
]