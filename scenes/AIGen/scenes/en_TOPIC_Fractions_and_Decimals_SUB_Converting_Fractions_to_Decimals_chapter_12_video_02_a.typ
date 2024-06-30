#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $19/4$ as a decimal?
#v(40pt)
#only("-1")[a) 4.75]#only("2-")[#text(fill:green)[a) 4.75]]
#v(10pt)
#only("-2")[b) 4.7]#only("3-")[#text(fill:red)[b) 4.7]]
#v(10pt)
#only("-3")[c) 4.25]#only("4-")[#text(fill:red)[c) 4.25]]
#v(10pt)
#only("-4")[d) 4.5]#only("5-")[#text(fill:red)[d) 4.5]]

#only("1")[#voiceover("Excellent work! You've chosen the correct answer. Let's go through the solution step-by-step to understand why 4.75 is the right decimal representation of 19/4.")]
#only("2")[#voiceover("Option a, 4.75, is indeed the correct answer. We'll see why in a moment.")]
#only("3")[#voiceover("Option b, 4.7, is incorrect. It's close, but not exact.")]
#only("4")[#voiceover("Option c, 4.25, is also incorrect. This would be the decimal form of 17/4, not 19/4.")]
#only("5")[#voiceover("Option d, 4.5, is incorrect as well. This is the decimal form of 18/4 or 9/2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 19/4 to a Decimal]
#v(40pt)
#only("1-")[Step 1: Multiply both numerator and denominator by 25]
#v(20pt)
#only("2-")[$19/4 = (19 times 25)/(4 times 25)$]
#v(20pt)
#only("3-")[$= 475/100$]

#only("1")[#voiceover("To convert 19/4 to a decimal, let's use a helpful trick. We'll multiply both the numerator and denominator by 25. This doesn't change the value of the fraction, but it makes it easier to convert to a decimal.")]
#only("2")[#voiceover("So, we have 19 over 4 equals 19 times 25 over 4 times 25.")]
#only("3")[#voiceover("When we calculate this, we get 475 over 100.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[From Fraction to Decimal]
#v(40pt)
#only("1-")[Step 2: Interpret 475/100 as a decimal]
#v(20pt)
#only("2-")[$475/100 = 4.75$]
#v(40pt)
#only("3-")[💡 The decimal point goes two places from the right in 475]

#only("1")[#voiceover("Now that we have 475 over 100, it's easy to convert to a decimal.")]
#only("2")[#voiceover("475 divided by 100 is simply 4.75.")]
#only("3")[#voiceover("Here's a tip: when dividing by 100, we just need to move the decimal point two places to the left in the numerator. So 475 becomes 4.75.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 5, 100)
y = x

# Create plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot line
ax.plot(x, y, 'b-', linewidth=2)

# Plot point
ax.plot(4.75, 4.75, 'ro', markersize=10)

# Add text
ax.text(4.8, 4.8, '(4.75, 4.75)', fontsize=12)

# Set limits
ax.set_xlim(0, 5)
ax.set_ylim(0, 5)

# Add labels and title
ax.set_xlabel('x', fontsize=14)
ax.set_ylabel('y', fontsize=14)
ax.set_title('Visual Representation of 19/4 = 4.75', fontsize=16)

# Add grid
ax.grid(True)

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of our result. On this graph, the point (4.75, 4.75) represents our fraction 19/4 on the line y equals x. This helps us visualize where 4.75 sits on the number line.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We converted $19/4$ to a decimal 📊]
#v(20pt)
#only("2-")[- We multiplied both numerator and denominator by 25 ✖️]
#v(20pt)
#only("3-")[- We got $475/100$, which equals $4.75$ 🎉]

#only("1")[#voiceover("To summarize, we converted the fraction 19/4 to a decimal.")]
#only("2")[#voiceover("We did this by multiplying both the numerator and denominator by 25, which gave us an equivalent fraction that's easier to convert to a decimal.")]
#only("3")[#voiceover("This resulted in 475 over 100, which equals 4.75. And that's our final answer! Great job working through this problem.")]
]