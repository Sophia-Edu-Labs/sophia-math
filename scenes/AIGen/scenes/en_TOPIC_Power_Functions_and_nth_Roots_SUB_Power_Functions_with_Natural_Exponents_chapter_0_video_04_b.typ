#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Power Functions with Natural Exponents]
#v(40pt)
#text(size: 24pt)[Exercise 3: What is the value of $5^2$?]
#v(20pt)
#only("1")[
#voiceover("Nice try! Let's go through the correct solution step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding $5^2$]
#v(40pt)
#only("1-")[- $5^2$ means $5$ multiplied by itself.]
#v(20pt)
#only("2-")[- $5^2 = 5 dot 5$]
#v(20pt)
#only("3-")[- $5 dot 5 = 25$]
#only("1")[
#voiceover("First, let's understand what $5^2$ means. It means 5 multiplied by itself.")
]
#only("2")[
#voiceover("So, $5^2$ is equal to $5 \times 5$.")
]
#only("3")[
#voiceover("And when we multiply 5 by 5, we get 25.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing $5^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a simple bar chart to visualize 5^2
fig, ax = plt.subplots()
bars = ax.bar(['5^2'], [25], color='skyblue')

# Add labels and title
ax.set_ylabel('Value')
ax.set_title('Visualization of $5^2$')

# Display the value on top of the bar
for bar in bars:
    yval = bar.get_height()
    ax.text(bar.get_x() + bar.get_width()/2, yval + 1, int(yval), ha='center', va='bottom')

plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("To visualize $5^2$, we can think of it as a bar representing the value 25.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $5^2 = 25$]
#v(20pt)
#only("1")[
#voiceover("So, in conclusion, the value of $5^2$ is 25. Well done!")
]
]