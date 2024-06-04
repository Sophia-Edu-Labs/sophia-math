#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift Problem 🏗️]
#v(40pt)
#only("1-")[
- Given: 
  - Motor mass: $m = 6000$ kg
  - Press piston area: $A = 400$ cm²
- Find: Pressure $p$ required to lift the motor
]
#only("1")[
#voiceover("Not quite. Let's review the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify the Formula 📏]
#v(40pt)
#only("1-")[
- Pressure formula: $p = F / A$
  - $p$: Pressure (Pa)
  - $F$: Force (N)
  - $A$: Area (m²)
]
#only("1")[
#voiceover("First, we identify the formula for pressure, which is force divided by area.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Calculate the Force 🏋️]
#v(40pt)
#only("1-")[
- Force due to gravity: $F = m dot g$
  - $m$: Mass (kg)
  - $g$: Acceleration due to gravity (9.81 m/s²)
]
#v(20pt)
#only("2-")[
$F = 6000 dot 9.81 = 58860$ N
]
#only("1")[
#voiceover("Next, we calculate the force acting on the motor. This is the force due to gravity, which is mass times acceleration due to gravity.")
]
#only("2")[
#voiceover("Plugging in the values, we get a force of 58,860 Newtons.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Convert Area Units 🔄]
#v(40pt)
#only("1-")[
- Convert cm² to m²:
]
#v(20pt)
#only("2-")[
$400$ cm² $= 400 \cdot (0.01)^2 = 0.04$ m²
]
#only("1")[
#voiceover("The pressure formula uses area in square meters, but we're given the area in square centimeters. So we need to convert.")
]
#only("2")[
#voiceover("400 square centimeters is equal to 0.04 square meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Calculate the Pressure 🎯]
#v(40pt)
#only("1-")[
$p = F / A$
]
#v(20pt)
#only("2-")[
$p = 58860 / 0.04$
]
#v(20pt)
#only("3-")[
$p = 1471500$ Pa
]
#only("1")[
#voiceover("Finally, we can calculate the pressure by dividing the force by the area.")
]
#only("2")[
#voiceover("58,860 Newtons divided by 0.04 square meters...")
]
#only("3")[
#voiceover("equals 1,471,500 Pascals. And that's our answer!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[
- Pressure is force per unit area
- Convert units carefully
- Use given formulas step by step
]
#only("1")[
#voiceover("To recap, remember that pressure is force per unit area. Always pay attention to units and convert if necessary. And when solving problems, use the given formulas and take it step by step.")
]
]