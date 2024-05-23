#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear vs Exponential Growth]
#v(40pt)
#only("1-")[- Linear: constant increase 📈]
#only("2-")[- Example: 10 new rabbits per month 🐇]
#only("3-")[- Exponential: percentage increase 📈📈]
#only("4-")[- Example: 20% more algae each day 🌿]
#only("1")[
#voiceover("Let's compare linear and exponential growth. Linear growth means a constant increase over time.")
]
#only("2")[
#voiceover("For example, if a rabbit population increases by 10 new rabbits each month, that's linear growth.")
]
#only("3")[
#voiceover("On the other hand, exponential growth involves a constant percentage increase.")
]
#only("4")[
#voiceover("Imagine algae coverage in a pond growing by 20% each day. That's exponential growth.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Growth]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.arange(0, 13)
y = 10 * x + 100

plt.figure(figsize=(6, 4))
plt.plot(x, y, marker='o')
plt.title('Rabbit Population Growth (Linear)')
plt.xlabel('Months')
plt.ylabel('Number of Rabbits')
plt.xticks(x)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a graph showing linear growth for the rabbit population. Notice the straight line - the population increases by the same amount each month.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Exponential Growth]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.arange(0, 11)
y = 100 * 1.2 ** x

plt.figure(figsize=(6, 4))
plt.plot(x, y, marker='o')
plt.title('Algae Coverage Growth (Exponential)')
plt.xlabel('Days')
plt.ylabel('Algae Coverage (sq m)')
plt.xticks(x)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Now let's look at exponential growth for the algae coverage. See how the curve gets steeper over time? That's because the growth rate is proportional to the current amount.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear: constant addition ➕]
#only("2-")[- Exponential: constant multiplication ✖]
#only("3-")[- Exponential grows faster over time 🏃💨]
#only("1")[
#voiceover("To sum up, linear growth adds a constant amount each time period.")
]
#only("2")[
#voiceover("Exponential growth multiplies by a constant factor each time.")
]
#only("3")[
#voiceover("Because of this, exponential growth starts slow but quickly outpaces linear growth over time.")
]
]