#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]

#v(40pt)

#only("1-")[#text(size: 24pt)[What is $7/10$ as a decimal?]]

#v(20pt)

#only("2-")[- Step 1: Divide numerator by denominator ➗]
#v(10pt)
#only("3-")[- Step 2: Place decimal point correctly 🔢]

#only("1")[
#voiceover("Let's review the correct solution step by step to understand why seven-tenths as a decimal is zero point seven.")
]

#only("2")[
#voiceover("The first step in converting a fraction to a decimal is to divide the numerator by the denominator. In this case, we're dividing seven by ten.")
]

#only("3")[
#voiceover("The second step is to place the decimal point correctly. For fractions with a denominator of 10, this is particularly straightforward.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Division]

#v(40pt)

#only("1-")[#text(size: 24pt)[$7 ÷ 10 = 0.7$]]

#v(20pt)

#only("2-")[💡 When dividing by 10, move decimal point left]

#only("1")[
#voiceover("Let's perform the division. Seven divided by ten equals zero point seven.")
]

#only("2")[
#voiceover("Here's a helpful tip: when dividing by ten, you can simply move the decimal point one place to the left. So seven becomes zero point seven.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Decimal Placement]

#v(40pt)

#only("1-")[#text(size: 24pt)[For $7/10$, place decimal before last digit:]]
#v(10pt)
#only("2-")[#text(size: 24pt)[0.7]]

#v(20pt)

#only("3-")[🔍 $7/10 = 0.7$ (seven-tenths)]

#only("1")[
#voiceover("Now, let's focus on placing the decimal point correctly.")
]

#only("2")[
#voiceover("For fractions with a denominator of ten, we can place the decimal point before the last digit of the numerator. In this case, we place it before the seven, giving us zero point seven.")
]

#only("3")[
#voiceover("So, we've confirmed that seven-tenths is indeed equal to zero point seven in decimal form.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Fraction]

#v(20pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8, 4))

# Create a bar
ax.bar(0, 0.7, width=0.5, color='skyblue', edgecolor='navy')

# Set limits and remove ticks
ax.set_xlim(-0.5, 0.5)
ax.set_ylim(0, 1)
ax.set_xticks([])

# Add labels
ax.set_ylabel('Fraction of 1')
ax.set_title('Visualization of 7/10')

# Add text
ax.text(0, 0.75, '0.7', ha='center', va='bottom', fontsize=20)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Visualization of $7/10$ as a decimal]
)
]
]
]

#only("1")[
#voiceover("Here's a visual representation of seven-tenths. As you can see, it fills up zero point seven or seventy percent of the whole unit.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- $7/10$ as a decimal is $0.7$ 🎉]
#v(10pt)
#only("2-")[- Remember: For fractions with denominator 10, 📝]
#v(10pt)
#only("3-")[  place decimal before last digit of numerator]

#only("1")[
#voiceover("To summarize, we've confirmed that seven-tenths as a decimal is zero point seven.")
]

#only("2")[
#voiceover("Remember, for fractions with a denominator of ten,")
]

#only("3")[
#voiceover("you can quickly convert to a decimal by placing the decimal point before the last digit of the numerator. This trick can save you time in future calculations!")
]
]