#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we get there step by step.]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we get there step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- $rho_air(h) = a dot e^(-b dot h)$]
#v(20pt)
#only("2-")[- $a = 1.247$ kg/m³]
#v(20pt)
#only("3-")[- $b = 0.000104$]
#v(20pt)
#only("4-")[- Maximum height $h = 2000$ m]
#only("1")[
#voiceover("We are given the formula for air density as a function of height: rho air of h equals a times e to the power of negative b times h.")
]
#only("2")[
#voiceover("We also know that the constant a is equal to 1.247 kilograms per cubic meter,")
]
#only("3")[
#voiceover("and the constant b is equal to 0.000104.")
]
#only("4")[
#voiceover("The maximum height the balloon can reach is 2000 meters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Substitute the given values into the formula:]
#v(20pt)
#only("2-")[$rho_air(2000) = 1.247 dot e^(-0.000104 dot 2000)$]
#v(20pt)
#only("3-")[2. Simplify the exponent:]
#v(20pt)  
#only("4-")[$rho_air(2000) = 1.247 dot e^(-0.208)$]
#v(20pt)
#only("5-")[3. Calculate the result:]
#v(20pt)
#only("6-")[$rho_air(2000) = 1.013$ kg/m³]
#only("1")[
#voiceover("First, we substitute the given values into the formula. We replace h with 2000, a with 1.247, and b with 0.000104.")
]
#only("2")[
#voiceover("This gives us rho air of 2000 equals 1.247 times e to the power of negative 0.000104 times 2000.")
]
#only("3")[
#voiceover("Next, we simplify the exponent. Negative 0.000104 times 2000 equals negative 0.208.")
]
#only("4")[
#voiceover("So now we have rho air of 2000 equals 1.247 times e to the power of negative 0.208.")
]
#only("5")[
#voiceover("Finally, we calculate the result. 1.247 times e to the power of negative 0.208 equals 1.013.")
]
#only("6")[
#voiceover("Therefore, the density of air at the maximum height of 2000 meters is 1.013 kilograms per cubic meter.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the constants
a = 1.247
b = 0.000104

# Define the function for air density
def rho_air(h):
    return a * np.exp(-b * h)

# Generate height values
h = np.linspace(0, 3000, 100)

# Calculate air density values
rho = rho_air(h)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(h, rho, color='blue', linewidth=2, label='Air Density')

# Highlight the point at maximum height
plt.scatter(2000, rho_air(2000), color='red', s=50, label='Density at Max Height')

# Improve aesthetics
plt.grid(True, linestyle='--', linewidth=0.5)
plt.legend(fontsize=12)
plt.title('Air Density vs Height', fontsize=16)
plt.xlabel('Height (m)', fontsize=14)
plt.ylabel('Air Density (kg/m³)', fontsize=14)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of how air density changes with height. The blue line shows the decrease in density as height increases. The red dot highlights the density at the maximum height of 2000 meters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Air density decreases exponentially with height]
#v(20pt)
#only("2-")[- The formula $rho_air(h) = a dot e^(-b dot h)$ models this relationship]
#v(20pt)  
#only("3-")[- Substitute given values and simplify to find density at a specific height]
#only("1")[
#voiceover("The key takeaways are:")
]
#only("2")[
#voiceover("Air density decreases exponentially with height, and this relationship is modeled by the formula rho air of h equals a times e to the power of negative b times h.")
]
#only("3")[
#voiceover("To find the density at a specific height, substitute the given values into the formula and simplify the calculation.")
]
]