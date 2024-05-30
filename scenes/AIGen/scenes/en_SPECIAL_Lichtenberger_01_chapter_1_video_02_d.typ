#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure]
#v(40pt)
A faucet is located 10 m below the water surface in a reservoir. What is the water pressure at the faucet?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) 0.01 bar]#only("2-")[#text(fill:red)[a) 0.01 bar]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) 0.1 bar]#only("3-")[#text(fill:red)[b) 0.1 bar]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) 1 bar]#only("4-")[#text(fill:green)[c) 1 bar]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) 10 bar]#only("5-")[#text(fill:red)[d) 10 bar]]

#only("1")[#voiceover("Incorrect, but don't worry! Here's the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- Water pressure increases by about 1 bar for every 10 meters of depth 🌊]
#v(20pt)
#only("2-")[- The faucet is 10 m below the surface]
#v(20pt)
#only("3-")[- So the pressure at the faucet is: $"pressure" = "depth" times 1 "bar"/10 "m" = 10 "m" times 1 "bar"/10 "m" = 1 "bar"$]

#only("1")[#voiceover("Let's see why 1 bar is the correct answer. Remember, water pressure increases by about 1 bar for every 10 meters of depth.")]
#only("2")[#voiceover("In this problem, the faucet is located 10 meters below the water surface.")]
#only("3")[#voiceover("So to calculate the pressure, we multiply the depth of 10 meters by the pressure increase rate of 1 bar per 10 meters. This gives us a pressure of 1 bar at the faucet.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8, 6))

ax.set_xlim(0, 2)
ax.set_ylim(0, 12)

ax.set_xlabel('Pressure (bar)')
ax.set_ylabel('Depth (m)')

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

ax.plot([0, 1], [0, 10], color='blue', linewidth=2)
ax.scatter(1, 10, color='red', s=100, zorder=10)

ax.annotate('Surface', xy=(0, 0), xytext=(-0.5, 0.5), 
            arrowprops=dict(facecolor='black', shrink=0.05))

ax.annotate('Faucet', xy=(1, 10), xytext=(1.1, 9.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual representation:]
#v(20pt)
#only("2-")[- The depth is on the y-axis, the pressure on the x-axis 📏]
#only("3-")[- The #text(fill:blue)[blue line] shows how pressure increases with depth 📈]
#only("4-")[- The #text(fill:red)[red dot] marks the faucet at 10 m depth and 1 bar pressure 🔴]

#only("1")[#voiceover("Let's visualize this problem to better understand it.")]
#only("2")[#voiceover("In this graph, the depth is represented on the y-axis and the pressure on the x-axis.")]
#only("3")[#voiceover("The blue line illustrates how the pressure increases as we go deeper.")]
#only("4")[#voiceover("And the red dot pinpoints the location of the faucet, at a depth of 10 meters where the pressure is 1 bar. This graph clearly shows the linear relationship between depth and pressure in water.")]
]