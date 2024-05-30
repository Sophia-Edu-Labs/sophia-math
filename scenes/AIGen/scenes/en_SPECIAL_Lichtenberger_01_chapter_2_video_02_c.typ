#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure Change with Depth]
#v(40pt)
The small fish dives from a depth of 10 m to a depth of 30 m. What happens to the pressure?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[b) It approximately triples.]#only("2-")[#text(fill:green)[b) It approximately triples.]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[a) It approximately doubles.]#only("3-")[#text(fill:red)[a) It approximately doubles.]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It approximately quadruples.]#only("4-")[#text(fill:red)[c) It approximately quadruples.]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It remains about the same.]#only("5-")[#text(fill:red)[d) It remains about the same.]]

#only("1")[#voiceover("Not quite. Let's go over the correct solution.")]
#only("2")[#voiceover("The pressure approximately triples as the fish dives from 10 m to 30 m depth.")]
#only("3")[#voiceover("The pressure does not just double, because the change in depth is more than doubling.")]
#only("4")[#voiceover("The pressure also does not quadruple, as the depth change is not quite that large.")]
#only("5")[#voiceover("And the pressure definitely does not remain the same, as it increases with depth.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[- Water pressure increases by about 1 bar for every 10 m of depth 🌊]
#v(20pt)
#only("2-")[- At 10 m depth: pressure $≈$ 1 bar]
#v(10pt)
#only("3-")[- At 30 m depth: pressure $≈$ 3 bar]
#v(20pt)
#only("4-")[- Pressure change: 3 bar $÷$ 1 bar = 3 times 📈]
#v(20pt)
#only("5-")[So, the pressure #text(weight: "bold")[approximately triples] as the fish dives from 10 m to 30 m depth. 🐠]

#only("1")[#voiceover("Let's break this down step by step. We know that water pressure increases by about 1 bar for every 10 meters of depth.")]
#only("2")[#voiceover("So at a depth of 10 meters, the pressure is approximately 1 bar.")]
#only("3")[#voiceover("And at a depth of 30 meters, the pressure is approximately 3 bar.")]
#only("4")[#voiceover("To find the change in pressure, we divide the pressure at 30 meters by the pressure at 10 meters. 3 divided by 1 equals 3, so the pressure has tripled.")]
#only("5")[#voiceover("Therefore, as the fish dives from 10 meters to 30 meters depth, the pressure it experiences approximately triples.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

depths = [0, 10, 20, 30, 40]
pressures = [0, 1, 2, 3, 4]

plt.figure(figsize=(8, 6))
plt.plot(pressures, depths, marker='o', markersize=8, linewidth=2, label='Pressure vs Depth')
plt.scatter([1], [10], color='blue', s=100, label='10 m depth')
plt.scatter([3], [30], color='red', s=100, label='30 m depth')

plt.xlabel('Pressure (bar)')
plt.ylabel('Depth (m)')
plt.title('Pressure Change with Depth in Water')
plt.grid(True)
plt.legend()
plt.gca().invert_yaxis()  # Invert y-axis to show depth increasing downwards
plt.show()
```,
width: 360pt),
)
]
]

#v(40pt)
#only("1-")[Here's a graph showing how pressure changes with depth in water. 📊]
#v(20pt)
#only("2-")[The #text(fill:blue)[blue point] represents 10 m depth, where pressure is about 1 bar.]
#v(20pt)
#only("3-")[The #text(fill:red)[red point] represents 30 m depth, where pressure is about 3 bar.]
#v(20pt)
#only("4-")[The pressure #text(weight: "bold")[triples] as depth #text(weight: "bold")[triples] from 10 m to 30 m. 🧮]

#only("1")[#voiceover("This graph visualizes how pressure changes with depth in water.")]
#only("2")[#voiceover("The blue point on the graph represents a depth of 10 meters, where the pressure is approximately 1 bar.")]
#only("3")[#voiceover("The red point represents a depth of 30 meters, where the pressure is approximately 3 bar.")]
#only("4")[#voiceover("As you can see, when the depth triples from 10 meters to 30 meters, the pressure also triples. This linear relationship between depth and pressure is a key concept in understanding underwater pressure changes.")]
]