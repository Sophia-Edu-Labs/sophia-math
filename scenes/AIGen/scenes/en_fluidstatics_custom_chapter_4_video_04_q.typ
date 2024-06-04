#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hot Air Balloon 🎈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the density function
def rho_air(h, a=1.247, b=0.000104):
    return a * np.exp(-b * h)

# Generate height values
h = np.linspace(0, 2000, 100)

# Calculate density values
rho = rho_air(h)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(h, rho, color='blue', label='Air Density')

# Improve aesthetics
plt.grid(True, linestyle='--', linewidth=0.5)
plt.legend()
plt.title('Air Density vs. Height')
plt.xlabel('Height (m)')
plt.ylabel('Air Density (kg/m³)')

# Show the plot
plt.show()

```,
width: 360pt),
)
]
]
// The graph shows the relationship between air density and height, using the given exponential function. 
#only("1")[
#voiceover("Consider a hot air balloon that can reach a maximum height of 2000 meters.")
]
#only("2")[
#voiceover("The density of air at a given height h is given by the formula rho sub air of h equals a times e to the power of negative b times h.")
]
#only("3")[
#voiceover("Here, a equals 1.247 kilograms per cubic meter and b equals 0.000104.")
]
#v(40pt)
#only("4-")[
#text(weight: "bold")[Question 🤔]
]
#v(20pt)
#only("5-")[
Determine the density of air at the maximum height the balloon can reach.
]
// The question is posed from slide 5 onward
#only("4")[
#voiceover("Now, here's a question for you:")
]
#only("5")[
#voiceover("Determine the density of air at the maximum height the balloon can reach.")
]
]

]#questionDef(
questionText: "What is the density of air (in kg/m³) at the maximum height of 2000 m that the balloon can reach? Use $ \\rho_{air}(h) = a \cdot e^{-b \cdot h} $ with $ a = 1.247 $ kg/m³ and $ b = 0.000104 $.",
answerOptions: ("$1.013$", "$0$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 3,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)