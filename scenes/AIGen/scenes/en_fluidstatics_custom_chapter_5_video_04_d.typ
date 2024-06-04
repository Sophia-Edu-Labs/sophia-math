#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Deep-Sea Diving Suit Material]
#v(40pt)
#only("1-")[Which material is most suitable for a deep-sea diving suit to withstand high pressures?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) Rubber]#only("2-")[#text(fill:red)[a) Rubber]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) Aluminum]#only("3-")[#text(fill:red)[b) Aluminum]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Steel]#only("4-")[#text(fill:green)[c) Steel]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Plastic]#only("5-")[#text(fill:red)[d) Plastic]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Steel?]
#v(40pt)  
#only("1-")[Steel is the most suitable material because:]
#v(20pt)
#only("2-")[- High strength 💪]
#v(10pt)  
#only("3-")[- Resistant to high pressures 🌊]
#v(10pt)
#only("4-")[- Durable and long-lasting 🕰️]

#only("1")[#voiceover("Let's understand why steel is the best choice for deep-sea diving suits.")]
#only("2")[#voiceover("First, steel has high strength. It can withstand the immense forces at deep sea levels without deforming or breaking.")]
#only("3")[#voiceover("Second, steel is resistant to high pressures. The pressure underwater increases by about 1 atmosphere for every 10 meters of depth. Steel can handle these extreme pressures.")]  
#only("4")[#voiceover("Lastly, steel is durable and long-lasting. Deep-sea diving suits need to be reliable and able to withstand repeated use in harsh conditions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Not the Others?]
#v(40pt)
#only("1-")[Rubber, aluminum, and plastic are not as suitable because:]
#v(20pt)  
#only("2-")[- Lower strength compared to steel 🫘]
#v(10pt)
#only("3-")[- May deform or break under high pressures 💥]
#v(10pt)  
#only("4-")[- Less durable and may degrade over time 📉]

#only("1")[#voiceover("Now, let's see why the other materials are not as suitable.")]
#only("2")[#voiceover("Rubber, aluminum, and plastic all have lower strength compared to steel. They may not be able to withstand the forces at deep sea levels.")]
#only("3")[#voiceover("Under high pressures, these materials may deform or even break. This could be catastrophic for a deep-sea diver.")]
#only("4")[#voiceover("Lastly, these materials are generally less durable than steel and may degrade over time, especially when exposed to saltwater and high pressures repeatedly.")]  
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[In summary:]
#v(20pt)
#only("2-")[- Steel is the most suitable material for deep-sea diving suits 🤿]
#v(10pt)  
#only("3-")[- It has high strength, resists high pressures, and is durable 🦾]
#v(10pt)
#only("4-")[- Other materials like rubber, aluminum, and plastic are less suitable 🚫]

#only("1")[#voiceover("To conclude...")]
#only("2")[#voiceover("Steel is the most suitable material for deep-sea diving suits due to its unique properties.")]
#only("3")[#voiceover("Its high strength, resistance to high pressures, and durability make it ideal for the extreme conditions of deep-sea diving.")]
#only("4")[#voiceover("While rubber, aluminum, and plastic have their uses, they are less suitable for this specific application.")]
]