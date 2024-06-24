#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Current Calculation]
#v(40pt)

#only("1-")[Given:
- Charge: 10 coulombs
- Time: 2 seconds]

#v(20pt)

#only("2-")[Formula: $I = Q / t$]

#v(20pt)

#only("3-")[Where:
- $I$ = Current (amperes, A)
- $Q$ = Charge (coulombs, C)
- $t$ = Time (seconds, s)]

#only("1")[
#voiceover("Great job on solving this problem! Let's walk through the solution step by step. We're given that 10 coulombs of charge flows through a wire in 2 seconds.")
]

#only("2")[
#voiceover("To find the current, we'll use the formula I equals Q divided by t, where I is the current in amperes,")
]

#only("3")[
#voiceover("Q is the charge in coulombs, and t is the time in seconds.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)

#only("1-")[Substituting values:
$I = 10 "C" / 2 "s"$]

#v(20pt)

#only("2-")[Simplifying:
$I = 5 "A"$]

#v(20pt)

#only("3-")[Result: The current is 5 amperes ⚡]

#only("1")[
#voiceover("Now, let's substitute our known values into the formula. We have 10 coulombs for Q and 2 seconds for t.")
]

#only("2")[
#voiceover("Simplifying this, we get I equals 5 amperes.")
]

#only("3")[
#voiceover("Therefore, the current flowing through the wire is 5 amperes.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(20pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create data for the line
x = np.linspace(0, 2, 100)
y = 5 * x

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, 'b-', linewidth=2, label='I = 5A')

# Add points
ax.plot(0, 0, 'ro', markersize=10)  # Start point
ax.plot(2, 10, 'ro', markersize=10)  # End point

# Add annotations
ax.annotate('Start\n(0s, 0C)', xy=(0, 0), xytext=(0.2, -2),
            arrowprops=dict(arrowstyle='->'))
ax.annotate('End\n(2s, 10C)', xy=(2, 10), xytext=(1.7, 11),
            arrowprops=dict(arrowstyle='->'))

# Customize the plot
ax.set_xlabel('Time (s)')
ax.set_ylabel('Charge (C)')
ax.set_title('Charge vs Time for I = 5A')
ax.grid(True)
ax.legend()

# Set axis limits
ax.set_xlim(0, 2.5)
ax.set_ylim(0, 12)

plt.tight_layout()
plt.show()

```
,
width: 360pt),
caption: [Charge vs Time for I = 5A],
)
]
]
]

#only("1")[
#voiceover("Let's visualize this concept. This graph shows the relationship between charge and time for a current of 5 amperes. The blue line represents the constant current. We start at 0 seconds with 0 coulombs, and after 2 seconds, we've accumulated 10 coulombs of charge. The slope of this line is our current, 5 amperes.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[- Current (I) is charge (Q) per unit time (t) 🕒]
#v(20pt)
#only("2-")[- Formula: $I = Q / t$ ⚡]
#v(20pt)
#only("3-")[- Units: Amperes (A) = Coulombs (C) / Seconds (s) 📏]

#only("1")[
#voiceover("Let's recap the key points. First, current is defined as the amount of charge flowing per unit time.")
]

#only("2")[
#voiceover("We express this mathematically with the formula I equals Q divided by t.")
]

#only("3")[
#voiceover("The units for current are amperes, which is equivalent to coulombs per second. Understanding these relationships is crucial for solving electric current problems.")
]
]