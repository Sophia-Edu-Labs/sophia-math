#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Total Force on Container Bottom]
#v(40pt)
In which container is the total force of the water on the bottom the greatest?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) A]#only("2-")[#text(fill:red)[a) A]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) B]#only("3-")[#text(fill:red)[b) B]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) C]#only("4-")[#text(fill:green)[c) C]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) All the same]#only("5-")[#text(fill:red)[d) All the same]]

#only("1")[#voiceover("Great job! You selected the correct answer. Let's see why option c is indeed correct.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[
- Three containers with different shapes
- Same amount of water in each container
]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

# Container A
ax1.set_title('Container A')
ax1.set_xlim(0, 10)
ax1.set_ylim(0, 10)
ax1.set_aspect('equal')
ax1.add_patch(plt.Rectangle((2, 2), 6, 6, fill=False))
ax1.add_patch(plt.Rectangle((2, 2), 6, 3, color='blue'))
ax1.text(5, 1, 'Water', ha='center')

# Container B
ax2.set_title('Container B')
ax2.set_xlim(0, 10)
ax2.set_ylim(0, 10)
ax2.set_aspect('equal')
ax2.add_patch(plt.Rectangle((2, 2), 6, 6, fill=False))
ax2.add_patch(plt.Rectangle((2, 2), 6, 4, color='blue'))
ax2.text(5, 1, 'Water', ha='center')

# Container C
ax3.set_title('Container C')
ax3.set_xlim(0, 10)
ax3.set_ylim(0, 10)
ax3.set_aspect('equal')
ax3.add_patch(plt.Rectangle((2, 2), 6, 6, fill=False))
ax3.add_patch(plt.Rectangle((2, 2), 6, 5, color='blue'))
ax3.text(5, 1, 'Water', ha='center')

plt.tight_layout()
plt.show()
```,
width: 480pt),
)
]
]
#only("1")[#voiceover("We are given three containers, A, B, and C, each with a different shape but containing the same amount of water.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Total Force on Bottom]
#v(40pt)
#only("1-")[Total force = Pressure × Area]
#v(20pt)
#only("2-")[Pressure = $rho × g × h$]
#v(20pt)
#only("3-")[- $rho$ = density of water]
#only("3-")[- $g$ = acceleration due to gravity]
#only("3-")[- $h$ = height of water column]
#v(20pt)
#only("4-")[Area = area of container bottom]

#only("1")[#voiceover("The total force on the bottom of a container is equal to the pressure multiplied by the area of the bottom.")]
#only("2")[#voiceover("The pressure is given by the product of the density of water, the acceleration due to gravity, and the height of the water column.")]
#only("3")[#voiceover("Here, rho represents the density of water, g is the acceleration due to gravity, and h is the height of the water column.")]
#only("4")[#voiceover("The area in the equation refers to the area of the container's bottom.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Comparing Containers]
#v(40pt)
#only("1-")[- Same $rho$ and $g$ for all containers]
#v(20pt)
#only("2-")[- Different $h$ and Area for each container]
#v(20pt)
#only("3-")[- Container C has the greatest $h$]
#v(20pt)
#only("4-")[- Container C also has the greatest Area]
#v(20pt)
#only("5-")[Therefore, Container C has the greatest total force on the bottom 💪]

#only("1")[#voiceover("When comparing the containers, we note that the density of water and the acceleration due to gravity are the same for all of them.")]
#only("2")[#voiceover("However, the height of the water column and the area of the bottom differ for each container.")]
#only("3")[#voiceover("Looking at the given information, we see that Container C has the greatest height of the water column.")]
#only("4")[#voiceover("Additionally, Container C also has the greatest area of the bottom.")]
#only("5")[#voiceover("Since both the height and the area are greatest for Container C, it will have the greatest total force acting on its bottom.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Total force depends on pressure and area 📏]
#v(20pt)
#only("2-")[- Pressure depends on water height 📈]
#v(20pt)
#only("3-")[- Container C has the greatest water height and bottom area 🥇]
#v(20pt)
#only("4-")[Therefore, Container C experiences the greatest total force on its bottom 🎉]

#only("1")[#voiceover("In summary, the total force on the bottom of a container depends on the pressure and the area of the bottom.")]
#only("2")[#voiceover("The pressure, in turn, depends on the height of the water column.")]
#only("3")[#voiceover("Among the given containers, Container C has both the greatest water height and the largest bottom area.")]
#only("4")[#voiceover("Consequently, Container C experiences the greatest total force on its bottom. Well done on selecting the correct answer!")]
]