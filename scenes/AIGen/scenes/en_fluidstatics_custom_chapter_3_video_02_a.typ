#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Blood Pressure Conversion]
#v(40pt)
#only("1-")[Convert 120/80 mmHg to Pascals 🩸]
#v(20pt)
#only("1")[
#voiceover("Great job! You correctly converted the blood pressure reading from millimeters of mercury to Pascals. Let's go through the solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[- Blood pressure: 120/80 mmHg 📏]
#v(20pt)
#only("2-")[- Formula: $p = rho dot g dot h$ 📐]
#v(20pt)
#only("3-")[- Density of mercury ($rho$): 13545.9 kg/m³ 🧪]
#only("1")[
#voiceover("We are given a blood pressure reading of 120 over 80 millimeters of mercury.")
]
#only("2")[
#voiceover("To convert this to Pascals, we will use the formula pressure equals density times acceleration due to gravity times height.")
]
#only("3")[
#voiceover("The density of mercury is 13545.9 kilograms per cubic meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Systolic Pressure]
#v(40pt)
#only("1-")[- Height ($h$) for systolic pressure: 120 mm = 0.12 m 📏]
#v(20pt)
#only("2-")[- $p_"systolic" = 13545.9 dot 9.81 dot 0.12$]
#v(20pt)
#only("3-")[- $p_"systolic" = 15936.73 "Pa"$ 🎉]
#only("1")[
#voiceover("For the systolic pressure of 120 millimeters of mercury, we first convert the height to meters. 120 millimeters equals 0.12 meters.")
]
#only("2")[
#voiceover("We then substitute the values into the formula: systolic pressure equals 13545.9 times 9.81 times 0.12.")
]
#only("3")[
#voiceover("Calculating this, we get a systolic pressure of 15936.73 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Diastolic Pressure]
#v(40pt)
#only("1-")[- Height ($h$) for diastolic pressure: 80 mm = 0.08 m 📏]
#v(20pt)
#only("2-")[- $p_"diastolic" = 13545.9 dot 9.81 dot 0.08$]
#v(20pt) 
#only("3-")[- $p_"diastolic" = 10624.49 "Pa"$ 🎉]
#only("1")[
#voiceover("Similarly, for the diastolic pressure of 80 millimeters of mercury, we convert the height to 0.08 meters.")
]
#only("2")[
#voiceover("Substituting into the formula, we have diastolic pressure equals 13545.9 times 9.81 times 0.08.")
]
#only("3")[
#voiceover("This gives us a diastolic pressure of 10624.49 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Result]
#v(40pt)
#only("1-")[120/80 mmHg = 15936.73/10624.49 Pa 🩸➡📐]
#only("1")[
#voiceover("Therefore, a blood pressure of 120 over 80 millimeters of mercury is equivalent to 15936.73 over 10624.49 Pascals. Great work on solving this conversion problem!")
]
]