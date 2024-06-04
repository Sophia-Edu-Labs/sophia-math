#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potential Energy 🌊]
#v(40pt)
#only("1-")[- Given: Height $h = 25$ m, Mass flow rate $dot(m) = 1000$ kg/s]
#v(20pt)
#only("2-")[- Formula: $E = m dot g dot h$]
#v(20pt)
#only("3-")[- Solve: $E = 1000 dot 9.81 dot 25 = 245250$ J]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step. We are given that the height is 25 meters and the mass flow rate is 1000 kilograms per second.")
]
#only("2")[
#voiceover("The formula for potential energy is E equals m times g times h, where m is the mass, g is the acceleration due to gravity, and h is the height.")
]
#only("3")[
#voiceover("Plugging in the values, we get E equals 1000 times 9.81 times 25, which equals 245,250 joules. So the potential energy of the water is 245,250 joules.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Define the data
height = 25
mass_flow_rate = 1000
gravity = 9.81
potential_energy = mass_flow_rate * gravity * height

# Create the bar chart
ax.bar(1, potential_energy, width=0.4, color='skyblue', label='Potential Energy')

# Add labels and title
ax.set_ylabel('Energy (Joules)')
ax.set_title('Potential Energy of Water')
ax.set_xticks([])

# Add the calculated value as text
ax.text(1, potential_energy + 5000, f'{potential_energy:,.0f} J', ha='center')

# Add legend
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
// The bar chart visualizes the calculated potential energy
#only("1")[
#voiceover("Here's a visual representation of the potential energy we just calculated. The bar shows the 245,250 joules of potential energy that the water has at a height of 25 meters with a mass flow rate of 1000 kilograms per second.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Potential energy depends on mass, height, and gravity]
#v(20pt)
#only("2-")[- Formula: $E = m dot g dot h$ 📜]
#v(20pt)
#only("3-")[- Units: Joules (J) ⚡]
// The key takeaways are shown one by one
#only("1")[
#voiceover("The key things to remember are that potential energy depends on the mass, the height, and the acceleration due to gravity.")
]
#only("2")[
#voiceover("The formula to calculate potential energy is E equals m times g times h.")
]
#only("3")[
#voiceover("And the unit of potential energy is joules, symbolized by the letter J.")
]
]