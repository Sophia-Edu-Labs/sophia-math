#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Determine if $f(x) = (x^2 - 1)/(x - 1)$ is continuously extendable at $x = 1$.]
#only("1")[
#voiceover("Great job! That's the correct approach. Let's go through the solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Simplify]
#v(40pt)
#only("1-")[$ f(x) = (x^2 - 1)/(x - 1) $]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Factor]]]
#v(10pt)
#only("3-")[$ f(x) = ((x - 1)(x + 1))/(x - 1) $]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Cancel]]]
#v(10pt)
#only("5-")[$ f(x) = x + 1, x != 1 $]
#only("1")[
#voiceover("We start with the function f of x equals x squared minus 1 over x minus 1.")
]
#only("2")[
#voiceover("First, we factor the numerator.")
]
#only("3")[
#voiceover("This gives us x minus 1 times x plus 1 over x minus 1.")
]
#only("4")[
#voiceover("Now, we can cancel the x minus 1 terms in the numerator and denominator.")
]
#only("5")[
#voiceover("This simplifies the function to x plus 1, for all x not equal to 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Check Continuity]
#v(40pt)
#only("1-")[$ lim_(x -> 1) (x + 1) = 2 $]
#v(20pt)
#only("2-")[Define $f(1) = 2$]
#v(20pt)
#only("3-")[Now, $ lim_(x -> 1) f(x) = f(1) = 2 $]
#v(20pt)
#only("4-")[Therefore, $f(x)$ is continuously extendable at $x = 1$ ✅]
#only("1")[
#voiceover("Now, let's check the limit as x approaches 1. The limit of x plus 1 as x approaches 1 is 2.")
]
#only("2")[
#voiceover("So, we can define f of 1 to be equal to 2.")
]
#only("3")[
#voiceover("With this definition, the limit of f of x as x approaches 1 is equal to f of 1, which is 2.")
]
#only("4")[
#voiceover("Therefore, the function f of x is continuously extendable at x equals 1.")
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

# Define the function
def f(x):
    return np.where(x != 1, (x**2 - 1) / (x - 1), 2)

# Generate x values
x = np.linspace(-2, 4, 1000)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, f(x), color='blue', label='f(x)')
plt.scatter(1, 2, color='red', label='Continuous Extension at x=1')

# Improve aesthetics
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.axhline(0, color='grey', lw=1)
plt.axvline(0, color='grey', lw=1)
plt.legend()
plt.title('Plot of the function f(x)')
plt.xlabel('x')
plt.ylabel('f(x)')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the function. The blue line shows the graph of f of x, and the red dot indicates the continuous extension at x equals 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Simplify the function 🧮]
#v(20pt)
#only("2-")[- Check the limit at the point 🔍]
#v(20pt)
#only("3-")[- Define the function value at the point 📝]
#v(20pt)
#only("4-")[- Verify continuity 📈]
#only("1")[
#voiceover("To summarize, we first simplified the function by factoring and cancelling terms.")
]
#only("2")[
#voiceover("Then, we checked the limit of the function as x approached 1.")
]
#only("3")[
#voiceover("We defined the function value at x equals 1 to be equal to this limit.")
]
#only("4")[
#voiceover("Finally, we verified that with this definition, the limit equals the function value at x equals 1, making the function continuously extendable at this point.")
]
]