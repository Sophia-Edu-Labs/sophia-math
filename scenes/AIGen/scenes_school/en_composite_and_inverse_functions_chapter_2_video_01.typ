#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions in Real Life]
#v(40pt)
#only("1-")[- Combine simpler functions to model complex situations 🧩]
#v(20pt)
#only("2-")[Example: Temperature Conversion 🌡️]
#only("1")[
#voiceover("Composite functions allow us to model complex real-world situations by combining simpler functional relationships.")
]
#only("2")[
#voiceover("Let's consider an example: converting temperature from Fahrenheit to Kelvin.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Temperature Conversion]
#v(40pt)
#only("1-")[Fahrenheit to Celsius: $C(F) = (F - 32) dot 5/9$]
#v(20pt)
#only("2-")[Celsius to Kelvin: $K(C) = C + 273.15$]
#v(20pt)
#only("3-")[Fahrenheit to Kelvin: $K(F) = K(C(F))$]
#only("1")[
#voiceover("First, we have a function that converts Fahrenheit to Celsius: C of F equals open parenthesis F minus 32 close parenthesis times 5 over 9.")
]
#only("2")[
#voiceover("Next, we have a function that converts Celsius to Kelvin: K of C equals C plus 273.15.")
]
#only("3")[
#voiceover("To convert directly from Fahrenheit to Kelvin, we compose these functions: K of F equals K of C of F.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Composite Function]
#v(40pt)
#only("1-")[$ K(F) = K(C(F)) $]
#v(20pt)
#only("2-")[$ = C(F) + 273.15 $]
#v(20pt)
#only("3-")[$ = ((F - 32) dot 5/9) + 273.15 $]
#only("1")[
#voiceover("Let's break this down. K of F equals K of C of F.")
]
#only("2")[
#voiceover("Substituting the function for K, we get C of F plus 273.15.")
]
#only("3")[
#voiceover("Now, substituting the function for C, we arrive at the composite function: open parenthesis open parenthesis F minus 32 close parenthesis times 5 over 9 close parenthesis plus 273.15.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the functions
def C(F):
    return (F - 32) * 5/9

def K(C):
    return C + 273.15

def K_composite(F):
    return K(C(F))

# Generate F values
F = np.linspace(-100, 212, 100)

# Calculate C and K values
C_values = C(F)
K_values = K_composite(F)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(F, C_values, label='Fahrenheit to Celsius')
plt.plot(F, K_values, label='Fahrenheit to Kelvin')

# Add labels and legend
plt.xlabel('Fahrenheit')
plt.ylabel('Temperature')
plt.title('Temperature Conversion')
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the temperature conversion using the composite function. The blue line represents the conversion from Fahrenheit to Celsius, while the orange line represents the direct conversion from Fahrenheit to Kelvin using the composite function.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Composite functions combine simpler functions 🧩]
#v(20pt)
#only("2-")[- Model complex real-world situations 🌍]
#v(20pt)
#only("3-")[- Example: Temperature conversion 🌡️]
#only("1")[
#voiceover("In summary, composite functions allow us to combine simpler functions to model more complex real-world situations.")
]
#only("2")[
#voiceover("By breaking down a problem into smaller, more manageable parts, we can create a composite function that accurately represents the situation at hand.")
]
#only("3")[
#voiceover("The temperature conversion example demonstrates how composite functions can be used to simplify and streamline calculations in real-life applications.")
]
]