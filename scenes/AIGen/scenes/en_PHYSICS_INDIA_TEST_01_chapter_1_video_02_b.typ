#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Current Formula]
#v(40pt)
Which formula correctly represents current?
#v(20pt)
#only("-1")[a) $I = Q t$]#only("2-")[#text(fill:red)[a) $I = Q t$]]
#v(10pt)
#only("-2")[b) $I = Q/t$]#only("3-")[#text(fill:green)[b) $I = Q/t$]]
#v(10pt)
#only("-3")[c) $I = t/Q$]#only("4-")[#text(fill:red)[c) $I = t/Q$]]
#v(10pt)
#only("-4")[d) $I = Q + t$]#only("5-")[#text(fill:red)[d) $I = Q + t$]]

#only("1")[#voiceover("Great job! You've correctly identified the formula for electric current. Let's break down each option to understand why.")]
#only("2")[#voiceover("Option a, I equals Q t, is incorrect. This formula multiplies charge and time, which doesn't give us current.")]
#only("3")[#voiceover("Option b, I equals Q divided by t, is correct! This is the proper formula for electric current. Current is defined as the rate of flow of electric charge, which is mathematically expressed as charge divided by time.")]
#only("4")[#voiceover("Option c, I equals t divided by Q, is incorrect. This inverts the correct relationship between charge and time for current.")]
#only("5")[#voiceover("Option d, I equals Q plus t, is also incorrect. Adding charge and time doesn't give us a meaningful physical quantity in this context.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Electric Current]
#v(40pt)
#only("1-")[#text(size: 24pt, weight: "bold")[Current ($I$) = Charge ($Q$) / Time ($t$)]]
#v(20pt)
#only("2-")[- Measures the flow rate of electric charge ⚡]
#v(10pt)
#only("3-")[- Units: Amperes (A) = Coulombs (C) / Seconds (s)]
#v(10pt)
#only("4-")[- Example: 10 C flowing in 2 s → $I = 10 "C" / 2 "s" = 5 "A"$]

#only("1")[#voiceover("Let's delve deeper into the correct formula for electric current: I equals Q divided by t.")]
#only("2")[#voiceover("Electric current measures the flow rate of electric charge. It tells us how much charge is moving through a point in a circuit per unit of time.")]
#only("3")[#voiceover("The unit of current is the Ampere, often shortened to 'Amp'. It's defined as Coulombs per second, where Coulombs measure electric charge and seconds measure time.")]
#only("4")[#voiceover("Here's a simple example: if 10 Coulombs of charge flow through a wire in 2 seconds, the current would be 5 Amperes. We calculate this by dividing 10 Coulombs by 2 seconds.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Current]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def current(Q, t):
    return Q / t

Q = np.linspace(0, 10, 100)
t = 2  # fixed time of 2 seconds

I = current(Q, t)

plt.figure(figsize=(10, 6))
plt.plot(Q, I, 'b-', linewidth=2)
plt.title('Current vs Charge (for t = 2s)')
plt.xlabel('Charge (Coulombs)')
plt.ylabel('Current (Amperes)')
plt.grid(True)
plt.annotate('I = Q/t', xy=(5, 2.5), xytext=(6, 1.5),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()

```,
width: 360pt),
)
]
]
]

#only("1")[#voiceover("This graph illustrates how current changes with charge for a fixed time of 2 seconds. As you can see, the relationship is linear - as charge increases, current increases proportionally.")]
#only("2-")[
- Linear relationship between $Q$ and $I$ (for constant $t$)
- Slope represents $1/t$
- Increasing $Q$ → Increasing $I$
]

#only("2")[#voiceover("The linear relationship shown here is a direct result of our formula, I equals Q divided by t. The slope of this line represents one over t, which in this case is one-half. As the amount of charge increases, the current increases proportionally.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Current ($I$) measures rate of charge flow 🔋→]
#v(20pt)
#only("2-")[- Correct formula: $I = Q/t$ ✅]
#v(20pt)
#only("3-")[- Units: Amperes (A) = Coulombs (C) / Seconds (s) ⏱️]
#v(20pt)
#only("4-")[- Linear relationship between $Q$ and $I$ (for constant $t$) 📈]

#only("1")[#voiceover("Let's summarize what we've learned. First, electric current measures the rate of charge flow in a circuit.")]
#only("2")[#voiceover("The correct formula for current is I equals Q divided by t. Remember this - it's fundamental to understanding electricity!")]
#only("3")[#voiceover("The units of current are Amperes, which is equivalent to Coulombs per second.")]
#only("4")[#voiceover("Finally, for a fixed time, there's a linear relationship between charge and current. More charge flowing in the same time means a higher current.")]
]