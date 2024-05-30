#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#align(center)[That's the correct answer! Let's see how we got there.]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
- FIFA soccer ball circumference: 68-70 cm
- FIFA soccer ball weight: 410-450 g
#v(20pt)
#text(size: 24pt)[📏 💧 What force is needed to hold the ball underwater?]
#only("1")[
#voiceover("First, let's review the given information. We know that an official FIFA soccer ball has a circumference between 68 and 70 centimeters and weighs between 410 and 450 grams. We want to find out what force is needed to hold such a ball underwater.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Calculate Volume]
#v(40pt)
#only("1-")[- Assume a sphere 🏀]
#v(20pt)
#only("2-")[- $r = "circumference"/(2π) ≈ 10.8 "cm"$]
#v(20pt)
#only("3-")[- $V = (4/3)π dot r^3 ≈ 5281 "cm"^3$]
#only("1")[
#voiceover("To calculate the force, we first need to find the volume of the ball. Let's assume the ball is a perfect sphere.")
]
#only("2")[
#voiceover("We can calculate the radius using the circumference. The radius equals the circumference divided by 2 pi, which is approximately 10.8 centimeters.")
]
#only("3")[
#voiceover("Now, we can calculate the volume using the formula for the volume of a sphere, which is 4/3 times pi times the radius cubed. This gives us a volume of approximately 5281 cubic centimeters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Calculate Buoyant Force]
#v(40pt)
#only("1-")[- $F_b = ρ_w g V$]
#v(20pt)
#only("2-")[- $ρ_w ≈ 1 "g/cm"^3$, $g ≈ 9.81 "m/s"^2$]
#v(20pt)
#only("3-")[- $F_b ≈ 1 "g/cm"^3 dot 9.81 "m/s"^2 dot 5281 "cm"^3$]
#v(20pt)
#only("4-")[- $F_b ≈ 51.8 "N"$]
#only("1")[
#voiceover("The force we're looking for is the buoyant force. It's given by the density of water times the acceleration due to gravity times the volume of the displaced water, which is the volume of the ball.")
]
#only("2")[
#voiceover("The density of water is approximately 1 gram per cubic centimeter, and the acceleration due to gravity is about 9.81 meters per second squared.")
]
#only("3")[
#voiceover("Plugging in these values, we get the buoyant force equals 1 gram per cubic centimeter times 9.81 meters per second squared times 5281 cubic centimeters.")
]
#only("4")[
#voiceover("This calculation gives us a buoyant force of approximately 51.8 newtons.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Account for Ball's Weight]
#v(40pt)
#only("1-")[- $F = F_b - m_b g$]
#v(20pt)
#only("2-")[- $m_b ≈ 0.43 "kg"$]
#v(20pt)
#only("3-")[- $F ≈ 51.8 "N" - 0.43 "kg" dot 9.81 "m/s"^2$]
#v(20pt)
#only("4-")[- $F ≈ 47.6 "N"$ ✅]
#only("1")[
#voiceover("Finally, we need to account for the weight of the ball itself. The total force needed is the buoyant force minus the weight of the ball.")
]
#only("2")[
#voiceover("The mass of the ball is approximately 0.43 kilograms, based on the given weight range.")
]
#only("3")[
#voiceover("So, the force equals 51.8 newtons minus 0.43 kilograms times 9.81 meters per second squared.")
]
#only("4")[
#voiceover("This gives us a final answer of approximately 47.6 newtons. And that matches your answer - great work!")
]
]