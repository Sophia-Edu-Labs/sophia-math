#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

#only("1-")[
$5/6 × 1/2 = ?$
]

#v(20pt)

#only("2-")[
$5/6 × 1/2 = (5 × 1) / (6 × 2)$
]

#v(20pt)

#only("3-")[
$= 5 / 12$
]

#v(20pt)

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 4))

# Create data for the pie chart
sizes = [5, 7]
labels = ['5/12', '7/12']
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

# Plot the pie chart
ax.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

plt.title('Fraction 5/12 Visualized')
plt.show()

```,
width: 300pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("That's not quite right. Let's walk through the correct solution step by step. We start with the problem: multiply five-sixths by one-half.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 5 by 1 in the numerator, and 6 by 2 in the denominator.")
]

#only("3")[
#voiceover("This gives us five over twelve as our final answer. Let's simplify: five divided by twelve can't be reduced further, so this is our simplified result.")
]

#only("4")[
#voiceover("To visualize this, let's look at a pie chart. The blue section represents five-twelfths of the whole pie. This helps us see that five-twelfths is slightly less than half.")
]
]