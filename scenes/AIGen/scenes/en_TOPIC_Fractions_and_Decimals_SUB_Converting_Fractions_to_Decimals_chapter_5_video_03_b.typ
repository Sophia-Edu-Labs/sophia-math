#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite, but don't worry! Let's go through the correct solution step by step together.")
]
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $3/5$ as a decimal?
#v(40pt)
#only("1-")[The correct answer is $0.6$]

#only("1")[
#voiceover("That's right, well done! The correct answer is zero point six. Let's find out why this is the case.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Write the result as a decimal. ✍️]
#only("1")[
#voiceover("Before we solve the exercise, a quick reminder of the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, write the result as a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $3/5$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: ➗ Divide $3$ by $5$.]
#v(20pt)
#only("2-")[- Step 2: ✍️ Write the result as $0.6$.]
#only("1")[
#voiceover("Now let's apply these steps to the fraction three over five. First, we divide three by five.")
]
#only("2")[
#voiceover("The result is zero point six. So, three over five as a decimal is zero point six.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Division]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Data
numerator = 3
denominator = 5
result = numerator / denominator

# Plot
fig, ax = plt.subplots()
ax.bar(['3/5'], [result], color='skyblue')

# Adding details
ax.set_ylim(0, 1)
ax.set_ylabel('Decimal Value')
ax.set_title('Visualizing 3/5 as a Decimal')
ax.text(0, result/2, '0.6', ha='center', va='center', color='black', fontsize=12)

plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("To visualize this, we can see that dividing three by five gives us zero point six. This bar graph shows the decimal value of three over five.")
]
]