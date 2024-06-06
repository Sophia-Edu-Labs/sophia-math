#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents in Real-World Problems 🌍]
#v(40pt)
#only("1-")[- Compound interest 💰]
#v(20pt)
#only("2-")[- Population growth 👥]
#only("1")[
#voiceover("Rational exponents are not just a theoretical concept. They have practical applications in real-world problems, such as calculating compound interest and modeling population growth.")
]
#only("2")[
#voiceover("For example, if a population grows at a certain rate per year, we can use rational exponents to calculate the population after a given number of years.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Compound Interest Example]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the parameters
P = 1000  # Initial principal
r = 0.05  # Annual interest rate
n = 12    # Number of compounding periods per year
t = np.linspace(0, 10, 100)  # Time in years

# Calculate the compound interest
A = P * (1 + r/n) ** (n*t)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(t, A, 'b-', linewidth=2, label='Compound Interest')
plt.xlabel('Time (years)')
plt.ylabel('Amount ($)')
plt.title('Compound Interest Growth')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's an example of compound interest growth. If we start with an initial principal of \$1000, an annual interest rate of 5%, and monthly compounding (12 periods per year), we can use the formula $A = P(1 + r/n)^(nt)$ to calculate the amount after t years.")
]
#only("2")[
#voiceover("Notice the rational exponent $(nt)$, which allows us to calculate the growth for any given time period. As you can see in the graph, the amount grows exponentially over time due to the power of compound interest.")
]
]


There are no errors in the Typst code, mathematical expressions, or the plot generation.]

#slide()[
#text(size: 30pt, weight: "bold")[Population Growth Example]
#v(40pt)
#only("1-")[- Initial population: 1000]
#v(20pt)
#only("2-")[- Growth rate: 5% per year]
#v(20pt)
#only("3-")[- Formula: $P(t) = P_0(1 + r)^t$]
#only("1")[
#voiceover("Now let's consider a population growth example. Suppose we have an initial population of 1000 individuals.")
]
#only("2")[
#voiceover("If the population grows at a rate of 5% per year, we can use rational exponents to model the population growth over time.")
]
#only("3")[
#voiceover("The formula for population growth is $P of t equals P sub 0 times quantity 1 plus r raised to the power of t$, where $P sub 0$ is the initial population, $r$ is the growth rate, and $t$ is the time in years.")
]
#only("4")[
#voiceover("Plugging in our values, we get $P of t equals 1000 times quantity 1 plus 0.05 raised to the power of t$. Again, the rational exponent $t$ allows us to calculate the population for any given year.")
]
#only("4-")[$ P(t) = 1000(1 + 0.05)^t$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rational exponents have real-world applications 🌍]
#v(20pt)
#only("2-")[- Compound interest and population growth are common examples 💰👥]
#v(20pt)
#only("3-")[- Rational exponents allow for continuous modeling over time ⏰]
#only("1")[
#voiceover("In summary, rational exponents are not just an abstract mathematical concept. They have important real-world applications.")
]
#only("2")[
#voiceover("We've seen how rational exponents can be used to model compound interest growth and population growth.")
]
#only("3")[
#voiceover("The key advantage of using rational exponents in these models is that they allow us to calculate values for any given time period, providing a continuous representation of growth over time.")
]
]