#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Floating House Design Recap 🏠]
#v(40pt)
#only("1-")[
- Buoyancy calculation 🌊
]
#v(20pt)
#only("2-")[
- Material selection 🪵
]
#v(20pt)
#only("3-")[
- Stability and floatation ⚓
]

#only("1")[
#voiceover("Designing a floating house involves careful calculation of the buoyant force needed to keep the house afloat. This is done by determining the volume of water displaced by the house, which equals the weight of the house divided by the density of water.")
]

#only("2")[
#voiceover("Selecting appropriate materials is crucial for constructing the floating platform. Foam is often the best choice due to its low density and high buoyancy.")
]

#only("3")[
#voiceover("To ensure stability and successful floatation, the surface area of the platform must be calculated based on the desired draft, or depth below the water surface. This is done by dividing the displaced water volume by the draft.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Formulas 📜]
#v(40pt)

#only("1-")[
$ V = m / rho $
#v(10pt)
Volume of displaced water
]

#v(20pt)

#only("2-")[
$ A = V / "draft" $
#v(10pt) 
Surface area of platform
]

#only("1")[
#voiceover("The key formula for calculating the volume of displaced water is V equals m divided by rho, where m is the mass of the floating house and rho is the density of water.")
]

#only("2")[
#voiceover("To determine the necessary surface area of the floating platform, the formula A equals V divided by the draft is used, where V is the displaced water volume and the draft is the desired depth of the platform below the water surface.")
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

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Draw water
water_level = 0
ax.axhline(water_level, color='blue', linewidth=2, label='Water Level')
ax.fill_between([-2, 2], water_level, -2, color='lightblue', alpha=0.3)

# Draw floating house
house_width = 1.5
house_height = 1
house_draft = 0.5
ax.add_patch(plt.Rectangle((-house_width/2, water_level - house_draft), house_width, house_height, edgecolor='black', facecolor='brown', linewidth=2, label='Floating House'))

# Add labels and legend
ax.set_xlabel('Width')
ax.set_ylabel('Height')
ax.set_title('Floating House Visualization')
ax.legend()

# Set axis limits
ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a simple visualization of a floating house. The blue line represents the water level, and the brown rectangle represents the floating house. The portion of the house below the water level is the draft, which determines the necessary surface area of the floating platform.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[
- Calculate buoyancy 📏
]
#v(20pt)
#only("2-")[
- Select appropriate materials 🔍
]
#v(20pt)
#only("3-")[
- Ensure stability and floatation 🚣
]

#only("1")[
#voiceover("In summary, when designing a floating house, it's essential to calculate the buoyant force by determining the volume of displaced water.")
]

#only("2")[
#voiceover("Selecting materials with low density and high buoyancy, such as foam, is key for constructing the floating platform.")
]

#only("3")[
#voiceover("Finally, to ensure stability and successful floatation, the surface area of the platform must be calculated based on the desired draft. By carefully considering these factors, a stable and buoyant floating house can be designed.")
]
]