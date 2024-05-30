#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 2: Pump Force]
#v(40pt)
#only("1-")[
- Given:
  - Pressure: $P = 14.7 "bar"$
  - Area of pump piston: $A_("pump") = 5.0 "cm"^2$
]
#only("2-")[- Formula: $F = P dot A$]
#only("3-")[- Solution: $F = 14.7 "bar" dot 5.0 "cm"^2 = 73.5 "N"$]
#only("4-")[- Correct answer: 740 N 🎉]

#only("1")[
#voiceover("Great job! Let's review the solution. We are given the pressure of 14.7 bar and the area of the pump piston as 5.0 square centimeters.")
]
#only("2")[
#voiceover("To find the force, we use the formula F equals P times A, where F is the force, P is the pressure, and A is the area.")
]
#only("3")[
#voiceover("Plugging in the values, we get F equals 14.7 bar times 5.0 square centimeters, which gives us 73.5 newtons.")
]
#only("4")[
#voiceover("However, the correct answer is 740 newtons. Let's see why...")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Unit Conversion]
#v(40pt)
#only("1-")[- Pressure: $1 "bar" = 10^5 "Pa"$ (Pascal)]
#only("2-")[- Area: $1 "cm"^2 = 10^(-4) "m"^2$]
#only("3-")[- Solution: $F = 14.7 dot 10^5 "Pa" dot 5.0 dot 10^(-4) "m"^2 = 735 "N" ≈ 740 "N"$]
#only("4-")[- Correct answer: 740 N ✅]

#only("1")[
#voiceover("The key here is unit conversion. One bar is equal to 10 to the power of 5 pascals.")
]
#only("2")[
#voiceover("And one square centimeter is equal to 10 to the power of negative 4 square meters.")
]
#only("3")[
#voiceover("Now, if we plug in these converted units, we get F equals 14.7 times 10 to the power of 5 pascals times 5.0 times 10 to the power of negative 4 square meters. This gives us 735 newtons, which rounds to 740 newtons.")
]
#only("4")[
#voiceover("And that's the correct answer you provided. Fantastic work! Remember, always check your units and convert them if necessary. 🌟")
]
]