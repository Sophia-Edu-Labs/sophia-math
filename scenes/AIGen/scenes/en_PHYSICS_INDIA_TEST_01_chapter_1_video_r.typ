#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Calculating Electric Current ⚡]
#v(40pt)
#only("1-")[- Electric current is fundamental in circuits 🔌]
#only("2-")[- It measures the flow of electric charge ⏩]
#only("3-")[- Let's review how to calculate it 🧮]
#only("1")[
#voiceover("Let's review the concept of electric current. Electric current is a fundamental quantity in electrical circuits.")
]
#only("2")[
#voiceover("It measures the flow of electric charge through a given point in a circuit.")
]
#only("3")[
#voiceover("We'll review how to calculate electric current step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Current Formula]
#v(40pt)
#only("1-")[
#align(center)[
$I = Q/t$
]
]
#v(20pt)
#only("2-")[Where:]
#only("3-")[- $I$: Electric current (amperes, A)]
#only("4-")[- $Q$: Amount of charge (coulombs, C)]
#only("5-")[- $t$: Time interval (seconds, s)]
#only("1")[
#voiceover("The formula for electric current is I equals Q divided by t.")
]
#only("2")[
#voiceover("Let's break down what each symbol represents:")
]
#only("3")[
#voiceover("I represents the electric current, measured in amperes, abbreviated as A.")
]
#only("4")[
#voiceover("Q represents the amount of charge that flows, measured in coulombs, abbreviated as C.")
]
#only("5")[
#voiceover("And t represents the time interval over which the charge flows, measured in seconds.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Current]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create data for the plot
t = np.linspace(0, 10, 100)
Q = 5 * t  # Assuming a constant current of 5 A

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(t, Q, 'b-', linewidth=2)
plt.fill_between(t, Q, alpha=0.2)
plt.xlabel('Time (s)', fontsize=12)
plt.ylabel('Charge (C)', fontsize=12)
plt.title('Charge vs. Time for Constant Current', fontsize=14)
plt.grid(True)

# Add annotation for slope
plt.annotate('Slope = Current', xy=(5, 25), xytext=(6, 15),
             arrowprops=dict(facecolor='black', shrink=0.05),
             fontsize=10)

plt.show()

```,
width: 360pt),
caption: []
)
]
]
]
#only("1")[
#voiceover("This graph visualizes the relationship between charge and time for a constant current. The slope of this line represents the current. As we can see, the amount of charge increases linearly with time, which is characteristic of a constant current.")
]
#v(20pt)
#only("2-")[Current = Slope of the line]
#only("3-")[Steeper slope → Higher current]
#only("2")[
#voiceover("The current is represented by the slope of this line.")
]
#only("3")[
#voiceover("A steeper slope would indicate a higher current, meaning more charge flows in the same amount of time.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Current ($I$) = Charge ($Q$) / Time ($t$) ⚡]
#only("2-")[- Units: Amperes (A) = Coulombs (C) / Seconds (s)]
#only("3-")[- Visualized as slope on Q-t graph 📈]
#only("4-")[- Key in understanding circuit behavior 🔌]
#only("1")[
#voiceover("To recap, we calculate electric current by dividing the amount of charge by the time it takes to flow.")
]
#only("2")[
#voiceover("The units are amperes, which is equal to coulombs per second.")
]
#only("3")[
#voiceover("We can visualize current as the slope on a charge versus time graph.")
]
#only("4")[
#voiceover("Understanding how to calculate current is key in analyzing and designing electrical circuits.")
]
]