#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Balloon Physics 🎈]

#v(40pt)

#only("2-")[- Buoyancy force 🔼 vs. Weight ⏬]
// The concept of buoyancy force vs weight is shown from slide 2 onward

#only("2")[
#voiceover("For the balloon to hover at a constant height, there must be a balance between two forces: the upward buoyancy force and the downward weight of the balloon.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Condition for Hovering ⏸]

#v(40pt)

#only("1-")[- Buoyancy force = Weight]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Mathematically]]]

#v(10pt)

#only("3-")[$ F_"buoyancy" = F_"weight" $]

#only("1")[#voiceover("The condition for hovering is that the buoyancy force must be equal to the weight of the balloon.")]

#only("2")[#voiceover("We can express this mathematically.")]

#only("3")[#voiceover("The buoyancy force, F sub buoyancy, must equal the weight force, F sub weight.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Buoyancy Force 🔼]

#v(40pt)

#only("1-")[- Depends on volume of displaced air 🌬]
// The dependency of buoyancy force on displaced air volume is shown from slide 1 onward

#v(10pt)

#only("2-")[- Increases with balloon volume 📈]
// The relationship between buoyancy force and balloon volume is shown from slide 2 onward

#only("1")[#voiceover("The buoyancy force depends on the volume of air displaced by the balloon. It's the upward force exerted by the air on the balloon.")]

#only("2")[#voiceover("As the balloon's volume increases, it displaces more air, and thus the buoyancy force increases.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Weight Force ⏬]

#v(40pt)

#only("1-")[- Depends on mass of balloon 🪨]
// The dependency of weight force on balloon mass is shown from slide 1 onward

#v(10pt)

#only("2-")[- Constant for a given balloon 📏]
// The constancy of weight force for a given balloon is shown from slide 2 onward

#only("1")[#voiceover("The weight force, on the other hand, depends on the mass of the balloon, including the gas inside it.")]

#only("2")[#voiceover("For a given balloon, the weight force is constant, as the mass doesn't change.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary 📝]

#v(40pt)

#only("1-")[- Buoyancy force 🔼 = Weight force ⏬]
// The condition for hovering is reiterated from slide 1 onward

#v(10pt)

#only("2-")[- Achieved by adjusting balloon volume 🎈📏]
// The method of achieving hovering is shown from slide 2 onward

#only("1")[#voiceover("In summary, for the balloon to hover, the buoyancy force must equal the weight force.")]

#only("2")[#voiceover("This condition is met by adjusting the volume of the balloon. When the volume is such that the buoyancy force matches the weight, the balloon will hover at a constant height.")]

]