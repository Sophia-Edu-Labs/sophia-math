#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift Problem]
#v(40pt)
#only("1-")[#text()[Given:
- Lift height $(h_Lift) = 2$ m
- Pump stroke $(s_Pump) = 50$ cm $= 0.5$ m
- Press piston area $(A_Press) = 400$ cm² $= 0.04$ m²
- Pump piston area $(A_Pump) = 5$ cm² $= 0.0005$ m²]]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this problem step by step. We're given that the lift height is 2 meters, the pump stroke is 50 centimeters or 0.5 meters, the press piston area is 400 square centimeters or 0.04 square meters, and the pump piston area is 5 square centimeters or 0.0005 square meters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[#text()[Step 1: Write out the formula for the number of pump piston moves $(n)$:
$$ n = (A_Press dot h_Lift) / (A_Pump dot s_Pump) $$]]
#only("1")[
#voiceover("The first step is to write out the formula for the number of pump piston moves, denoted as n. It's given by the press piston area times the lift height, divided by the pump piston area times the pump stroke.")
]
#v(40pt)
#only("2-")[#text()[Step 2: Substitute the given values:
$$ n = (0.04 dot 2) / (0.0005 dot 0.5) $$]]
#only("2")[
#voiceover("Next, we substitute the given values into the formula. The press piston area is 0.04, the lift height is 2, the pump piston area is 0.0005, and the pump stroke is 0.5.")
]
#v(40pt)
#only("3-")[#text()[Step 3: Perform the calculations:
$$ n = 0.08 / 0.00025 = 320 $$]]
#only("3")[
#voiceover("Now, we perform the calculations. 0.04 times 2 equals 0.08, and 0.0005 times 0.5 equals 0.00025. Dividing 0.08 by 0.00025, we get 320.")
]
#v(40pt)
#only("4-")[Therefore, the pump piston must move 320 times. 🎉]
#only("4")[
#voiceover("Therefore, the pump piston must move 320 times to lift the object to the desired height. Well done!")
]
]