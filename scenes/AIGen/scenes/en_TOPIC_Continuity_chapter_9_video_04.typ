#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications of Continuity]
#v(40pt)
#only("1-")[- Smooth transitions in engineering 🏗️]
#v(20pt)
#only("2-")[- Predicting physical phenomena 🔮]
#v(20pt)
#only("3-")[- Ensuring stability in systems 🌡️]
#only("1")[
#voiceover("Continuity has many real-world applications. In engineering, it is essential for smooth transitions between different components or states.")
]
#only("2")[
#voiceover("Continuity also allows us to predict physical phenomena more accurately, as many natural processes are continuous.")
]
#only("3")[
#voiceover("Moreover, continuity is crucial for ensuring stability in various systems, such as control systems or financial markets.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Temperature Control]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Time points
t = np.linspace(0, 10, 100)

# Temperature function
def T(t):
    return 20 + 5 * np.sin(t)

# Plot the graph
plt.figure(figsize=(8, 6))
plt.plot(t, T(t), 'b-', linewidth=2, label='Temperature')
plt.xlabel('Time', fontsize=14)
plt.ylabel('Temperature (°C)', fontsize=14)
plt.title('Continuous Temperature Control', fontsize=16)
plt.grid(True)
plt.legend(fontsize=12)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's consider an example from temperature control. In this graph, we see a continuous function representing the temperature over time.")
]
#only("2")[
#voiceover("The continuity of this function ensures that the temperature changes smoothly, without any sudden jumps or discontinuities.")
]
#only("3")[
#voiceover("This smooth transition is essential for maintaining a stable and comfortable environment in various settings, such as homes, offices, or industrial processes.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Importance of Continuity]
#v(40pt)
#only("1-")[- Avoids sudden changes or discontinuities 📈]
#v(20pt)
#only("2-")[- Enables precise modeling and analysis 📊]
#v(20pt)
#only("3-")[- Facilitates optimization and control 🎮]
#only("1")[
#voiceover("The importance of continuity lies in its ability to avoid sudden changes or discontinuities in various processes or systems.")
]
#only("2")[
#voiceover("Continuity enables precise modeling and analysis of real-world phenomena, allowing us to make accurate predictions and decisions.")
]
#only("3")[
#voiceover("Furthermore, continuity facilitates optimization and control, as it provides a smooth landscape for algorithms and control strategies to operate on.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Continuity has diverse real-world applications 🌍]
#v(20pt)
#only("2-")[- Ensures smooth transitions and stability 🌉]
#v(20pt)
#only("3-")[- Enables precise modeling and optimization 📈]
#only("1")[
#voiceover("In summary, continuity has diverse real-world applications across various domains, such as physics, engineering, and economics.")
]
#only("2")[
#voiceover("It ensures smooth transitions and stability in systems, avoiding sudden changes or discontinuities.")
]
#only("3")[
#voiceover("Continuity also enables precise modeling and optimization, facilitating accurate analysis and decision-making in real-world scenarios.")
]
]