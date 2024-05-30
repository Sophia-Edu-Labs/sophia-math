#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Polar Bear on Ice Floe 🐻❄️]
#v(40pt)
#only("1-")[- Polar bear mass: $m_("bear") = 400 "kg"$]
#v(20pt)
#only("2-")[- Ice floe sinks: $Delta h = 2.5 "cm" = 0.025 "m"$]
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step. We know the mass of the polar bear is 400 kilograms.")
]
#only("2")[
#voiceover("And when the bear steps on the ice floe, it sinks an additional 2.5 centimeters, which is 0.025 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Principle 🌊]
#v(40pt)
#only("1-")[- Weight of displaced water = Weight of bear]
#v(20pt)
#only("2-")[$ rho_("water") dot g dot V_("displaced") = m_("bear") dot g$]
#only("1")[
#voiceover("To find the area of the ice floe, we can use Archimedes' principle. It states that the weight of the displaced water equals the weight of the bear.")
]
#only("2")[
#voiceover("Mathematically, this is the density of water times the acceleration due to gravity times the volume of displaced water equals the mass of the bear times the acceleration due to gravity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Volume of Displaced Water 💧]
#v(40pt)
#only("1-")[- $V_("displaced") = A_("floe") dot Delta h$]
#v(20pt)
#only("2-")[$ rho_("water") dot g dot A_("floe") dot Delta h = m_("bear") dot g$]
#only("1")[
#voiceover("The volume of displaced water is the area of the ice floe times the change in height, or how much it sinks.")
]
#only("2")[
#voiceover("Substituting this into our equation, we get the density of water times gravity times the area of the floe times the change in height equals the mass of the bear times gravity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solve for Area 📏]
#v(40pt)
#only("1-")[$ A_("floe") = (m_("bear") dot g) / (rho_("water") dot g dot Delta h)$]
#v(20pt)
#only("2-")[$ A_("floe") = (400 "kg" dot 9.81 "m/s"^2) / (1000 "kg/m"^3 dot 9.81 "m/s"^2 dot 0.025 "m")$]
#v(20pt)
#only("3-")[$ A_("floe") = 16 "m"^2$]
#only("1")[
#voiceover("We can solve for the area of the floe by dividing both sides by the density of water, gravity, and the change in height.")
]
#only("2")[
#voiceover("Plugging in the values, we have 400 kilograms times 9.81 meters per second squared, divided by 1000 kilograms per cubic meter times 9.81 meters per second squared times 0.025 meters.")
]
#only("3")[
#voiceover("Simplifying, we find that the area of the ice floe is 16 square meters. Excellent work!")
]
]