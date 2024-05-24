#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications of Limits 🌍]
#v(40pt)
#only("1-")[- Compound interest 💰]
#v(20pt)
#only("2-")[- Population growth 👥]
#only("1")[
#voiceover("Understanding limits of sequences is useful in various real-world applications, such as calculating compound interest and population growth.")
]
#only("2")[
#voiceover("For example, let's consider how limits can be used to model population growth over time.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Population Growth Model 📈]
#v(40pt)
#only("1-")[- Initial population: $P_0$]
#v(20pt)
#only("2-")[- Growth rate per period: $r$]
#v(20pt)
#only("3-")[- Population after $n$ periods: $P_n = P_0 (1 + r)^n$]
#only("1")[
#voiceover("Suppose we have an initial population P sub 0.")
]
#only("2")[
#voiceover("The population grows at a rate r per period, such as a year.")
]
#only("3")[
#voiceover("The population after n periods, denoted as P sub n, can be calculated using the formula P sub n equals P sub 0 times the quantity 1 plus r raised to the power n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Limit of Population Growth ♾]
#v(40pt)
#only("1-")[- As $n$ approaches infinity: $lim_(n -> infinity) P_n = ?$]
#v(20pt)
#only("2-")[- Depends on the value of $r$:]
#v(20pt)
#only("3-")[  - If $|1 + r| < 1$, population decreases to 0]
#v(20pt)
#only("4-")[  - If $|1 + r| > 1$, population grows without bound]
#only("1")[
#voiceover("Now, let's consider what happens to the population as the number of periods n approaches infinity.")
]
#only("2")[
#voiceover("The limit of the population growth depends on the value of the growth rate r.")
]
#only("3")[
#voiceover("If the absolute value of 1 plus r is less than 1, the population will eventually decrease to 0 as n approaches infinity.")
]
#only("4")[
#voiceover("On the other hand, if the absolute value of 1 plus r is greater than 1, the population will grow without bound as n approaches infinity.")
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

# Parameters
P0 = 100  # Initial population
r_values = [-0.02, 0.03]  # Growth rates

# Generate n values
n = np.arange(0, 100)

# Create the plot
plt.figure(figsize=(8, 6))

for r in r_values:
    P = P0 * (1 + r)**n
    plt.plot(n, P, label=f'r = {r}')

plt.xlabel('Number of Periods (n)')
plt.ylabel('Population (P_n)')
plt.title('Population Growth over Time')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the population growth over time for two different growth rates. The blue line represents a negative growth rate, leading to a decreasing population that approaches 0. The orange line represents a positive growth rate, resulting in an exponentially growing population.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎓]
#v(40pt)
#only("1-")[- Limits of sequences have real-world applications]
#v(20pt)
#only("2-")[- Population growth can be modeled using limits]
#v(20pt)
#only("3-")[- The limit of population growth depends on the growth rate]
#only("1")[
#voiceover("In summary, limits of sequences have important real-world applications, such as modeling population growth.")
]
#only("2")[
#voiceover("We can use a mathematical formula involving limits to calculate the population after a large number of periods.")
]
#only("3")[
#voiceover("The long-term behavior of the population depends on the growth rate, leading to either a decreasing population that approaches 0 or an exponentially growing population.")
]
]