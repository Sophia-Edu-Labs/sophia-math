#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pump Force]
#v(40pt)
#only("1-")[#text(size: 20pt)[Given:]]
#v(10pt)
#only("2-")[- Pressure $P = 14.7 "bar"$]
#v(10pt)  
#only("3-")[- Pump piston area $A_("pump") = 5.0 "cm"^2$]
#v(40pt)
#only("4-")[#text(size: 20pt)[Approach:]]
#v(10pt)
#only("5-")[Use $F = P dot A$ 🪜]
#only("1")[
#voiceover("Not quite. Let's review the correct solution to calculate the necessary force of the pump.")
]
#only("2")[
#voiceover("We know from the previous exercise that the pressure in the fluid is 14.7 bar.")
]
#only("3")[
#voiceover("And the area of the pump piston is given as 5.0 square centimeters.")
]
#only("4")[
#voiceover("To find the force, we can use the formula Force equals Pressure times Area.")
]
#only("5")[
#voiceover("This is because pressure is defined as force per unit area.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[$ F_("pump") = P dot A_("pump") $]
#v(20pt)
#only("2-")[$ = 14.7 "bar" dot 5.0 "cm"^2 $]
#v(20pt)
#only("3-")[$ = (14.7 dot 10^5 "Pa") dot (5.0 dot 10^(-4) "m"^2) $]
#v(20pt)
#only("4-")[$ = 735 "N" $]
#v(20pt)
#only("5-")[$ approx 740 "N" $]
#only("1")[
#voiceover("So, let's write out the equation. The force of the pump equals the pressure times the area of the pump piston.")
]
#only("2")[
#voiceover("Plugging in the values, we get 14.7 bar times 5.0 square centimeters.")
]
#only("3")[
#voiceover("To calculate this, we need to convert the units. 1 bar is 10 to the power of 5 Pascals, and 1 square centimeter is 10 to the power of negative 4 square meters.")
]
#only("4")[
#voiceover("Multiplying these out, we get 735 Newtons.")
]
#only("5")[
#voiceover("Rounding to two significant figures, as the question asks, we get approximately 740 Newtons. Well done!")
]
]