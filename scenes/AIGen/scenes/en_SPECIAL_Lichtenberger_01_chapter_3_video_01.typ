#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy 🌊]
#v(40pt)
#only("1-")[- Upward force exerted by a fluid on an object 🎈]
#v(20pt)
#only("2-")[- Depends on object's density and volume 🧱📏]
#only("1")[
#voiceover("Buoyancy is the upward force exerted by a fluid, such as water, on an object immersed in it.")
]
#only("2")[
#voiceover("The strength of this buoyant force depends on the object's density and volume.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Density 🧱]
#v(40pt)
#only("1-")[- Mass per unit volume]
#v(20pt)
#only("2-")[- Formula: $"density" = "mass" / "volume"$]
#v(20pt)
#only("3-")[- Less dense objects float, denser objects sink 🪵⚓]
#only("1")[
#voiceover("Density is a measure of an object's mass per unit volume.")
]
#only("2")[
#voiceover("It can be calculated by dividing the object's mass by its volume.")
]
#only("3")[
#voiceover("Objects that are less dense than water, like wood, will float. Objects denser than water, like an anchor, will sink.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Volume 📏]
#v(40pt)
#only("1-")[- Amount of space an object occupies]
#v(20pt)
#only("2-")[- Larger volume → more water displaced → more buoyancy 🚢]
#only("1")[
#voiceover("Volume is the amount of space an object occupies.")
]
#only("2")[
#voiceover("A larger volume means more water is displaced, resulting in a greater buoyant force. This is why large ships can float despite being made of dense materials.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Principle 🏛]
#v(40pt)
#only("1-")[- Buoyant force = weight of displaced fluid]
#v(20pt)
#only("2-")[- $F_("buoyant") = "density_"("fluid") dot "volume_"("displaced") dot g$]
#only("1")[
#voiceover("Archimedes' principle states that the buoyant force on an object is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("Mathematically, the buoyant force equals the density of the fluid multiplied by the volume of fluid displaced, multiplied by the acceleration due to gravity.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Floating vs. Sinking 🎈⚓]
#v(40pt)
#only("1-")[- Object floats if $F_("buoyant") >= F_("gravity")$]
#v(20pt)
#only("2-")[- Object sinks if $F_("buoyant") < F_("gravity")$]
#only("1")[
#voiceover("An object will float if the buoyant force is greater than or equal to the force of gravity on the object.")
]
#only("2")[
#voiceover("If the buoyant force is less than the force of gravity, the object will sink.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Buoyancy depends on density and volume 🧱📏]
#v(20pt)
#only("2-")[- Less dense, larger volume → more buoyancy 🚢]
#v(20pt)
#only("3-")[- Archimedes' principle: $F_("buoyant") = "density_"("fluid") dot "volume_"("displaced") dot g$ 🏛]
#only("1")[
#voiceover("In summary, an object's buoyancy in water depends on its density and volume.")
]
#only("2")[
#voiceover("Objects that are less dense and have a larger volume will experience more buoyancy.")
]
#only("3")[
#voiceover("This relationship is described by Archimedes' principle, which states that the buoyant force equals the density of the fluid multiplied by the volume of fluid displaced, multiplied by the acceleration due to gravity.")
]
]