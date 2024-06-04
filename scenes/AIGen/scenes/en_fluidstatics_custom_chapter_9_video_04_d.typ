#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Environmental Concerns]
#v(40pt)
What is a common environmental concern associated with hydroelectric power plants?
#v(40pt)

// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Air pollution]#only("2-")[#text(fill:red)[a) Air pollution]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Noise pollution]#only("3-")[#text(fill:red)[b) Noise pollution]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Habitat disruption]#only("4-")[#text(fill:green)[c) Habitat disruption]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Greenhouse gas emissions]#only("5-")[#text(fill:red)[d) Greenhouse gas emissions]]

#only("1")[#voiceover("Let's review the correct solution.")]
#only("2")[#voiceover("Air pollution is not a major concern with hydroelectric power plants, as they do not emit pollutants into the air like fossil fuel plants do.")]
#only("3")[#voiceover("Noise pollution is also not a significant issue. While there may be some noise during construction, operational noise is generally low.")]
#only("4")[#voiceover("However, habitat disruption is a real concern. Building dams can flood large areas, altering ecosystems and displacing wildlife.")]  
#only("5")[#voiceover("Greenhouse gas emissions are minimal with hydropower, as it is a renewable energy source that does not involve burning fossil fuels.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Habitat Disruption]
#v(40pt)
How do hydroelectric dams disrupt habitats? 🌿🦌
#v(20pt)

#only("1-")[- Flooding of land areas 🌊]
#only("2-")[- Alteration of river ecosystems 🐟]
#only("3-")[- Blocking of fish migration routes 🐠]
#only("4-")[- Changes in water temperature and oxygen levels 🌡]

#only("1")[#voiceover("First, the creation of reservoirs behind dams floods large areas of land, which can destroy forests, wetlands, and other habitats.")]
#only("2")[#voiceover("Second, dams alter the natural flow of rivers, changing the ecosystem for aquatic plants and animals downstream.")]
#only("3")[#voiceover("Third, dams can block the migration routes of fish, preventing them from reaching spawning grounds.")]
#only("4")[#voiceover("Finally, dams can change water temperature and oxygen levels, which can harm aquatic life.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigation Strategies]
#v(40pt)
How can these impacts be mitigated? 🤔
#v(20pt)

#only("1-")[- Careful site selection 🗺]
#only("2-")[- Fish ladders and passages 🐟➡]
#only("3-")[- Maintaining minimum water flows 💧]
#only("4-")[- Habitat restoration efforts 🌳]

#only("1")[#voiceover("Careful site selection can help minimize the area flooded and avoid particularly sensitive habitats.")]
#only("2")[#voiceover("Fish ladders and passages can be built to allow fish to bypass the dam and reach their spawning grounds.")]  
#only("3")[#voiceover("Maintaining minimum water flows can help preserve downstream river ecosystems.")]
#only("4")[#voiceover("And habitat restoration efforts can help mitigate the impacts of habitat loss.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hydroelectric dams can disrupt habitats through flooding, altering river ecosystems, blocking fish migration, and changing water conditions 🌊🐟]
#v(20pt)
#only("2-")[- Mitigation strategies include careful site selection, fish passages, maintaining water flows, and habitat restoration 🗺🐟➡🌳]
#v(20pt)
#only("3-")[- Environmental impacts must be carefully considered in hydropower development 🌿💭]

#only("1")[#voiceover("In summary, hydroelectric dams can significantly disrupt habitats in various ways.")]
#only("2")[#voiceover("However, there are strategies that can help mitigate these impacts.")]
#only("3")[#voiceover("It's important to carefully consider and address environmental concerns in the planning and operation of hydroelectric power plants.")]  
]