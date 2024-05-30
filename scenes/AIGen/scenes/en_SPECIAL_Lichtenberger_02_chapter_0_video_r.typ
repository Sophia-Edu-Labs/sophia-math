#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulics Recap 🔧]
#v(40pt)
#only("1-")[- Hydraulic systems lift heavy objects using fluid pressure 🏋️]
#only("1")[
#voiceover("Hydraulic systems use fluid pressure to lift heavy objects.")
]
#v(20pt)
#only("2-")[- Key calculations involve force, area, and pressure 📏]
#only("2")[
#voiceover("The key calculations in hydraulics involve force, area, and pressure.")
]
#v(20pt)
#only("3-")[$ F = P dot A $]
#only("3")[
#voiceover("Force equals pressure times area.")
]
#v(20pt)
#only("4-")[$ P = F / A $]
#only("4")[
#voiceover("Pressure equals force divided by area.")
]
#v(20pt)
#only("5-")[- Pressure is transmitted uniformly in all directions in a fluid 🌊]
#only("5")[
#voiceover("Pressure is transmitted uniformly in all directions in a fluid.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Problem 🧩]
#v(40pt)
#only("1-")[A hydraulic lift raises a 6000 kg ship engine by 2.0 m.]
#only("1")[
#voiceover("Let's consider an example problem. A hydraulic lift raises a ship engine weighing 6000 kilograms by 2.0 meters.")
]
#v(20pt)
#only("2-")[- Pump piston area: 5.0 cm²]
#only("2")[
#voiceover("The pump piston has an area of 5.0 square centimeters.")
]
#v(10pt)
#only("3-")[- Press piston area: 400 cm²]
#only("3")[
#voiceover("The press piston has an area of 400 square centimeters.")
]
#v(20pt)
#only("4-")[Calculate:]
#only("4")[
#voiceover("We're asked to calculate:")
]
#v(10pt)
#only("5-")[1. Fluid pressure]
#only("5")[
#voiceover("First, the fluid pressure.")
]
#v(10pt)
#only("6-")[2. Force of the pump]
#only("6")[
#voiceover("Second, the force of the pump.")
]
#v(10pt)
#only("7-")[3. Number of pump piston strokes (50 cm each)]
#only("7")[
#voiceover("And third, the number of pump piston strokes, given that each stroke is 50 centimeters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solutions 🎯]
#v(40pt)
#only("1-")[1. Fluid pressure: 14.7 bar]
#only("1")[
#voiceover("The fluid pressure is calculated to be 14.7 bar.")
]
#v(10pt)
#only("2-")[$ P = (m dot g) / A_("press piston") $]
#only("2")[
#voiceover("This is found using the formula: pressure equals the object's mass times acceleration due to gravity, divided by the area of the press piston.")
]
#v(20pt)
#only("3-")[2. Pump force: 740 N]
#only("3")[
#voiceover("The force of the pump is 740 newtons.")
]
#v(10pt)
#only("4-")[$ F = P dot A_("pump piston") $]
#only("4")[
#voiceover("This is calculated as pressure times the area of the pump piston.")
]
#v(20pt)
#only("5-")[3. Pump piston strokes: 320]
#only("5")[
#voiceover("The number of pump piston strokes required is 320.")
]
#v(10pt)
#only("6-")[$ n = (A_("press piston") / A_("pump piston")) dot ("lifting height" / "stroke length") $]
#only("6")[
#voiceover("This is found by multiplying the ratio of the press piston area to the pump piston area by the ratio of the lifting height to the stroke length.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Hydraulics use fluid pressure to lift heavy loads 💪]
#only("1")[
#voiceover("The key takeaways are: Hydraulics use fluid pressure to lift heavy loads.")
]
#v(20pt)
#only("2-")[- Pressure, force, and area are interrelated 🔄]
#only("2")[
#voiceover("Pressure, force, and area are interrelated.")
]
#v(20pt)
#only("3-")[- Calculations involve ratios of piston areas and distances 📐]
#only("3")[
#voiceover("And calculations often involve ratios of piston areas and distances.")
]
#v(20pt)
#only("4-")[- Understanding these principles is crucial for hydraulic system design 🏗️]
#only("4")[
#voiceover("Understanding these principles is crucial for designing effective hydraulic systems.")
]
]