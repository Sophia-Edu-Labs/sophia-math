#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity in the Real World 🌍]
#v(40pt)
#only("1-")[- Smooth transitions 🌉]
#v(20pt)
#only("2-")[- No abrupt changes or gaps 📈]
#only("1")[
#voiceover("Continuity is a fundamental concept in mathematics that has many real-world applications. It describes functions or processes that have smooth transitions without any abrupt changes or gaps.")
]
#only("2")[
#voiceover("In other words, a continuous function is one where small changes in the input lead to small changes in the output, without any sudden jumps or breaks.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Physics 🚀]
#v(40pt)
#only("1-")[- Motion of objects 🏎️]
#v(20pt)
#only("2-")[- Temperature changes 🌡️]
#v(20pt)
#only("3-")[- Electric and magnetic fields ⚡🧲]
#only("1")[
#voiceover("In physics, many natural phenomena are modeled using continuous functions. For example, the motion of objects, such as a car moving along a road, is typically continuous.")
]
#only("2")[
#voiceover("Similarly, temperature changes in a room or a system are usually gradual and continuous, rather than instantaneous.")
]
#only("3")[
#voiceover("Electric and magnetic fields also vary continuously in space, which is crucial for understanding and designing various devices and systems.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Engineering 🏗️]
#v(40pt)
#only("1-")[- Smooth operation of machines 🎢]
#v(20pt)
#only("2-")[- Signal processing 📡]
#v(20pt)
#only("3-")[- Control systems 🕹️]
#only("1")[
#voiceover("In engineering, continuity plays a vital role in ensuring the smooth operation of various machines and systems. For instance, the motion of gears and other mechanical components must be continuous to avoid damage and ensure efficient power transmission.")
]
#only("2")[
#voiceover("In signal processing, continuous signals are often analyzed and manipulated to extract information or to filter out noise.")
]
#only("3")[
#voiceover("Control systems, such as those used in robotics or automation, rely on continuous feedback and smooth transitions to maintain stable operation and precise control.")
]
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

# Create a continuous function
x = np.linspace(-5, 5, 100)
y = np.sin(x)

# Create a discontinuous function
x_disc = np.linspace(-5, 5, 100)
y_disc = np.where(x_disc < 0, -1, 1)

# Plot the functions
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

ax1.plot(x, y, 'b-', label='Continuous')
ax1.set_title('Continuous Function')
ax1.set_xlabel('x')
ax1.set_ylabel('y')
ax1.legend()
ax1.grid()

ax2.plot(x_disc, y_disc, 'r-', label='Discontinuous')
ax2.set_title('Discontinuous Function')
ax2.set_xlabel('x')
ax2.set_ylabel('y')
ax2.legend()
ax2.grid()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here, we can see the difference between a continuous function, shown on the left, and a discontinuous function, shown on the right. The continuous function has a smooth, unbroken curve, while the discontinuous function has a sudden jump or break.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Continuity is essential in many real-world applications 🌍]
#v(20pt)
#only("2-")[- Smooth transitions are crucial in physics and engineering 🚀🏗️]
#v(20pt)
#only("3-")[- Continuous functions have no abrupt changes or gaps 📈]
#only("1")[
#voiceover("In summary, continuity is an essential concept in many real-world applications, particularly in physics and engineering.")
]
#only("2")[
#voiceover("Smooth transitions and the absence of abrupt changes are crucial for modeling natural phenomena, designing efficient systems, and ensuring stable operation.")
]
#only("3")[
#voiceover("By understanding and leveraging the properties of continuous functions, we can better analyze, predict, and control various processes in the world around us.")
]
]