#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Blood Pressure]
#v(40pt)
Why is blood pressure higher in the feet compared to the head?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Gravity]#only("2-")[#text(fill:green)[a) Gravity]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Heartbeat]#only("3-")[#text(fill:red)[b) Heartbeat]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Respiration]#only("4-")[#text(fill:red)[c) Respiration]]  
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Muscle contraction]#only("5-")[#text(fill:red)[d) Muscle contraction]]
#v(40pt)

#only("1")[#voiceover("That's absolutely right! Great job.")]
// Very briefly talk about a and why it is correct
#only("2")[#voiceover("The correct answer is a) Gravity. The gravitational force acts on the column of blood, causing higher pressure in the lower parts of the body like the feet compared to the head.")]
// Very briefly talk about b and why it is incorrect  
#only("3")[#voiceover("b) Heartbeat is incorrect. While the heartbeat drives blood circulation, it does not directly cause the pressure difference between the feet and head.")]
// Very briefly talk about c and why it is incorrect
#only("4")[#voiceover("c) Respiration is also incorrect. Breathing affects blood pressure overall but does not account for the specific difference between the feet and head.")]
// Very briefly talk about d and why it is incorrect
#only("5")[#voiceover("And d) Muscle contraction is incorrect as well. Muscle contractions can affect local blood pressure but are not the primary reason for the feet-head pressure difference.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)  
#only("1-")[- Blood is a fluid, so it exerts pressure 🩸]
#v(20pt)
#only("2-")[- Pressure increases with depth due to gravity 🪂]
#v(20pt)
#only("3-")[- The feet are lower than the head 🦶 > 🧠]
#v(20pt)  
#only("4-")[- So, blood pressure is higher in the feet 📈]
#v(40pt)

#only("1")[#voiceover("Let's look at why gravity causes this blood pressure difference.")]
#only("2")[#voiceover("First, remember that blood, like any fluid, exerts pressure. This pressure increases with depth due to the force of gravity acting on the fluid column.")]
#only("3")[#voiceover("In the human body, the feet are located lower than the head.")]  
#only("4")[#voiceover("Consequently, the blood pressure is higher in the feet compared to the head, as there is a taller column of blood above the feet.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)
#only("1-")[To calculate the pressure difference:]
#v(20pt)  
#only("2-")[- Use the formula: $ Delta p = rho dot g dot h $]
#v(20pt)
#only("3-")[- $ rho $ = blood density (1060 kg/m³)]
#only("4-")[- $ g $ = gravitational acceleration (9.81 m/s²)]
#only("5-")[- $ h $ = height difference (e.g., 1.5 m)]
#v(20pt)
#only("6-")[$ Delta p = 1060 dot 9.81 dot 1.5 = 15604.5 $ Pa]
#v(20pt)
#only("7-")[That's about 117 mmHg!]

#only("1")[#voiceover("We can even calculate the exact pressure difference.")]
#only("2")[#voiceover("To do this, we use the formula 'delta p equals rho times g times h', where delta p is the pressure difference, rho is the density of blood, g is the gravitational acceleration, and h is the height difference.")]
#only("3")[#voiceover("Blood has a density of about 1060 kilograms per cubic meter,")]
#only("4")[#voiceover("the gravitational acceleration is 9.81 meters per second squared,")]  
#only("5")[#voiceover("and let's assume a height difference of 1.5 meters between the feet and the head.")]
#only("6")[#voiceover("Plugging these values into the formula, we get a pressure difference of 15604.5 Pascals.")]
#only("7")[#voiceover("Converting this to the more common unit of millimeters of mercury, that's about 117 mmHg. Quite a significant difference!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Blood pressure varies with height 📏]
#v(20pt)  
#only("2-")[- Gravity causes higher pressure in the feet 🌍]
#v(20pt)
#only("3-")[- The pressure difference can be calculated 🧮]
#v(20pt)
#only("4-")[- Understanding this is crucial for medical professionals 👩‍⚕️👨‍⚕️]

#only("1")[#voiceover("In summary, blood pressure varies with height in the body.")]
#only("2")[#voiceover("Gravity is the key factor causing higher blood pressure in the feet compared to the head.")]
#only("3")[#voiceover("We can calculate this pressure difference using the density of blood, gravitational acceleration, and the height difference.")]
#only("4")[#voiceover("Understanding these pressure variations is crucial for medical professionals in diagnosing and treating conditions related to blood pressure.")]
]