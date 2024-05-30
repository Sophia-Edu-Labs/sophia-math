#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Suction Cup]
#v(40pt)
#only("1-")[Why does a suction cup stick to the wall when pressed against it?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) The vacuum inside sucks it to the wall.]#only("2-")[#text(fill:red)[a) The vacuum inside sucks it to the wall.]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) The ambient pressure pushes the suction cup against the wall.]#only("3-")[#text(fill:green)[b) The ambient pressure pushes the suction cup against the wall.]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) The plastic adheres to the smooth wall surface.]#only("4-")[#text(fill:red)[c) The plastic adheres to the smooth wall surface.]]

#only("1")[#voiceover("Excellent choice! You're absolutely right.")]
#only("2")[#voiceover("Option a) is incorrect. While there is indeed a vacuum or lower pressure inside the suction cup, it's not actively 'sucking' the cup to the wall.")]
#only("3")[#voiceover("Option b) is the correct answer. The ambient air pressure, which is higher than the pressure inside the suction cup, is what pushes the suction cup against the wall.")]
#only("4")[#voiceover("Option c) is also incorrect. While the smoothness of the surfaces does help create a better seal, it's not the main reason the suction cup sticks.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. When the suction cup is pressed against the wall, most of the air is expelled from inside the cup. 🌬]
#v(20pt)
#only("2-")[2. This creates a partial vacuum (lower pressure) inside the cup compared to the ambient air pressure outside. 📉]
#v(20pt)
#only("3-")[3. The higher ambient air pressure then pushes the suction cup against the wall, keeping it in place. 🌫️ → 🏗️]
#v(20pt)
#only("4-")[4. The smooth surfaces of the suction cup and wall help maintain the pressure difference by preventing air from leaking back in. 🚫💨]

#only("1")[#voiceover("Here's a step-by-step breakdown of how a suction cup works:")]
#only("1")[#voiceover("First, when you press the suction cup against the wall, most of the air inside the cup is pushed out.")]
#only("2")[#voiceover("This creates a partial vacuum, meaning the pressure inside the cup is now lower than the air pressure outside.")]
#only("3")[#voiceover("Due to this pressure difference, the higher ambient air pressure pushes the suction cup against the wall, holding it in place.")]
#only("4")[#voiceover("The smooth surfaces of the suction cup and wall help to maintain the seal by preventing air from leaking back into the space inside the cup.")]
#only("4")[#voiceover("So in summary, it's the difference in air pressure, with the higher outside pressure pushing against the lower pressure inside the cup, that makes the suction cup stick to the wall.")]
]