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

#only("2-")[- Water container with three taps]
// The problem setup is shown from slide 2 onward

#only("3-")[- Taps located at: 
  - 35 m below 
  - 10 m below
  - 3 m above]
// The tap locations are shown from slide 3 onward

#only("2")[
#voiceover("We have a water container with three taps located at different heights relative to the container.")
]

#only("3")[
#voiceover("The first tap is 35 meters below the container, the second is 10 meters below, and the third is 3 meters above.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Formula]

#v(40pt)

#only("1-")[$ P = P_("reservoir") - rho dot g dot h $]
// The formula is shown from slide 1 onward

#only("1")[
#voiceover("To calculate the overpressure at each tap, we use the formula P equals P reservoir minus rho times g times h, where rho is the density of water, g is the acceleration due to gravity, and h is the height difference between the reservoir and the tap.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[- Tap 1 (35 m below): ]

#only("2-")[$ P_1 = P_("reservoir") - 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (-35 "m") $]

#only("3-")[$ P_1 = P_("reservoir") + 343350 "Pa" = P_("reservoir") + 3.4 "bar" $]
// The solution for Tap 1 is gradually built up from slide 1 to 3

#v(20pt)

#only("4-")[- Tap 2 (10 m below):]

#only("5-")[$ P_2 = P_("reservoir") - 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (-10 "m") $]

#only("6-")[$ P_2 = P_("reservoir") + 98100 "Pa" = P_("reservoir") + 1.0 "bar" $]
// The solution for Tap 2 is gradually built up from slide 4 to 6

#v(20pt)

#only("7-")[- Tap 3 (3 m above):]

#only("8-")[$ P_3 = P_("reservoir") - 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (3 "m") $]

#only("9-")[$ P_3 = P_("reservoir") - 29430 "Pa" = P_("reservoir") - 0.3 "bar" $]
// The solution for Tap 3 is gradually built up from slide 7 to 9

#only("1")[#voiceover("Let's start with the first tap, which is 35 meters below the reservoir.")]

#only("2")[#voiceover("We plug in the values into the formula. The density of water is 1000 kilograms per cubic meter, the acceleration due to gravity is 9.81 meters per second squared, and the height is negative 35 meters since the tap is below the reservoir.")]

#only("3")[#voiceover("Simplifying, we get that the overpressure at Tap 1 is the reservoir pressure plus 343,350 Pascals, or 3.4 bar.")]

#only("4")[#voiceover("Moving on to Tap 2, which is 10 meters below the reservoir.")]

#only("5")[#voiceover("Again, we substitute the values into the formula, with the height being negative 10 meters this time.")]

#only("6")[#voiceover("After simplifying, we find that the overpressure at Tap 2 is the reservoir pressure plus 98,100 Pascals, or 1.0 bar.")]

#only("7")[#voiceover("Finally, for Tap 3, which is 3 meters above the reservoir.")]

#only("8")[#voiceover("We plug in the values, noting that the height is positive 3 meters since the tap is above the reservoir.")]

#only("9")[#voiceover("Simplifying, we get that the overpressure at Tap 3 is the reservoir pressure minus 29,430 Pascals, or minus 0.3 bar.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Visualization 📊]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

heights = [-35, -10, 3]
pressures = [3.4, 1.0, -0.3]

plt.figure(figsize=(8, 6))
plt.plot(heights, pressures, 'bo-')
plt.xlabel('Height relative to reservoir (m)')
plt.ylabel('Overpressure (bar)')
plt.title('Overpressure at Different Tap Heights')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// The graph visualizing the overpressure at different tap heights is shown from slide 1 onward

#only("1")[
#voiceover("Here's a graph visualizing the overpressure at the different tap heights. The x-axis shows the height relative to the reservoir in meters, and the y-axis shows the overpressure in bar. We can see that as the height increases, the overpressure decreases linearly.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Overpressure depends on height difference 📏]

#only("2-")[- Lower taps have higher overpressure ⬇️]

#only("3-")[- Taps above reservoir have negative overpressure ⬆️]

#only("1")[
#voiceover("To summarize, the overpressure at each tap depends on the height difference between the tap and the reservoir.")
]

#only("2")[
#voiceover("Taps located below the reservoir have a positive overpressure, with lower taps having a higher overpressure.")
]

#only("3")[
#voiceover("Taps located above the reservoir have a negative overpressure. Great work on solving this problem!")
]

]