#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("That's not quite right. Let's go through the solution step by step to understand why steel ships float despite steel being denser than water.")
]

#text(size: 30pt, weight: "bold")[Why Steel Ships Float 🚢]

#v(40pt)

#only("2-")[- Steel density: $p_"steel" = 7.8 g/"cm"^3$ > Water density: $p_"water" = 1 g/"cm"^3$]
// The densities of steel and water are shown from slide 2 onward

#only("2")[
#voiceover("First, let's note that steel has a density of 7.8 grams per cubic centimeter, which is greater than water's density of 1 gram per cubic centimeter.")
]

]


#slide()[

#only("1")[
#voiceover("The key to understanding why steel ships float lies in the concept of buoyancy. Buoyancy is an upward force exerted by a fluid on an object immersed in it.")
]

#text(size: 30pt, weight: "bold")[Buoyancy 🌊]

#v(40pt)

#only("1-")[- Upward force exerted by fluid on immersed object]
// The definition of buoyancy is shown from slide 1 onward

#only("2-")[- Depends on volume of fluid displaced]
// The dependence of buoyancy on displaced fluid volume is shown from slide 2 onward

#only("3-")[- Archimedes' principle: $F_"buoyant" = p_"fluid" * g * V_"displaced"$]
// Archimedes' principle is shown from slide 3 onward

#only("2")[
#voiceover("The magnitude of the buoyant force depends on the volume of the fluid displaced by the object.")
]

#only("3")[
#voiceover("This is described by Archimedes' principle, which states that the buoyant force equals the density of the fluid times the acceleration due to gravity times the volume of fluid displaced.")
]

]

#slide()[

#only("1")[
#voiceover("Now, let's consider the case of a steel ship. Although steel is denser than water, ships are designed to displace a large volume of water.")
]

#text(size: 30pt, weight: "bold")[Steel Ships 🚢]

#v(40pt)

#only("1-")[- Designed to displace large volume of water]
// The design of steel ships to displace large water volumes is shown from slide 1 onward

#only("2-")[- Hollow structure with air inside]
// The hollow structure of steel ships is shown from slide 2 onward

#only("3-")[- Average density < Water density]
// The average density of steel ships being less than water density is shown from slide 3 onward

#only("2")[
#voiceover("This is achieved by creating a hollow structure with air inside, which significantly increases the volume without adding much mass.")
]

#only("3")[
#voiceover("As a result, the average density of the ship, including the air inside, is less than the density of water.")
]

]

#slide()[

#only("1")[
#voiceover("When the buoyant force equals the weight of the ship, the ship floats. This occurs when the mass of water displaced equals the mass of the ship.")
]

#text(size: 30pt, weight: "bold")[Floating Condition ⚖️]

#v(40pt)

#only("1-")[- $F_"buoyant" = W_"ship"$]
// The condition for floating is shown from slide 1 onward

#only("2-")[- $m_"displaced water" = m_"ship"$]
// The condition in terms of displaced water mass equaling ship mass is shown from slide 2 onward

#only("3-")[- $p_"water" * V_"displaced" = m_"ship"$]
// The condition expressed using water density and displaced volume is shown from slide 3 onward

#only("2")[
#voiceover("In other words, the mass of water displaced by the ship equals the mass of the ship itself.")
]

#only("3")[
#voiceover("This can be expressed as the density of water times the volume of water displaced equals the mass of the ship.")
]

]

#slide()[

#only("1")[
#voiceover("In summary, steel ships float because their design allows them to displace a volume of water with a mass equal to the ship's mass, despite steel being denser than water.")
]

#text(size: 30pt, weight: "bold")[Summary 📝]

#v(40pt)

#only("1-")[- Steel ships float due to buoyancy 🌊]
// The role of buoyancy in steel ships floating is shown from slide 1 onward

#only("2-")[- Designed to displace water mass equal to ship mass 🚢]
// The design of steel ships to displace water mass equal to ship mass is shown from slide 2 onward

#only("3-")[- Achieved through hollow structure and air inside 💨]
// The role of hollow structure and air in achieving the necessary displacement is shown from slide 3 onward

#only("2")[
#voiceover("This is achieved by designing the ship to displace a volume of water with a mass equal to the ship's own mass.")
]

#only("3")[
#voiceover("The hollow structure and air inside the ship make this possible, despite the high density of steel.")
]

]