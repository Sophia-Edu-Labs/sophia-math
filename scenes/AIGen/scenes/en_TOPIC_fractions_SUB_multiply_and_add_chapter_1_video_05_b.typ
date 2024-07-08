#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

#only("1-")[- Given: $2/7 times 4/6$]
#v(20pt)

#only("2-")[- Step 1: Multiply numerators]
#only("3-")[  $2 times 4 = 8$]
#v(20pt)

#only("4-")[- Step 2: Multiply denominators]
#only("5-")[  $7 times 6 = 42$]
#v(20pt)

#only("6-")[- Result: $8/42$]
#v(20pt)

#only("7-")[- Simplify: $8/42 = 4/21$]

#only("1")[
#voiceover("That's not quite right. Let's walk through the correct solution step by step.")
]

#only("2")[
#voiceover("To multiply fractions, we start by multiplying the numerators together.")
]

#only("3")[
#voiceover("In this case, we multiply 2 by 4, which gives us 8.")
]

#only("4")[
#voiceover("Next, we multiply the denominators together.")
]

#only("5")[
#voiceover("Here, we multiply 7 by 6, which equals 42.")
]

#only("6")[
#voiceover("So, our initial result is 8 over 42.")
]

#only("7")[
#voiceover("We can simplify this fraction by dividing both the numerator and denominator by their greatest common factor, which is 2. This gives us our final answer: 4 over 21.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axis
fig, ax = plt.subplots(figsize=(10, 6))

# Define the fractions
frac1 = [2, 7]
frac2 = [4, 6]
result = [8, 42]
simplified = [4, 21]

# Create bar plots for each fraction
x = np.arange(4)
width = 0.35

ax.bar(x[0], frac1[0]/frac1[1], width, label='2/7', color='skyblue')
ax.bar(x[1], frac2[0]/frac2[1], width, label='4/6', color='lightgreen')
ax.bar(x[2], result[0]/result[1], width, label='8/42', color='salmon')
ax.bar(x[3], simplified[0]/simplified[1], width, label='4/21', color='purple')

# Customize the plot
ax.set_ylabel('Fraction Value')
ax.set_title('Multiplication of Fractions')
ax.set_xticks(x)
ax.set_xticklabels(['2/7', '4/6', '8/42', '4/21'])
ax.legend()

# Add value labels on top of each bar
for i, v in enumerate([frac1[0]/frac1[1], frac2[0]/frac2[1], result[0]/result[1], simplified[0]/simplified[1]]):
    ax.text(i, v, f'{v:.3f}', ha='center', va='bottom')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our fraction multiplication. The blue bar represents 2 over 7, which is approximately 0.286.")
]

#only("2")[
#voiceover("The green bar shows 4 over 6, or about 0.667.")
]

#only("3")[
#voiceover("When we multiply these fractions, we get 8 over 42, shown by the salmon-colored bar. This is about 0.190.")
]

#only("4")[
#voiceover("Finally, the purple bar represents our simplified fraction, 4 over 21, which is the same value as 8 over 42.")
]

#only("5")[
#voiceover("This visual helps us see that multiplying fractions often results in a smaller number, as we can see the purple bar is shorter than both the blue and green bars.")
]
]