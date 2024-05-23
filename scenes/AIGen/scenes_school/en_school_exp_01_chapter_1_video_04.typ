#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear vs Exponential Growth 📈]

#v(40pt)

#only("1-")[
- Linear growth: constant addition ➕
]
#only("2-")[
- Exponential growth: constant multiplication ✖️
]

#v(40pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data for linear and exponential functions
x = np.linspace(0, 5, 100)
linear = 2 * x + 1
exponential = 2 ** x

# Plot the data
plt.figure(figsize=(8, 6))
plt.plot(x, linear, 'b-', label='Linear: $f(x) = 2x + 1$')
plt.plot(x, exponential, 'r-', label='Exponential: $g(x) = 2^x$')

# Add labels and legend
plt.xlabel('x')
plt.ylabel('f(x), g(x)')
plt.legend()
plt.grid(True)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Linear growth is characterized by a constant addition per time period. For example, a linear function $f(x) = 2x + 1$ increases by a constant amount of 2 for each unit increase in x.")
]

#only("2")[
#voiceover("On the other hand, exponential growth involves a constant multiplication per time period. An exponential function like $g(x) = 2^x$ doubles for each unit increase in x.")
]

#only("3")[
#voiceover("When we plot these functions, we can see that the linear function $f(x)$ grows at a steady rate, while the exponential function $g(x)$ starts slowly but quickly outpaces the linear growth.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Applications 🌍]

#v(40pt)

#only("1-")[
- Linear: constant salary raise 💰
]
#only("2-")[  
- Exponential: population growth 👨‍👩‍👧‍👦
]

#only("1")[
#voiceover("Linear growth can model situations like a constant salary raise, where a fixed amount is added each year.")
]

#only("2")[
#voiceover("Exponential growth is often seen in population dynamics, where the growth rate is proportional to the current population size.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[
- Linear growth: constant addition ➕
- Exponential growth: constant multiplication ✖️
]

#only("2-")[
- Linear: steady increase 📈
- Exponential: starts slow, then rapid growth 🚀
]

#only("1")[
#voiceover("To recap, linear growth involves a constant addition per time period, while exponential growth involves a constant multiplication.")
]

#only("2")[
#voiceover("This leads to a steady increase for linear functions, and a slow start followed by rapid growth for exponential functions.")
]

]