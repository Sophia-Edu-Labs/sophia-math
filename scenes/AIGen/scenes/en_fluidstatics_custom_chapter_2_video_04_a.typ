#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dam Pressure Calculation 🌊]
#v(40pt)
#only("1-")[Given:
- Water depth $h = 10$ m
- Density of water $rho = 1000$ kg/m³
- Acceleration due to gravity $g = 9.81$ m/s²]
// The given information is listed on all slides
#v(20pt)
#only("2-")[Formula:
$p = rho dot g dot h$]
// The formula is shown from slide 2 onward
#only("1")[
#voiceover("Great job! You correctly calculated the pressure at the bottom of the dam. Let's walk through the solution step by step.")
]
#only("2")[
#voiceover("To find the pressure, we'll use the formula p equals rho times g times h, where rho is the density of water, g is the acceleration due to gravity, and h is the depth of the water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution 📝]
#v(40pt)
#only("1-")[Substitute the given values:
$p = 1000 dot 9.81 dot 10$]
// The substitution is shown on all slides
#v(20pt)
#only("2-")[Simplify:
$p = 98100$]
// The simplified result is shown from slide 2 onward
#v(20pt)
#only("3-")[Units:
$p = 98100$ Pa (Pascals)]
// The units are added from slide 3 onward
#only("1")[
#voiceover("First, we substitute the given values into the formula. Rho is 1000 kilograms per cubic meter, g is 9.81 meters per second squared, and h is 10 meters.")
]
#only("2")[
#voiceover("Multiplying these values together, we get 98,100.")
]
#only("3")[
#voiceover("The unit for pressure is Pascals, so our final answer is 98,100 Pascals.")
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

h = 10  # Water depth in meters
rho = 1000  # Density of water in kg/m³
g = 9.81  # Acceleration due to gravity in m/s²

# Calculate pressure
p = rho * g * h

# Create depth array for plotting
depth = np.linspace(0, h, 100)

# Calculate pressure at each depth
pressure = rho * g * depth

# Plot pressure vs depth
plt.figure(figsize=(6, 4))
plt.plot(pressure / 1000, -depth, linewidth=2, color='blue')
plt.xlabel('Pressure (kPa)', fontsize=14)
plt.ylabel('Depth (m)', fontsize=14)
plt.title('Pressure vs Depth in a Dam', fontsize=16)
plt.grid(True)

# Add pressure value at the bottom
plt.text(80, -9, f'Pressure at bottom = {p/1000:.2f} kPa', fontsize=12, color='red')

plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: "Pressure increases linearly with depth in the dam, reaching 98.1 kPa at the bottom.",
)
]
]
#only("1")[
#voiceover("Here's a graph showing how pressure increases with depth in the dam. The blue line represents the pressure at different depths, and the red text shows the calculated pressure at the bottom of the dam, which is 98.1 kilopascals.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
- Pressure in a fluid depends on depth, density, and gravity
- Pressure increases linearly with depth
- At a depth of 10 m in water, the pressure is 98,100 Pa (98.1 kPa)
#only("1")[
#voiceover("In summary, the key points to remember are that pressure in a fluid depends on the depth, density of the fluid, and acceleration due to gravity. Pressure increases linearly with depth, and at a depth of 10 meters in water, the pressure is 98,100 Pascals or 98.1 kilopascals.")
]
]