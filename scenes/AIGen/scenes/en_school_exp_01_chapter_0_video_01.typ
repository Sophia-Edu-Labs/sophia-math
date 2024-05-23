#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exponential Growth]
#v(40pt)
#only("1-")[- Constant percentage increase over time 📈]
#v(20pt)
#only("2-")[- Examples: Triftgletscher changes, rabbit population growth 🐰]
#only("1")[
#voiceover("Exponential growth is characterized by a constant percentage increase over time.")
]
#only("2")[
#voiceover("Real-world examples include changes in the Triftgletscher and the growth of rabbit populations.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Triftgletscher Changes]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

years = np.array([1995, 2000, 2005, 2010, 2015, 2020])
area = np.array([16.55, 15.41, 14.34, 13.33, 12.39, 11.52])

plt.figure(figsize=(8, 6))
plt.plot(years, area, marker='o', linestyle='-', color='b')
plt.xlabel('Year')
plt.ylabel('Glacier Area (km²)')
plt.title('Triftgletscher Area Change')
plt.grid(True)
plt.xticks(years)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("The Triftgletscher in Switzerland has been shrinking at an exponential rate. The graph shows the glacier's area decreasing from 16.55 square kilometers in 1995 to 11.52 square kilometers in 2020.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rabbit Population Growth]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

months = np.array([0, 1, 2, 3, 4, 5])
population = np.array([2, 4, 8, 16, 32, 64])

plt.figure(figsize=(8, 6))
plt.plot(months, population, marker='o', linestyle='-', color='g')
plt.xlabel('Months')
plt.ylabel('Number of Rabbits')
plt.title('Rabbit Population Growth')
plt.grid(True)
plt.xticks(months)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Rabbit populations can also grow exponentially under ideal conditions. Starting with just two rabbits, the population can double every month, leading to 64 rabbits after just five months.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Logarithms]
#v(40pt)
#only("1-")[- Inverse of exponential functions 🔄]
#v(20pt)
#only("2-")[- Useful for solving exponential equations 🧮]
#only("1")[
#voiceover("Logarithms are the inverse of exponential functions.")
]
#only("2")[
#voiceover("They are useful for solving exponential equations and understanding the behavior of exponential growth.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Exponential growth: constant percentage increase 📈]
#v(20pt)
#only("2-")[- Examples: Triftgletscher changes, rabbit population growth 🐰]
#v(20pt)
#only("3-")[- Logarithms: inverse of exponential functions 🔄]
#only("1")[
#voiceover("In summary, exponential growth is characterized by a constant percentage increase over time.")
]
#only("2")[
#voiceover("Real-world examples include changes in the Triftgletscher and the growth of rabbit populations.")
]
#only("3")[
#voiceover("Logarithms, being the inverse of exponential functions, are crucial for understanding and working with exponential growth.")
]
]