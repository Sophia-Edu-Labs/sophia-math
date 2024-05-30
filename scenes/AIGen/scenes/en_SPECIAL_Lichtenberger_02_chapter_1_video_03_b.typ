#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Problem Setup]

#v(40pt)

#only("2-")[- Water container at height $h_0$]
#only("3-")[- Taps at heights $h_1 = -35 "m"$, $h_2 = -10 "m"$, $h_3 = 3 "m"$ relative to container]

#only("2")[#voiceover("We have a water container at some height h naught.")]
#only("3")[#voiceover("The three taps are located at heights h one equals minus thirty-five meters, h two equals minus ten meters, and h three equals three meters relative to the container.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Formula]

#v(40pt)

#only("1-")[$ P = P_0 - rho g h $]

#only("1")[#voiceover("To calculate the overpressure at each tap, we use the hydrostatic pressure formula: P equals P naught minus rho g h, where P naught is the pressure at the container, rho is the density of water, g is the acceleration due to gravity, and h is the height difference between the container and the tap.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculations]

#v(40pt)

#only("1-")[- $rho = 1000 "kg/m"^3$, $g = 9.81 "m/s"^2$]

#v(10pt)

#only("2-")[- Tap 1: $P_1 = P_0 - (1000 "kg/m"^3)(9.81 "m/s"^2)(-35 "m") = P_0 + 343500 "Pa" = P_0 + 3.4 "bar"$ 🚰]

#v(10pt)

#only("3-")[- Tap 2: $P_2 = P_0 - (1000 "kg/m"^3)(9.81 "m/s"^2)(-10 "m") = P_0 + 98100 "Pa" = P_0 + 1.0 "bar"$ 🚰]

#v(10pt)

#only("4-")[- Tap 3: $P_3 = P_0 - (1000 "kg/m"^3)(9.81 "m/s"^2)(3 "m") = P_0 - 29430 "Pa" = P_0 - 0.3 "bar"$ 🚰]

#only("1")[#voiceover("We'll use the density of water, rho equals one thousand kilograms per cubic meter, and the acceleration due to gravity, g equals nine point eight one meters per second squared.")]

#only("2")[#voiceover("For tap one, we have P one equals P naught minus one thousand times nine point eight one times negative thirty-five. This simplifies to P naught plus three hundred forty-three thousand five hundred pascals, or P naught plus three point four bar.")]

#only("3")[#voiceover("Similarly, for tap two, we get P two equals P naught plus ninety-eight thousand one hundred pascals, or P naught plus one bar.")]

#only("4")[#voiceover("Finally, for tap three, we have P three equals P naught minus twenty-nine thousand four hundred thirty pascals, or P naught minus zero point three bar.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Tap 1 (35 m below): Overpressure = 3.4 bar]
#only("2-")[- Tap 2 (10 m below): Overpressure = 1.0 bar]  
#only("3-")[- Tap 3 (3 m above): Overpressure = -0.3 bar]

#only("1")[#voiceover("In summary, the overpressure at tap one, thirty-five meters below the container, is three point four bar.")]

#only("2")[#voiceover("The overpressure at tap two, ten meters below, is one bar.")]

#only("3")[#voiceover("And the overpressure at tap three, three meters above, is negative zero point three bar.")]
]