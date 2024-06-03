#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Problem Setup]

#v(40pt)

#only("2-")[- Wooden board floats in a water-filled bucket 🪣]
#only("3-")[- Cup of water on the board 🥛]

#only("2")[
#voiceover("We have a wooden board floating in a bucket filled with water.")
]

#only("3")[
#voiceover("There's also a cup of water on the board.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1]

#v(40pt)

#only("1-")[- Pour water from cup into the bucket 💧]

#only("1")[
#voiceover("First, we pour the water from the cup into the bucket.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2]

#v(40pt)

#only("1-")[- Place empty cup back on the board 🥤]

#only("1")[
#voiceover("Then, we place the empty cup back on the board.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Result]

#v(40pt)

#only("1-")[- Water level remains the same 🌊]

#only("1")[
#voiceover("The water level in the bucket remains the same. This is because the water displaced by the cup when it was full is now directly in the bucket. The empty cup displaces less water, but the extra water from the cup compensates for this.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]

#v(40pt)

#only("1-")[- Archimedes' principle: buoyant force equals weight of displaced fluid 🚢]
#only("2-")[- Weight of water in cup = weight of water displaced by full cup 🎚️]
#only("3-")[- Pouring water into bucket + empty cup on board = no change in displaced water 🌊]

#only("1")[
#voiceover("This can be understood through Archimedes' principle, which states that the buoyant force on an object is equal to the weight of the fluid displaced by the object.")
]

#only("2")[
#voiceover("The weight of the water in the cup is equal to the weight of the water displaced by the full cup when it was on the board.")
]

#only("3")[
#voiceover("By pouring the water into the bucket and placing the empty cup back on the board, we are not changing the total amount of water displaced. Therefore, the water level remains constant.")
]
]