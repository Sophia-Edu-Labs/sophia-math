#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Deep-Sea Diving Recap 🤿]
#v(40pt)
#only("1-")[- Significant pressure changes with depth 📈]
#v(20pt)
#only("2-")[- Buoyancy forces to manage 🎈]
#v(20pt)
#only("3-")[- Requires special materials 🦺]
#only("1")[
#voiceover("In deep-sea diving, divers experience significant changes in pressure as they go deeper. The pressure increases linearly with depth.")
]
#only("2")[
#voiceover("Divers also have to manage buoyancy forces. The buoyant force acting on a diver depends on the volume of water displaced by the diver.")
]  
#only("3")[
#voiceover("To withstand these high pressures and manage buoyancy, deep-sea diving suits require special materials like steel that can handle the extreme conditions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure at Depth 🌊]
#v(40pt)
#only("1-")[$ p = rho dot g dot h $]
#v(20pt)
#only("2-")[where:
- $ rho $ = density of seawater (1020 kg/m³)
- $ g $ = acceleration due to gravity (9.81 m/s²)
- $ h $ = depth (m)]  
#only("1")[
#voiceover("The pressure at a given depth in seawater can be calculated using the formula p equals rho times g times h.")
]
#only("2")[
#voiceover("Here, rho is the density of seawater, which is about 1020 kilograms per cubic meter, g is the acceleration due to gravity, 9.81 meters per second squared, and h is the depth in meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyant Force 🎈]
#v(40pt)  
#only("1-")[$ F_A = rho dot V dot g $]
#v(20pt)
#only("2-")[where:
- $ rho $ = density of seawater (1020 kg/m³)  
- $ V $ = volume of displaced water (m³)
- $ g $ = acceleration due to gravity (9.81 m/s²)]
#only("1")[
#voiceover("The buoyant force acting on a diver can be calculated using the formula F sub A equals rho times V times g.")
]
#only("2")[
#voiceover("Here, rho is again the density of seawater, V is the volume of water displaced by the diver in cubic meters, and g is the acceleration due to gravity.")
]  
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Pressure increases with depth in seawater 🌊📈]
#v(20pt)  
#only("2-")[- Buoyancy depends on displaced water volume 🎈]
#v(20pt)
#only("3-")[- Special materials needed for deep-sea gear 🦺💪]
#only("1")[
#voiceover("The key takeaways are: Pressure increases linearly with depth in seawater.")
]
#only("2")[  
#voiceover("The buoyant force depends on the volume of water displaced by the diver.")
]
#only("3")[
#voiceover("And special materials are needed for deep-sea diving gear to withstand the high pressures and manage buoyancy in these extreme conditions.")
]
]