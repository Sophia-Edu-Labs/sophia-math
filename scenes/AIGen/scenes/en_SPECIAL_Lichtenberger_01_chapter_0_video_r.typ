#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure Recap 🌊]

#v(40pt)

#only("1-")[- Force per unit area 💪]
#only("2-")[- Influenced by environment and depth 🌍]
#only("3-")[- Suction cups 🪣]
#only("4-")[- Air pressure at different lakes 🏔️]

#only("1")[
#voiceover("Let's recap what we've learned about pressure. Pressure is defined as the force exerted per unit area.")
]

#only("2")[
#voiceover("Pressure is influenced by various environmental factors and changes with depth.")
]

#only("3")[
#voiceover("We saw how suction cups work due to the difference in pressure inside and outside the cup.")
]

#only("4")[
#voiceover("We also learned that air pressure varies at different lakes depending on their altitude.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points 🔑]

#v(40pt)

#only("1-")[$ "Pressure" = "Force" / "Area" $]

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
depths = [0, 10, 20, 30, 40, 50]
pressures = [1, 2, 3, 4, 5, 6]

# Create plot
plt.figure(figsize=(6, 4))
plt.plot(depths, pressures, marker='o')
plt.xlabel('Depth (m)')
plt.ylabel('Pressure (atm)')
plt.title('Pressure vs Depth')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("3-")[Suction cups: $p_"inside" < p_"outside"$ 🪣]

#only("4-")[Air pressure: $p_"high altitude" < p_"low altitude"$ 🏔️]

#only("1")[
#voiceover("The key points to remember are: Pressure equals force divided by area.")
]

#only("2")[
#voiceover("Pressure increases linearly with depth, as shown in this graph.")
]

#only("3")[
#voiceover("Suction cups work because the pressure inside the cup is lower than the outside pressure.")
]

#only("4")[
#voiceover("Air pressure is lower at higher altitudes compared to lower altitudes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎉]

#v(40pt)

#only("1-")[Understanding pressure is crucial! 🌟]

#only("2-")[It helps explain many phenomena 🌍]

#only("3-")[From suction cups to air pressure 🪣🏔️]

#only("4-")[Keep exploring and learning! 🚀]

#only("1")[
#voiceover("In conclusion, understanding the concept of pressure is crucial.")
]

#only("2")[
#voiceover("It helps us explain many phenomena in the world around us.")
]

#only("3")[
#voiceover("From the working of suction cups to the variation of air pressure with altitude.")
]

#only("4")[
#voiceover("Keep exploring and learning more about pressure and its applications!")
]
]