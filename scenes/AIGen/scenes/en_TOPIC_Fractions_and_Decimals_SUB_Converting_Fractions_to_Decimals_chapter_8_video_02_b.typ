#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 3/25 to a Decimal]
#v(40pt)
What is $3/25$ as a decimal?
#v(40pt)
#only("-1")[a) $0.12$]#only("2-")[#text(fill:green)[a) $0.12$]]
#v(10pt)
#only("-2")[b) $0.13$]#only("3-")[#text(fill:red)[b) $0.13$]]
#v(10pt)
#only("-3")[c) $0.14$]#only("4-")[#text(fill:red)[c) $0.14$]]
#v(10pt)
#only("-4")[d) $0.15$]#only("5-")[#text(fill:red)[d) $0.15$]]

#only("1")[#voiceover("Great job! You've answered correctly. Let's go through the solution step by step to understand why 0.12 is the correct answer.")]
#only("2")[#voiceover("Option a, 0.12, is indeed the correct answer. Let's see why.")]
#only("3")[#voiceover("Option b, 0.13, is incorrect. It's slightly larger than the actual value.")]
#only("4")[#voiceover("Option c, 0.14, is also incorrect. It's even further from the true value.")]
#only("5")[#voiceover("Option d, 0.15, is incorrect as well. It's the largest option and quite far from the actual value.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply Both Parts]
#v(40pt)
#only("1-")[- Start with $3/25$]
#v(20pt)
#only("2-")[- Multiply both numerator and denominator by 4:]
#v(20pt)
#only("3-")[$(3 × 4) / (25 × 4) = 12/100$]

#only("1")[#voiceover("Let's start with our fraction, 3 over 25.")]
#only("2")[#voiceover("To make this fraction easier to convert to a decimal, we'll multiply both the numerator and denominator by 4.")]
#only("3")[#voiceover("This gives us 3 times 4 over 25 times 4, which equals 12 over 100.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[- $12/100 = 0.12$]
#v(20pt)
#only("2-")[- Move decimal point 2 places left ⬅️]
#v(20pt)
#only("3-")[- Result: $0.12$ 🎉]

#only("1")[#voiceover("Now, 12 over 100 is a much easier fraction to convert to a decimal.")]
#only("2")[#voiceover("To convert a fraction over 100 to a decimal, we simply move the decimal point two places to the left.")]
#only("3")[#voiceover("This gives us our final answer: 0.12.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

labels = ['0', '0.12', '0.25', '0.5', '0.75', '1']
positions = [0, 0.12, 0.25, 0.5, 0.75, 1]

fig, ax = plt.subplots(figsize=(10, 2))
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_yticks([])
ax.set_xticks(positions)
ax.set_xticklabels(labels)
ax.axvline(x=0.12, color='r', linestyle='--')
ax.annotate('3/25 = 0.12', xy=(0.12, 0.5), xytext=(0.12, 0.7),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.set_title('Position of 3/25 on Number Line')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of where 0.12 lies on a number line between 0 and 1. As you can see, it's slightly to the right of 0.1, which makes sense for the fraction 3 over 25.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We converted $3/25$ to a decimal 📊]
#v(20pt)
#only("2-")[- We multiplied both parts by 4 to get $12/100$ ✖️]
#v(20pt)
#only("3-")[- $12/100 = 0.12$ in decimal form 🎯]

#only("1")[#voiceover("To summarize, we converted the fraction 3 over 25 to a decimal.")]
#only("2")[#voiceover("We did this by multiplying both the numerator and denominator by 4, which gave us the equivalent fraction 12 over 100.")]
#only("3")[#voiceover("Finally, we recognized that 12 over 100 is equal to 0.12 in decimal form. Great job on solving this problem!")]
]