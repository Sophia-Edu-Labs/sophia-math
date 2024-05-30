#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What is Pressure? 🌡️]
// The title "What is Pressure?" is shown on all slides
#v(40pt)
#only("2-")[- Force exerted per unit area]
// The definition of pressure is shown from slide 2 onward
#v(20pt)
#only("3-")[- Formula: $P = F/A$]
// The formula for pressure is shown from slide 3 onward
#v(20pt)
#only("4-")[- Influenced by environment and depth]
// The factors influencing pressure are shown from slide 4 onward
#only("1")[
#voiceover("In this video, we will explore the concept of pressure and the factors that influence it.")
]
#only("2")[
#voiceover("Pressure is defined as the force exerted per unit area. In other words, it's a measure of how much force is applied over a given surface area.")
]
#only("3")[
#voiceover("Mathematically, pressure is represented by the formula P equals F divided by A, where P is pressure, F is force, and A is area.")
]
#only("4")[
#voiceover("Pressure can be influenced by various factors, such as the environment and depth. Let's take a closer look at these factors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Environmental Factors 🌍]
#v(40pt)
#only("1-")[- Atmospheric pressure decreases with altitude]
#v(20pt)
#only("2-")[- Example: Pressure at sea level vs. mountain top 🏔️]
#only("1")[
#voiceover("One of the environmental factors that affects pressure is altitude. As you go higher in elevation, atmospheric pressure decreases.")
]
#only("2")[
#voiceover("For example, the atmospheric pressure at sea level is significantly higher than the pressure at the top of a mountain. This is why your ears may pop when you change altitudes rapidly.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Depth and Pressure 🌊]
#v(40pt)
#only("1-")[- Pressure increases with depth in fluids (water, air)]
#v(20pt)
#only("2-")[- Example: Pressure at ocean surface vs. deep sea 🐟]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
depth = np.linspace(0, 10, 100)
pressure = depth * 10

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(depth, pressure, color='blue')
plt.xlabel('Depth (m)')
plt.ylabel('Pressure (kPa)')
plt.title('Pressure vs. Depth in Water')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: "Pressure increases linearly with depth in water",
)
]
]
]
#only("1")[
#voiceover("Another factor that influences pressure is depth, particularly in fluids like water or air. As you go deeper into a fluid, the pressure increases.")
]
#only("2")[
#voiceover("For instance, the pressure at the surface of the ocean is much lower than the pressure in the deep sea. This is why deep-sea creatures are adapted to withstand high pressures.")
]
#only("3")[
#voiceover("This graph illustrates how pressure increases linearly with depth in water. The deeper you go, the higher the pressure becomes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("1-")[- Pressure = Force / Area]
// The summary point about the definition of pressure is shown from slide 1 onward
#v(20pt)
#only("2-")[- Influenced by environment (altitude) and depth]
// The summary point about factors influencing pressure is shown from slide 2 onward
#v(20pt)
#only("3-")[- Understanding pressure is crucial in various fields 🌍🚀🌊]
// The summary point about the importance of understanding pressure is shown from slide 3 onward
#only("1")[
#voiceover("In summary, pressure is defined as force per unit area and can be calculated using the formula P equals F divided by A.")
]
#only("2")[
#voiceover("Pressure is influenced by environmental factors like altitude, where atmospheric pressure decreases as you go higher, and by depth in fluids, where pressure increases as you go deeper.")
]
#only("3")[
#voiceover("Understanding the concept of pressure and the factors that affect it is crucial in various fields, such as meteorology, aviation, and marine biology.")
]
]