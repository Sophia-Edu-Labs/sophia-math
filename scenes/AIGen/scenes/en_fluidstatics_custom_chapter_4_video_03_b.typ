#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Maximum Height 🎈]
#v(40pt)
#only("1-")[
- Given: $V = 1550$ m³, $a = 1.247$ kg/m³, $b = 0.000104$
]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step. We are given that the balloon is inflated to a volume of 1550 cubic meters at ground level. We also have the values for the constants a and b in the air density formula.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Density Equation]
#v(40pt)
#only("1-")[
$ rho_"air"(h) = a dot e^(-b dot h) $
]
#only("1")[
#voiceover("The key to solving this problem is the equation for air density as a function of height. Rho of air at height h equals a times e to the power of negative b times h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy Principle 🪁]
#v(40pt)
#only("1-")[
- At maximum height: $rho_"air" dot V = m$
]
#only("2-")[
- $m = rho_"gas" dot V = 0.60 dot 1550 = 930$ kg
]
#only("1")[
#voiceover("Now, according to the principle of buoyancy, the balloon will stop rising when the density of the air times the volume of the balloon equals the total mass of the balloon and its contents.")
]
#only("2")[
#voiceover("We can calculate this mass by multiplying the density of the gas inside the balloon, which is given as 0.60 kilograms per cubic meter, by the volume. This gives us a mass of 930 kilograms.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solve for Height 📏]
#v(40pt)
#only("1-")[
- $rho_"air"(h) dot V = m$
]
#only("2-")[
- $a dot e^(-b dot h) dot V = m$
]
#only("3-")[
- $e^(-b dot h) = m / (a dot V)$
]
#only("4-")[
- $-b dot h = ln(m / (a dot V))$
]
#only("5-")[
- $h = -(ln(m / (a dot V))) / b$
]
#only("1")[
#voiceover("We can now set up the equation. The density of air at the maximum height times the volume equals the mass.")
]
#only("2")[
#voiceover("Substituting the density equation, we get a times e to the power of negative b times h, times volume, equals mass.")
]
#only("3")[
#voiceover("Dividing both sides by a times V, we isolate the exponential term.")
]
#only("4")[
#voiceover("Taking the natural log of both sides, we get negative b times h equals the natural log of mass over a times V.")
]
#only("5")[
#voiceover("Finally, dividing by negative b, we solve for h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculate 🧮]
#v(40pt)
#only("1-")[
- $h = -(ln(930 / (1.247 dot 1550))) / 0.000104$
]
#only("2-")[
- $h = -(ln(0.4816)) / 0.000104$
]
#only("3-")[
- $h = -(-0.7306) / 0.000104$
]
#only("4-")[
- $h = 7025$ m
]
#only("1")[
#voiceover("Now let's plug in the values. Height equals the negative of the natural log of 930 over 1.247 times 1550, all divided by 0.000104.")
]
#only("2")[
#voiceover("Simplifying the fraction inside the log, we get the natural log of 0.4816.")
]
#only("3")[
#voiceover("The natural log of 0.4816 is negative 0.7306. So we have negative of negative 0.7306 over 0.000104.")
]
#only("4")[
#voiceover("Dividing, we get a maximum height of approximately 7025 meters. That's how high the balloon can go before it stops rising.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the constants
a = 1.247
b = 0.000104
V = 1550
m = 0.60 * V

# Define the height range
h = np.linspace(0, 8000, 1000)

# Calculate the air density
rho_"air" = a * np.exp(-b * h)

# Create the plot
plt.figure(figsize=(10, 6))
plt.plot(h, rho_"air", color='blue', label='Air Density')
plt.axhline(m/V, color='red', linestyle='--', label='Balloon Density')
plt.xlabel('Height (m)')
plt.ylabel('Density (kg/m³)')
plt.title('Air Density vs Height')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph showing how the air density decreases with height. The blue curve is the air density, and the red dashed line is the density of the balloon. Where these two lines intersect is the maximum height the balloon can reach.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎓]
#v(40pt)
#only("1-")[
- Used air density equation: $rho_"air"(h) = a dot e^(-b dot h)$
]
#only("2-")[
- Applied buoyancy principle: $rho_"air" dot V = m$ at max height
]
#only("3-")[
- Solved for height: $h = -(ln(m / (a dot V))) / b$
]
#only("4-")[
- Calculated max height: $h = 7025$ m
]
#only("1")[
#voiceover("To recap, we used the equation for air density as a function of height.")
]
#only("2")[
#voiceover("We applied the principle of buoyancy, which states that the balloon will stop rising when the air density times the volume equals the mass.")
]
#only("3")[
#voiceover("We solved this equation for height.")
]
#only("4")[
#voiceover("And finally, we plugged in the values to calculate the maximum height the balloon can reach, which is 7025 meters. Great work on solving this problem!")
]
]