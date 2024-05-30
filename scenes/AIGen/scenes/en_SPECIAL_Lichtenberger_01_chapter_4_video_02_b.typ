#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy]
#v(40pt)
#only("1-")[Three objects of equal size made of lead, iron, and styrofoam are fully submerged in water. For which object is the buoyant force greatest?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) For the iron object]#only("2-")[#text(fill:green)[b) For the styrofoam object]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) For the styrofoam object]#only("3-")[#text(fill:red)[a) For the iron object]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) For the lead object]#only("4-")[#text(fill:red)[c) For the lead object]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) For all equally]#only("5-")[#text(fill:red)[d) For all equally]]
#v(40pt)

#only("1")[#voiceover("That's right, great job! The buoyant force is indeed greatest for the styrofoam object. Let's see why...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy Depends on...]
#v(40pt)
#only("1-")[1️⃣ Volume of displaced fluid]
#v(20pt)
#only("2-")[2️⃣ Density of the object]
#v(40pt)

#only("1")[#voiceover("First, remember that buoyancy depends on the volume of fluid displaced by the submerged object. In this case, all objects are the same size, so they displace the same volume of water.")]

#only("2")[#voiceover("However, buoyancy also depends on the density of the object relative to the density of the fluid. The less dense the object, the greater the buoyant force acting on it.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Densities]
#v(40pt)
#only("1-")[
- Lead: 11.34 g/cm³ 🧱
- Iron: 7.874 g/cm³ 🪨 
- Styrofoam: 0.05 g/cm³ 🪶
]
#v(40pt)
#only("2-")[Density of water: 1 g/cm³ 💧]

#only("1")[#voiceover("Let's compare the densities of our objects. Lead has the highest density at 11.34 grams per cubic centimeter, followed by iron at 7.874 grams per cubic centimeter. Styrofoam has a very low density of only 0.05 grams per cubic centimeter.")]

#only("2")[#voiceover("Now, water has a density of 1 gram per cubic centimeter. Styrofoam is the only material less dense than water, which means it will experience the greatest upward buoyant force.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[
- Equal volume displaced 📏
- Styrofoam least dense 🪶
]
#v(40pt)
#only("2-")[⇒ Styrofoam experiences the greatest buoyant force 🎈]

#only("1")[#voiceover("In summary, while all objects displace the same volume of water, styrofoam is the least dense material, even less dense than water itself.")]

#only("2")[#voiceover("Therefore, the styrofoam object will experience the greatest upward buoyant force compared to the lead and iron objects. Well done on correctly identifying this!")]
]