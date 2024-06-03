#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Physics 🎈]
#v(40pt)
#only("1-")[#text(size: 20pt)[The balloon is inflated to a volume of 1550 m³ at the start in Uster. This volume remains constant while ascending. How high can the balloon rise?]]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this problem step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information 📝]
#v(40pt)
#only("1-")[
- Balloon volume: $V = 1550 "m"^3$
- Starting location: Uster (464 m above sea level)
- Volume remains constant during ascent
]
#only("1")[
#voiceover("First, let's gather the given information. The balloon has a volume of 1550 cubic meters, it starts in Uster which is 464 meters above sea level, and the volume remains constant during the ascent.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach 🧮]
#v(40pt)
#only("1-")[
- Use the barometric formula: $p(h) = p_0 e^(-"mgh"/(k_"BT"))$
- Solve for the height $h$
]
#only("1")[
#voiceover("To find the maximum height the balloon can reach, we'll use the barometric formula. This formula relates the pressure at a given height to the pressure at sea level. We'll solve this equation for the height h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Barometric Formula 📏]
#v(40pt)
#only("1-")[
$p(h) = p_0 e^(-"mgh"/(k_"BT"))$
]
#only("2-")[
where:
- $p(h)$: pressure at height $h$
- $p_0$: pressure at sea level
- $m$: mass of air molecules
- $g$: gravitational acceleration
- $k_B$: Boltzmann constant
- $T$: temperature in Kelvin
]
#only("1")[
#voiceover("The barometric formula states that the pressure at a height h equals the pressure at sea level times e to the power of negative m g h over k B T.")
]
#only("2")[
#voiceover("Here, p of h is the pressure at height h, p naught is the pressure at sea level, m is the mass of air molecules, g is the gravitational acceleration, k B is the Boltzmann constant, and T is the temperature in Kelvin.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Solve for Height 📐]
#v(40pt)
#only("1-")[
$p(h) = p_0 e^(-"mgh"/(k_"BT"))$
]
#only("2-")[
$arrow p(h)/p_0 = e^(-"mgh"/(k_"BT"))$
]
#only("3-")[
$arrow ln(p(h)/p_0) = -"mgh"/(k_"BT")$
]
#only("4-")[
$arrow h = -(k_"BT"/("mg")) ln(p(h)/p_0)$
]
#only("1")[
#voiceover("We start with the barometric formula.")
]
#only("2")[
#voiceover("First, we divide both sides by p naught.")
]
#only("3")[
#voiceover("Then, we take the natural logarithm of both sides.")
]
#only("4")[
#voiceover("Finally, we solve for h by multiplying both sides by negative k B T over m g.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate Pressure 🌡️]
#v(40pt)
#only("1-")[
- Use the ideal gas law: $"pV" = "nRT"$
- Solve for $p$: $p = "nRT"/V$
]
#only("2-")[
where:
- $n$: number of moles of gas
- $R$: universal gas constant
- $T$: temperature in Kelvin
- $V$: volume of the balloon
]
#only("1")[
#voiceover("To find the pressure at the starting height and the maximum height, we'll use the ideal gas law, p V equals n R T. We solve this for p to get p equals n R T over V.")
]
#only("2")[
#voiceover("Here, n is the number of moles of gas, R is the universal gas constant, T is the temperature in Kelvin, and V is the volume of the balloon.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Plug in Values 🔢]
#v(40pt)
#only("1-")[
$h = -(k_"BT"/("mg")) ln((n_("max")"RT"_("max")/V)/(n_0"RT"_0/V))$
]
#only("2-")[
$= -(k_"BT"/("mg")) ln(n_("max")T_("max")/(n_0T_0))$
]
#only("3-")[
Assume:
- $T_("max") = T_0 = 288 "K"$ (constant temperature)
- $n_("max") = n_0 (1 - "mgh"_("max")/(k_"BT"))$ (from barometric formula)
]
#only("4-")[
$arrow h_("max") = -(k_"BT"/("mg")) ln(1 - "mgh"_("max")/(k_"BT"))$
]
#only("1")[
#voiceover("We plug in the expressions for the pressures at the starting height and the maximum height into our equation for h.")
]
#only("2")[
#voiceover("The volume V cancels out.")
]
#only("3")[
#voiceover("To simplify further, we assume a constant temperature T and use the barometric formula to express n at the maximum height in terms of n at the starting height.")
]
#only("4")[
#voiceover("This gives us an equation for the maximum height h max that depends only on known constants.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 5: Solve Numerically 🖥️]
#v(40pt)
#only("1-")[
$h_("max") = -("k_BT"/("mg")) ln(1 - "mgh"_("max")/(k_"BT"))$
]
#only("2-")[
Solve numerically (e.g., using Newton's method) with:
- $k_B = 1.38 dot 10^(-23) "J/K"$
- $T = 288 "K"$
- $m = 4.81 dot 10^(-26) "kg"$
- $g = 9.81 "m/s"^2$
]
#only("3-")[
$arrow h_("max") ≈ 2000 "m"$
]
#only("1")[
#voiceover("This equation cannot be solved analytically for h max. We need to solve it numerically, for example using Newton's method.")
]
#only("2")[
#voiceover("We plug in the values for the Boltzmann constant k B, the temperature T, the mass of an air molecule m, and the gravitational acceleration g.")
]
#only("3")[
#voiceover("Solving numerically, we find that the maximum height the balloon can reach is approximately 2000 meters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎉]
#v(40pt)
#only("1-")[
The balloon, inflated to a volume of 1550 m³ and starting from Uster (464 m above sea level), can rise to a maximum height of approximately 2000 m, assuming constant temperature and using the barometric formula and the ideal gas law.
]
#only("1")[
#voiceover("In conclusion, the balloon inflated to a volume of 1550 cubic meters and starting from Uster, which is 464 meters above sea level, can rise to a maximum height of approximately 2000 meters. This assumes constant temperature and uses the barometric formula and the ideal gas law.")
]
]