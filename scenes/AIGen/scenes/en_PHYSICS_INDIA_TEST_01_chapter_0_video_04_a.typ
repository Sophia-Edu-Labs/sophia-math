#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Charge and Current]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create data
t = np.linspace(0, 4, 100)
I = 3 * np.ones_like(t)

# Create plot
fig, ax = plt.subplots(figsize=(10, 6))

# Plot current
ax.plot(t, I, 'b-', linewidth=2, label='Current')

# Fill area under the curve
ax.fill_between(t, 0, I, alpha=0.2)

# Set labels and title
ax.set_xlabel('Time (s)', fontsize=12)
ax.set_ylabel('Current (A)', fontsize=12)
ax.set_title('Constant Current over Time', fontsize=14)

# Set axis limits
ax.set_xlim(0, 4)
ax.set_ylim(0, 4)

# Add grid
ax.grid(True, linestyle='--', alpha=0.7)

# Add legend
ax.legend(fontsize=10)

# Show plot
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: []
)
]
]
]

#only("2-")[
- Current: $I = 3$ A
- Time: $t = 4$ s
]

#only("3-")[
- Charge: $Q = I × t$
]

#only("4-")[
- $Q = 3 A × 4 s = 12 C$
]

#only("1")[
#voiceover("Great job on solving this problem! Let's walk through the solution step by step. We're dealing with electric current and charge here.")
]

#only("2")[
#voiceover("In this problem, we have a current of 3 amperes flowing through a wire for 4 seconds. Let's visualize this with a graph showing constant current over time.")
]

#only("3")[
#voiceover("To find the charge that has flowed, we use the relationship between current, time, and charge. The charge Q is equal to the current I multiplied by the time t.")
]

#only("4")[
#voiceover("Now, let's plug in our values. We have a current of 3 amperes and a time of 4 seconds. So, Q equals 3 amperes times 4 seconds, which gives us 12 coulombs.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Solution]
#v(40pt)

#only("1-")[
- 1 A = 1 C/s
]

#only("2-")[
- 3 A × 4 s = (3 C/s) × 4 s = 12 C
]

#only("3-")[
#text(size: 24pt, weight: "bold")[Final Answer: 12 Coulombs ⚡]
]

#only("1")[
#voiceover("Let's break this down further. Remember, 1 ampere is defined as 1 coulomb per second.")
]

#only("2")[
#voiceover("So when we multiply 3 amperes by 4 seconds, it's like saying 3 coulombs per second times 4 seconds. The seconds cancel out, leaving us with 12 coulombs.")
]

#only("3")[
#voiceover("Therefore, our final answer is that 12 coulombs of charge have flowed through the wire. This problem demonstrates how current, time, and charge are related in electrical circuits.")
]
]