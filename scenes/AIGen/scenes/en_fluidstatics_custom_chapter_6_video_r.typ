#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Efficient Irrigation Systems 🌾]
#v(40pt)
#only("1-")[- Require precise calculation of pump pressure and flow rates]
#only("1")[
#voiceover("Efficient irrigation systems require precise calculation of pump pressure and flow rates to ensure effective water distribution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pump Pressure Calculation 🚰]
#v(40pt)
#only("1-")[- Lift water to a height of 30 m]
#v(20pt)
#only("2-")[- Formula: $p = rho dot g dot h$]
#v(20pt)
#only("3-")[- $rho$ for water = 1000 kg/m³]
#v(20pt)
#only("4-")[- Result: $p = 1000 dot 9.81 dot 30 = 294300$ Pa]
#only("1")[
#voiceover("To calculate the required pump pressure to lift water to a height of 30 meters, we use the formula p equals rho times g times h.")
]
#only("2")[
#voiceover("Here, p represents pressure, rho is the density of water, g is the acceleration due to gravity, and h is the height.")
]
#only("3")[
#voiceover("The density of water, rho, is 1000 kilograms per cubic meter.")
]
#only("4")[
#voiceover("Plugging in the values, we get a pressure of 294,300 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Flow Rate Calculation 💧]
#v(40pt)
#only("1-")[- Irrigate a 1-hectare field]
#v(20pt)
#only("2-")[- Needs 5 mm of water per day]
#v(20pt)
#only("3-")[- Formula: Flow rate = (1 "hectare" dot 5 "mm") / (24 "hours" dot 3600 "seconds")]
#v(20pt)
#only("4-")[- Result: Flow rate = 0.5787 liters per second]
#only("1")[
#voiceover("To calculate the water flow rate required to irrigate a 1-hectare field that needs 5 millimeters of water per day, we use a simple formula.")
]
#only("2")[
#voiceover("The flow rate equals the volume of water needed, which is 1 hectare times 5 millimeters, divided by the time, which is 24 hours times 3600 seconds.")
]
#only("3")[
#voiceover("This formula takes into account the area of the field, the water requirement, and the time over which the water needs to be delivered.")
]
#only("4")[
#voiceover("The result is a flow rate of approximately 0.5787 liters per second.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Efficient irrigation systems require precise calculations 🧮]
#v(20pt)
#only("2-")[- Pump pressure depends on water lift height 🚰]
#v(20pt)
#only("3-")[- Flow rate depends on field size and water requirement 💧]
#v(20pt)
#only("4-")[- Accurate calculations ensure effective water distribution 🌱]
#only("1")[
#voiceover("In summary, efficient irrigation systems require precise calculations.")
]
#only("2")[
#voiceover("Pump pressure is calculated based on the height to which water needs to be lifted.")
]
#only("3")[
#voiceover("Flow rate is determined by the size of the field and the daily water requirement.")
]
#only("4")[
#voiceover("Accurate calculations of pump pressure and flow rates are crucial to ensure effective water distribution for optimal crop growth.")
]
]