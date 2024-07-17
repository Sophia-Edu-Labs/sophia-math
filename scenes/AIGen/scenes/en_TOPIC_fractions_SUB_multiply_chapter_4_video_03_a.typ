#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
- Exercise: Multiply $2/3$ by $4/7$
- Options:
#v(20pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $8/21$]#only("2-")[#text(fill:green)[a) $8/21$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $7/12$]#only("3-")[#text(fill:red)[b) $7/12$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $12/21$]#only("4-")[#text(fill:red)[c) $12/21$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $8/14$]#only("5-")[#text(fill:red)[d) $8/14$]]
#only("1")[#voiceover("Great job! Let's go over the correct solution step-by-step.")]
#only("2")[#voiceover("Option a) 8/21 is correct. To multiply fractions, we multiply the numerators together and the denominators together. So, 2/3 times 4/7 equals 2 dot 4 over 3 dot 7, which simplifies to 8/21.")]
#only("3")[#voiceover("Option b) 7/12 is incorrect. This result might come from adding the numerators and denominators instead of multiplying them.")]
#only("4")[#voiceover("Option c) 12/21 is incorrect. This result might come from multiplying the numerators correctly but making a mistake in the denominator.")]
#only("5")[#voiceover("Option d) 8/14 is incorrect. This result might come from multiplying the numerators correctly but making a mistake in the denominator.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Step 1: Multiply the numerators: $2 dot 4 = 8$]
#v(20pt)
#only("2-")[- Step 2: Multiply the denominators: $3 dot 7 = 21$]
#v(20pt)
#only("3-")[- Step 3: Combine the results: $8/21$]
#v(20pt)
#only("1")[#voiceover("First, we multiply the numerators. Two times four equals eight.")]
#only("2")[#voiceover("Next, we multiply the denominators. Three times seven equals twenty-one.")]
#only("3")[#voiceover("Finally, we combine the results to get eight over twenty-one.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Multiplication]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Define the fractions
numerator1, denominator1 = 2, 3
numerator2, denominator2 = 4, 7

# Calculate the product
product_numerator = numerator1 * numerator2
product_denominator = denominator1 * denominator2

# Plot the fractions and their product
fig, ax = plt.subplots(figsize=(8, 6))
ax.bar([1, 2, 3], [numerator1, numerator2, product_numerator], width=0.4, label='Numerators', color='blue')
ax.bar([1.5, 2.5, 3.5], [denominator1, denominator2, product_denominator], width=0.4, label='Denominators', color='orange')
ax.set_xticks([1.25, 2.25, 3.25])
ax.set_xticklabels(['$2/3$', '$4/7$', '$8/21$'])
ax.legend()
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual representation:]
#v(20pt)
#only("2-")[- The blue bars represent the numerators.]
#only("3-")[- The orange bars represent the denominators.]
#only("4-")[- The final fraction is $8/21$.]

#only("1")[#voiceover("Let's visualize the multiplication of fractions.")]
#only("2")[#voiceover("In this bar chart, the blue bars represent the numerators.")]
#only("3")[#voiceover("The orange bars represent the denominators.")]
#only("4")[#voiceover("The final fraction, eight over twenty-one, is shown on the right.")]
]