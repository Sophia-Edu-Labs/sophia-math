#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[City Water Supply System]
#v(40pt)
What factor most affects the pressure in a city water supply system? 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) Temperature]#only("2-")[#text(fill:red)[a) Temperature]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) Pipe material]#only("3-")[#text(fill:red)[b) Pipe material]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Elevation difference]#only("4-")[#text(fill:green)[c) Elevation difference]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Water hardness]#only("5-")[#text(fill:red)[d) Water hardness]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Temperature does not significantly affect water pressure in a city supply system.")]
#only("3")[#voiceover("Pipe material also does not have a major impact on water pressure.")]
#only("4")[#voiceover("Elevation difference is indeed the key factor. Water pressure decreases as elevation increases, due to the work done against gravity.")]
#only("5")[#voiceover("Water hardness, while it can affect pipes over time, does not directly influence water pressure.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Here's why elevation difference is the key factor: 🗻]
#v(20pt)
#only("2-")[- Water pressure is caused by the weight of the water 💧]
#only("3-")[- The higher the water column, the greater the pressure at the bottom 📏]
#only("4-")[- This is described by the hydrostatic pressure equation: $p = rho g h$ 📜]
#only("5-")[  where $p$ is pressure, $rho$ is water density, $g$ is gravity, and $h$ is height]
#only("1")[#voiceover("Let's understand why elevation difference is the most important factor affecting water pressure in a city supply system.")]
#only("2")[#voiceover("Water pressure is fundamentally caused by the weight of the water above.")]
#only("3")[#voiceover("The taller the column of water, the greater the pressure at the bottom due to the increased weight of water.")]
#only("4")[#voiceover("This relationship is described by the hydrostatic pressure equation: pressure equals density times gravity times height.")]
#only("5")[#voiceover("In this equation, p represents pressure, rho is the density of water, g is the acceleration due to gravity, and h is the height of the water column.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8, 6))

# Draw the ground
ax.plot([-1, 11], [0, 0], 'k', linewidth=2)

# Draw the reservoir
ax.add_patch(plt.Rectangle((0, 0), 4, 10, fill=True, color='skyblue'))

# Draw the pipes
pipe_x = [4, 4, 6, 6, 8, 8]
pipe_y = [10, 4, 4, 2, 2, 0]
ax.plot(pipe_x, pipe_y, 'k', linewidth=2)

# Draw the buildings
ax.add_patch(plt.Rectangle((5.7, 0), 0.6, 4, fill=True, color='tan'))
ax.add_patch(plt.Rectangle((7.7, 0), 0.6, 2, fill=True, color='tan'))

# Add labels
ax.text(2, 11, 'Reservoir', ha='center')
ax.text(5, 4.5, 'Building 1', ha='center')
ax.text(7, 2.5, 'Building 2', ha='center')

# Add pressure arrows
ax.arrow(6, 1, 0, -0.5, head_width=0.2, head_length=0.2, fc='r', ec='r')
ax.arrow(8, 0.5, 0, -0.3, head_width=0.2, head_length=0.2, fc='r', ec='r')

ax.set_xlim(-1, 11)
ax.set_ylim(-1, 12)
ax.set_aspect('equal')
ax.axis('off')

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[In this diagram:]
#v(20pt)
#only("2-")[- The reservoir is at the highest elevation 🌊]
#only("3-")[- Water flows downhill through the pipes to the buildings 🏙️]
#only("4-")[- The pressure (red arrows) is highest in the lowest building 🔽]
#only("5-")[This is because it has the tallest column of water above it 📏]
#only("1")[#voiceover("Let's visualize this concept with a simple city water supply system.")]
#only("2")[#voiceover("The water reservoir is located at the highest elevation.")]
#only("3")[#voiceover("Water flows downhill through a network of pipes to reach the buildings in the city.")]
#only("4")[#voiceover("The water pressure, indicated by the red arrows, is highest in the building at the lowest elevation.")]
#only("5")[#voiceover("This is because this building has the tallest column of water above it, exerting the greatest pressure.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Elevation difference is the key factor affecting water pressure in a city supply system 🗻]
#v(20pt)
#only("2-")[- This is due to the hydrostatic pressure equation: $p = rho g h$ 📜]
#v(20pt) 
#only("3-")[- The taller the water column, the greater the pressure at the bottom 📏]
#v(20pt)
#only("4-")[- Other factors like temperature, pipe material, and water hardness have minimal impact 🌡️🔧💧]
#only("1")[#voiceover("In summary, elevation difference is the primary factor influencing water pressure in a city supply system.")]
#only("2")[#voiceover("This is a direct consequence of the hydrostatic pressure equation, which states that pressure is proportional to the height of the water column.")]
#only("3")[#voiceover("The taller the column of water, the greater the pressure at the bottom due to the weight of the water above.")]
#only("4")[#voiceover("While factors like temperature, pipe material, and water hardness can have some effect, their impact is minimal compared to the overriding influence of elevation difference.")]
]