#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Current Formula]
#v(40pt)

#only("1-")[Which formula correctly represents current?]
#v(20pt)
#only("-1")[a) $I = Q t$]#only("2-")[#text(fill:red)[a) $I = Q t$]]
#v(10pt)
#only("-2")[b) $I = Q/t$]#only("3-")[#text(fill:green)[b) $I = Q/t$]]
#v(10pt)
#only("-3")[c) $I = t/Q$]#only("4-")[#text(fill:red)[c) $I = t/Q$]]
#v(10pt)
#only("-4")[d) $I = Q+t$]#only("5-")[#text(fill:red)[d) $I = Q+t$]]

#only("1")[#voiceover("Not quite. Let's review the correct solution and break down each option to understand why.")]
#only("2")[#voiceover("Option a, I equals Q t, is incorrect. This formula multiplies charge and time, which doesn't give us current.")]
#only("3")[#voiceover("Option b, I equals Q divided by t, is the correct formula for electric current. Current is defined as the rate of flow of electric charge, which is mathematically expressed as charge divided by time.")]
#only("4")[#voiceover("Option c, I equals t divided by Q, is incorrect. This inverts the correct relationship between charge and time.")]
#only("5")[#voiceover("Option d, I equals Q plus t, is also incorrect. Adding charge and time doesn't give us a meaningful physical quantity in this context.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Electric Current]
#v(20pt)
#only("1-")[
#align(center)[
$I = Q/t$
]
]
#v(20pt)
#only("1")[#voiceover("Let's delve deeper into the correct formula for electric current: I equals Q divided by t.")]
#only("2")[#voiceover("In this equation, I represents the current measured in Amperes, Q is the electric charge in Coulombs, and t is the time in seconds.")]
]
```

**Slide 2:**
```typst

#slide()[
#text(size: 30pt, weight: "bold")[Understanding Electric Current]
#v(20pt)
#only("1-")[Where:]
#v(10pt)
- $I$: Current (Amperes, A) ⚡
#v(10pt)
- $Q$: Charge (Coulombs, C) 🔋
#v(10pt)
- $t$: Time (Seconds, s) ⏱️
#only("1")[#voiceover("In this equation, I represents the current measured in Amperes, Q is the electric charge in Coulombs, and t is the time in seconds.")]
#only("2")[#voiceover("This formula essentially tells us that current is the amount of charge flowing past a point in a circuit per unit of time.")]
]
```

In the second slide, the statements start at 1 again as requested.

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Electric Current]
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
t = 2  # fixed time

I = current(Q, t)

plt.figure(figsize=(8, 6))
plt.plot(Q, I, 'b-', linewidth=2)
plt.title('Current vs Charge (at constant time)')
plt.xlabel('Charge (C)')
plt.ylabel('Current (A)')
plt.grid(True)
plt.annotate('I increases linearly\nwith Q at constant t', 
             xy=(5, 2.5), xytext=(6, 1.5),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()

```,
width: 360pt),
)
]
]
]

#only("1")[#voiceover("Here's a graph that shows how current changes with charge when time is kept constant. As you can see, there's a linear relationship - as charge increases, so does the current, given the same amount of time.")]
#only("2")[#voiceover("This visual representation helps us understand why I equals Q divided by t makes sense. More charge flowing in the same amount of time results in a higher current.")]
#only("3")[#voiceover("Remember, in real circuits, we often deal with a constant current over time, but this graph helps us understand the fundamental relationship between charge, time, and current.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(20pt)
#only("1-")[- Current ($I$) is charge ($Q$) per unit time ($t$) 🔑]
#v(10pt)
#only("2-")[- $I = Q/t$ is the correct formula ✅]
#v(10pt)
#only("3-")[- Units: Amperes = Coulombs / Seconds 📏]
#v(10pt)
#only("4-")[- More charge in less time = Higher current 📈]

#only("1")[#voiceover("Let's summarize what we've learned. First, electric current is defined as the amount of charge flowing per unit time.")]
#only("2")[#voiceover("The correct formula for this relationship is I equals Q divided by t.")]
#only("3")[#voiceover("In terms of units, we measure current in Amperes, which is equivalent to Coulombs per Second.")]
#only("4")[#voiceover("Finally, remember that more charge flowing in less time results in a higher current. This understanding is crucial for analyzing and designing electrical circuits.")]
#only("5")[#voiceover("Great job on mastering this fundamental concept of electricity! Keep up the good work!")]
]