#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Compound Interest Limit]
#v(40pt)
#only("-1")[- Given: $a_n = (1 + 1/n)^n$]
#v(20pt)
#only("2-")[- Goal: Find $lim_(n -> infinity) a_n$]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step.")
]
#only("2")[
#voiceover("We are given the sequence a sub n equals open parenthesis 1 plus 1 over n close parenthesis to the power of n. Our goal is to find the limit of this sequence as n approaches infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Recognize the Limit]
#v(40pt)
#only("-1")[- $a_n = (1 + 1/n)^n$]
#v(20pt)
#only("2-")[- This is the definition of $e$!]
// The recognition that this is the definition of e is stated from slide 2 onward
#only("1")[
#voiceover("The first step is to recognize what this limit represents. If you look closely, this is actually the definition of the mathematical constant e!")
]
#only("2")[
#voiceover("e is defined as the limit of open parenthesis 1 plus 1 over n close parenthesis to the power of n, as n approaches infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: State the Result]
#v(40pt)
#only("-1")[- $a_n = (1 + 1/n)^n$]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) (1 + 1/n)^n = e$]
// The final result is stated from slide 2 onward
#only("1")[
#voiceover("So, we can directly state the result. The limit of our sequence a sub n, as n approaches infinity, is equal to e.")
]
#only("2")[
#voiceover("In mathematical notation, this is written as the limit of open parenthesis 1 plus 1 over n close parenthesis to the power of n, as n approaches infinity, equals e.")
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
def a(n):
    return (1 + 1/n)**n

# Generate n values
n = np.linspace(1, 100, 100)

# Calculate the corresponding a_n values
a_n = a(n)

# Create the plot
plt.figure(figsize=(10, 6))
plt.plot(n, a_n, color='blue', label='a_n')
plt.axhline(np.e, color='red', linestyle='--', label='e')

# Improve aesthetics
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.legend()
plt.title('Convergence of $(1 + 1/n)^n$ to $e$')
plt.xlabel('n')
plt.ylabel('a_n')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
// The graph shows the convergence of the sequence to e as n increases
#only("1")[
#voiceover("Here's a visualization of what's happening. As n gets larger and larger, the sequence a sub n, shown in blue, gets closer and closer to the value of e, shown by the red dashed line.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Given sequence: $a_n = (1 + 1/n)^n$ 📈]
#v(20pt)
#only("2-")[- This is the definition of $e$ 🔍]
#v(20pt) 
#only("3-")[- Therefore, $lim_(n -> infinity) a_n = e$ ✅]
// The key points are summarized using emojis
#only("1")[
#voiceover("To summarize, we were given the sequence a sub n equals open parenthesis 1 plus 1 over n close parenthesis to the power of n.")
]
#only("2")[
#voiceover("We recognized that this is the definition of the mathematical constant e.")
]
#only("3")[
#voiceover("Therefore, we can conclude that the limit of a sub n, as n approaches infinity, is equal to e. Great work!")
]
]