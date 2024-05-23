#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exponential Growth Recap]
#v(40pt)
#only("1-")[- Increases by constant percentage 📈]
#v(20pt)
#only("2-")[- Examples: population growth, glacier changes 🌍]
#only("1")[
#voiceover("Let's recap exponential growth. Exponential growth is characterized by increases that occur by a constant percentage over time.")
]
#only("2")[
#voiceover("We see exponential growth in various real-world phenomena, such as population growth and changes in glacier size.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Population Growth]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data for exponential growth
x = np.linspace(0, 10, 100)
y = np.exp(x)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2, label='Population Growth')
plt.grid(True)
plt.legend(fontsize=12)
plt.title('Exponential Population Growth', fontsize=16)
plt.xlabel('Time', fontsize=14)
plt.ylabel('Population', fontsize=14)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Population growth often follows an exponential pattern. As the population increases by a constant percentage each year, the growth curve takes on this characteristic exponential shape.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Glacier Changes]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data for exponential decay
x = np.linspace(0, 10, 100)
y = np.exp(-x)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='red', linewidth=2, label='Glacier Size')
plt.grid(True)
plt.legend(fontsize=12)
plt.title('Exponential Glacier Decay', fontsize=16)
plt.xlabel('Time', fontsize=14)
plt.ylabel('Glacier Size', fontsize=14)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("On the other hand, the size of some glaciers may decrease exponentially over time. This is an example of exponential decay, where the quantity decreases by a constant percentage at each time step.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Exponential growth: constant percentage increase 🔑]
#v(20pt)
#only("2-")[- Real-world examples: populations, glaciers 🌍]
#v(20pt)
#only("3-")[- Characteristic exponential curve shape 📈]
#only("1")[
#voiceover("The key takeaway is that exponential growth involves increases by a constant percentage over time.")
]
#only("2")[
#voiceover("We see this in real-world examples like population growth and changes in glacier size.")
]
#only("3")[
#voiceover("Exponential growth and decay produce characteristic curved shapes when plotted over time.")
]
]