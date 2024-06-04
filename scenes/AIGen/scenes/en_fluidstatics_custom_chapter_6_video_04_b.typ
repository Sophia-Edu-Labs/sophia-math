#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#text(size: 24pt)[You correctly calculated the water flow rate required to irrigate the field. Let's review the solution step by step.]
#only("1")[
#voiceover("Not quite. Let's review the correct solution step by step to help you understand.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information 📝]
#v(40pt)
#only("1-")[- Field area: 1 hectare (10,000 m²)]
#v(20pt)
#only("2-")[- Water requirement: 5 mm per day]
#only("1")[
#voiceover("First, let's review the given information. We have a field with an area of 1 hectare, which is equivalent to 10,000 square meters.")
]
#only("2")[
#voiceover("The field requires 5 millimeters of water per day.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Calculate Daily Water Volume 💧]
#v(40pt)
#only("1-")[Daily Water Volume = Field Area × Water Requirement]
#v(20pt)
#only("2-")[= 10,000 m² × 0.005 m]
#v(20pt)
#only("3-")[= 50 m³]
#only("1")[
#voiceover("To find the daily water volume, we multiply the field area by the water requirement.")
]
#only("2")[
#voiceover("The field area is 10,000 square meters, and the water requirement is 5 millimeters, which is equivalent to 0.005 meters.")
]
#only("3")[
#voiceover("Multiplying these values gives us a daily water volume of 50 cubic meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Liters 🔄]
#v(40pt)
#only("1-")[Daily Water Volume (in liters) = 50 m³ × 1000 L/m³]
#v(20pt)
#only("2-")[= 50,000 L]
#only("1")[
#voiceover("Next, we convert the daily water volume from cubic meters to liters. We know that 1 cubic meter is equal to 1000 liters.")
]
#only("2")[
#voiceover("Multiplying 50 cubic meters by 1000 liters per cubic meter gives us a daily water volume of 50,000 liters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate Flow Rate ⏰]
#v(40pt)
#only("1-")[Flow Rate = Daily Water Volume ÷ Time]
#v(20pt)
#only("2-")[= 50,000 L ÷ (24 hours × 3600 seconds)]
#v(20pt)
#only("3-")[= 0.5787 L/s]
#only("1")[
#voiceover("Finally, to calculate the flow rate, we divide the daily water volume by the time in seconds.")
]
#only("2")[
#voiceover("There are 24 hours in a day, and each hour has 3600 seconds. So, we divide 50,000 liters by the product of 24 hours and 3600 seconds.")
]
#only("3")[
#voiceover("This gives us a flow rate of approximately 0.5787 liters per second.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🌟]
#v(40pt)
#only("1-")[The water flow rate required to irrigate the 1-hectare field is 0.5787 liters per second.]
#v(20pt)
#only("2-")[You demonstrated excellent problem-solving skills and a solid understanding of unit conversions and flow rate calculations. Keep up the great work! 👏]
#only("1")[
#voiceover("In conclusion, the water flow rate required to irrigate the 1-hectare field, needing 5 millimeters of water per day, is approximately 0.5787 liters per second.")
]
#only("2")[
#voiceover("You demonstrated excellent problem-solving skills and a solid understanding of unit conversions and flow rate calculations. Keep up the great work and continue to apply these skills in future problems!")
]
]