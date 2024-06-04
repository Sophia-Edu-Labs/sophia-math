#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hot Air Balloon Flight 🎈]
#v(40pt)
#only("1-")[
- Determined by density difference
]
#v(20pt)
#only("2-")[
- Heated air inside balloon vs. cooler ambient air
]
#only("1")[
#voiceover("The flight of a hot air balloon is determined by the density difference")
]
#only("2")[
#voiceover("between the heated air inside the balloon and the cooler ambient air.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculations Needed 📐]
#v(40pt)
#only("1-")[
- Volume of balloon
]
#v(20pt)
#only("2-")[
- Maximum height balloon can reach
]
#only("1")[
#voiceover("To understand the flight dynamics, calculations are needed for the volume of the balloon")
]
#only("2")[
#voiceover("and the maximum height the balloon can reach.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Volume Calculation 🎈]
#v(40pt)
#only("1-")[
- Formula: $ V = m / (rho_"air" - rho_"gas") $
]
#v(20pt)
#only("2-")[
- $m$ = total mass (balloon, passengers, gondola)
- $rho_"air"$ = density of air
- $rho_"gas"$ = density of heated gas
]
#only("1")[
#voiceover("The volume of the balloon is calculated using the formula V equals m divided by rho air minus rho gas,")
]
#only("2")[
#voiceover("where m is the total mass including the balloon, passengers, and gondola, rho air is the density of air, and rho gas is the density of the heated gas inside the balloon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Maximum Height Calculation 📏]
#v(40pt)
#only("1-")[
- Formula: $ rho_"air"(h) = a e^(-b h) $
]
#v(20pt)
#only("2-")[
- $h$ = height
- $a$, $b$ = constants
]
#v(20pt)
#only("3-")[
- Solve for $h$ when $ rho_"air"(h) = rho_"gas" $
]
#only("1")[
#voiceover("The maximum height the balloon can reach is calculated using the formula rho air of h equals a times e to the power of negative b times h,")
]
#only("2")[
#voiceover("where h is the height and a and b are constants.")
]
#only("3")[
#voiceover("To find the maximum height, we solve for h when rho air of h equals rho gas, the density of the heated gas inside the balloon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[
- Hot air balloon flight depends on density difference
]
#v(20pt)
#only("2-")[
- Calculations needed for balloon volume and maximum height
]
#v(20pt)
#only("3-")[
- Understanding these principles is crucial for safe and efficient hot air balloon operation 🎈
]
#only("1")[
#voiceover("In summary, the flight of a hot air balloon depends on the density difference between the heated air inside and the cooler ambient air.")
]
#only("2")[
#voiceover("Calculations are needed to determine the balloon volume and the maximum height it can reach.")
]
#only("3")[
#voiceover("Understanding these principles is crucial for safe and efficient hot air balloon operation.")
]
]