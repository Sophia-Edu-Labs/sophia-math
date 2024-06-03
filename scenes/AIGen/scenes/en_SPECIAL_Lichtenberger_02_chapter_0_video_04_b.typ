#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift Problem 🦾]
#v(40pt)
#only("-1")[
- A hydraulic lift raises a 6000 kg ship engine by 2.0 m
- Pump piston area: 5.0 cm², press piston area: 400 cm²
- Stroke length of pump: 50 cm
]
#v(20pt)
#only("2-")[
#text(size: 25pt, weight: "bold")[How many times must the pump piston be lowered?]
]
#only("1")[
#voiceover("Not quite. The correct answer is that the pump piston must be lowered 320 times. Let's go through the solution step by step.")
]
#only("2")[
#voiceover("To find out how many times the pump piston needs to be lowered, we need to consider the relationship between the pump and press pistons, as well as the lifting height and stroke length.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Understand the Relationship 🤝]
#v(40pt)
#only("1-")[
- The volume of fluid displaced by the pump equals the volume displaced by the press
]
#v(20pt)
#only("2-")[
$ A_("pump") ⋅ s_("pump") = A_("press") ⋅ s_("press") $
]
#only("1")[
#voiceover("First, let's understand the relationship between the pump and press pistons. The volume of fluid displaced by the pump piston equals the volume displaced by the press piston.")
]
#only("2")[
#voiceover("Mathematically, this can be expressed as the area of the pump piston multiplied by its stroke length equals the area of the press piston multiplied by its displacement.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Rearrange the Equation 🔄]
#v(40pt)
#only("1-")[
$ s_("press") = (A_("pump")/A_("press")) ⋅ s_("pump") $
]
#v(20pt)
#only("2-")[
- The total press displacement is the lifting height (2.0 m)
]
#only("1")[
#voiceover("Next, let's rearrange the equation to solve for the displacement of the press piston. We get that the press displacement equals the ratio of the pump area to the press area multiplied by the pump stroke length.")
]
#only("2")[
#voiceover("Remember, the total displacement of the press piston is equal to the lifting height, which is 2.0 meters in this problem.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate the Number of Strokes 🧮]
#v(40pt)
#only("1-")[
$ n = ("lifting height")/s_("press") $
]
#v(20pt)
#only("2-")[
$ n = ("lifting height")/(A_("pump")/A_("press")) ⋅ s_("pump") $
]
#v(20pt)
#only("3-")[
$ n = (A_("press")/A_("pump")) ⋅ ("lifting height"/"stroke length") $
]
#v(20pt)
#only("4-")[
$ n = (400 "cm"^2/5 "cm"^2) ⋅ (2.0 "m"/0.5 "m") = 320 $
]
#only("1")[
#voiceover("To find the number of strokes needed, we divide the total lifting height by the displacement per stroke of the press piston.")
]
#only("2")[
#voiceover("Substituting the expression for the press displacement, we get that the number of strokes equals the lifting height divided by the ratio of the pump area to the press area multiplied by the pump stroke length.")
]
#only("3")[
#voiceover("This can be rearranged to the ratio of the press area to the pump area multiplied by the ratio of the lifting height to the stroke length.")
]
#only("4")[
#voiceover("Plugging in the values, we get 400 square centimeters divided by 5 square centimeters multiplied by 2.0 meters divided by 0.5 meters, which equals 320 strokes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎉]
#v(40pt)
- The pump piston must be lowered 320 times to lift the engine by 2.0 m
#v(20pt)
- Key concepts:
  - Volume conservation between pump and press
  - Ratio of piston areas and displacements
#only("1")[
#voiceover("In conclusion, the pump piston must be lowered 320 times to lift the ship engine by 2.0 meters. The key concepts in this problem were the conservation of volume between the pump and press pistons, and the ratio of their areas and displacements.")
]
]