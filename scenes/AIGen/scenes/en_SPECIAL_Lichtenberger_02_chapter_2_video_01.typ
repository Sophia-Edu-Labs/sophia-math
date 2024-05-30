#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy 🎈]
#v(40pt)
#only("1-")[- Upward force exerted by a fluid on an object 🌊]
#v(20pt)
#only("2-")[- Depends on object's volume and density 📦]
#v(20pt)
#only("3-")[- Also depends on fluid's density 💧]
#only("1")[
#voiceover("Buoyancy is the upward force exerted by a fluid on an object that is partially or fully submerged in it.")
]
#only("2")[
#voiceover("The magnitude of the buoyant force depends on the volume and density of the object.")
]
#only("3")[
#voiceover("It also depends on the density of the fluid in which the object is submerged.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Principle 🏛]
#v(40pt)
#only("1-")[$ F_"buoyant" = rho_"fluid" dot g dot V_"displaced" $]
#v(20pt)
#only("2-")[- $F_"buoyant"$: buoyant force (N) 🎈]
#v(10pt)
#only("3-")[- $rho_"fluid"$: density of the fluid (kg/m³) 💧]
#v(10pt)
#only("4-")[- $g$: acceleration due to gravity (m/s²) 🌍]
#v(10pt)
#only("5-")[- $V_"displaced"$: volume of fluid displaced (m³) 📏]
#only("1")[
#voiceover("Archimedes' principle states that the buoyant force on an object is equal to the weight of the fluid displaced by the object.")
]
#only("2")[
#voiceover("In the equation, F sub buoyant represents the buoyant force measured in Newtons.")
]
#only("3")[
#voiceover("Rho sub fluid is the density of the fluid, usually measured in kilograms per cubic meter.")
]
#only("4")[
#voiceover("g is the acceleration due to gravity, approximately 9.8 meters per second squared on Earth.")
]
#only("5")[
#voiceover("And V sub displaced is the volume of fluid displaced by the object, measured in cubic meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Floating and Sinking 🚢]
#v(40pt)
#only("1-")[- Object floats if $rho_"object" < rho_"fluid"$ 🏊‍♂️]
#v(20pt)
#only("2-")[- Object sinks if $rho_"object" > rho_"fluid"$ ⚓]
#v(20pt)
#only("3-")[- Neutral buoyancy if $rho_"object" = rho_"fluid"$ 🤿]
#only("1")[
#voiceover("An object will float if its density is less than the density of the fluid it is in.")
]
#only("2")[
#voiceover("On the other hand, if the object's density is greater than the fluid's density, it will sink.")
]
#only("3")[
#voiceover("If the object's density is equal to the fluid's density, it will achieve neutral buoyancy and remain submerged at any depth.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Buoyancy: upward force exerted by a fluid 🌊]
#v(20pt)
#only("2-")[- Depends on object's volume, object's density, and fluid's density 📦💧]
#v(20pt)
#only("3-")[- Archimedes' principle: $F_"buoyant" = rho_"fluid" dot g dot V_"displaced"$ 🏛]
#v(20pt)
#only("4-")[- Floating, sinking, or neutral buoyancy determined by relative densities 🚢]
#only("1")[
#voiceover("In summary, buoyancy is the upward force exerted by a fluid on an object.")
]
#only("2")[
#voiceover("The magnitude of the buoyant force depends on the object's volume, the object's density, and the fluid's density.")
]
#only("3")[
#voiceover("Archimedes' principle provides the equation to calculate the buoyant force.")
]
#only("4")[
#voiceover("Whether an object floats, sinks, or achieves neutral buoyancy is determined by comparing its density to the fluid's density.")
]
]