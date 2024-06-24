#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Electric Current]
#v(40pt)

#only("1-")[
#align(center)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create figure and axis
fig, ax = plt.subplots(figsize=(10, 6))

# Define data
time = np.linspace(0, 8, 100)
current = 2.5 * np.ones_like(time)

# Plot current vs time
ax.plot(time, current, 'b-', linewidth=2)

# Fill area under the curve
ax.fill_between(time, 0, current, alpha=0.2)

# Set labels and title
ax.set_xlabel('Time (seconds)', fontsize=12)
ax.set_ylabel('Current (amperes)', fontsize=12)
ax.set_title('Electric Current over Time', fontsize=14)

# Add text for charge
ax.text(4, 1, 'Charge = Area under the curve', 
        horizontalalignment='center', fontsize=12)

# Add arrow pointing to the area
ax.annotate('', xy=(4, 0.5), xytext=(4, 1.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Set y-axis limit
ax.set_ylim(0, 3)

# Add grid
ax.grid(True, linestyle='--', alpha=0.7)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Current vs Time]
)
]
]
]

#only("2-")[
- Given: Current $I = 2.5$ A, Time $t = 8$ s
]

#only("3-")[
- Formula: $Q = I × t$
]

#only("4-")[
- Calculation: $Q = 2.5 A × 8 s = 20$ C
]

#only("1")[
#voiceover("Excellent work on solving this problem! Let's walk through the solution step by step. We're dealing with electric current and charge here.")
]

#only("2")[
#voiceover("In this problem, we're given two pieces of information: the current, which is 2.5 amperes, and the time, which is 8 seconds.")
]

#only("3")[
#voiceover("To find the charge that passes through the circuit, we need to use the formula that relates charge, current, and time. This formula is Q equals I times t, where Q is the charge in coulombs, I is the current in amperes, and t is the time in seconds.")
]

#only("4")[
#voiceover("Now, let's plug in our values. We have 2.5 amperes for I, and 8 seconds for t. So, Q equals 2.5 amperes times 8 seconds, which gives us 20 coulombs.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Result]
#v(40pt)

#only("1-")[
- 1 Coulomb = 1 Ampere × 1 Second
]

#only("2-")[
- 20 C = flow of $1.248 × 10^20$ electrons 🔬
]

#only("3-")[
- Equivalent to charging a typical smartphone 📱
]

#only("1")[
#voiceover("Let's understand what this result means. One coulomb is defined as the amount of charge transferred by a current of one ampere in one second.")
]

#only("2")[
#voiceover("Our result of 20 coulombs represents a significant amount of charge. In fact, it's equivalent to the flow of about 1.248 times 10 to the power of 20 electrons!")
]

#only("3")[
#voiceover("To put this into perspective, 20 coulombs is roughly the amount of charge needed to fully charge a typical smartphone battery. Isn't it fascinating how much is happening at the microscopic level when we use our everyday devices?")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[
- Charge (Q) = Current (I) × Time (t)
]

#only("2-")[
- Units: Coulombs (C) = Amperes (A) × Seconds (s)
]

#only("3-")[
- Always check your units! ✅
]

#only("4-")[
- Real-world applications: batteries, electronics ⚡
]

#only("1")[
#voiceover("Let's recap the key points from this problem. First and foremost, we used the formula: Charge equals Current times Time.")
]

#only("2")[
#voiceover("It's crucial to remember the units: Coulombs equal Amperes times Seconds.")
]

#only("3")[
#voiceover("Always make sure to check your units when solving problems like this. It's a great way to catch potential errors.")
]

#only("4")[
#voiceover("Finally, remember that these concepts have real-world applications in batteries, electronics, and many other areas of technology. Understanding electric current and charge is fundamental to many aspects of our modern world!")
]
]