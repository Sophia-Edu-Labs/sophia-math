#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on solving the problem! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]

#v(40pt)

#only("2-")[#text()[$2/5$]]
// The fraction 2/5 is shown from slide 2 onward

#only("2")[
#voiceover("We are given the fraction two-fifths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator ➗]
#v(20pt)
#only("2-")[- Step 2: Simplify if necessary ✂️]

#only("1")[
#voiceover("To convert a fraction to a decimal, we follow these steps. First, we divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Then, we simplify the result if necessary.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $2/5$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: Divide $2$ by $5$ ➗ $2 ÷ 5 = 0.4$]
#v(20pt)
#only("2-")[- Step 2: Simplify if necessary ✂️]

#only("1")[
#voiceover("Let's apply these steps to the fraction two-fifths. First, we divide two by five, which equals zero point four.")
]
#only("2")[
#voiceover("Since zero point four is already in its simplest form, we don't need to simplify further. So, the decimal equivalent of two-fifths is zero point four.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Conversion]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Data
fractions = [2/5]
decimals = [0.4]

# Plot
fig, ax = plt.subplots()
ax.plot(fractions, decimals, 'bo', label='2/5 = 0.4')
ax.axhline(y=0.4, color='r', linestyle='--', label='0.4')
ax.axvline(x=2/5, color='g', linestyle='--', label='2/5')
ax.legend()

# Labels and title
ax.set_xlabel('Fraction')
ax.set_ylabel('Decimal')
ax.set_title('Visualizing Fraction to Decimal Conversion')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here, we visualize the conversion of the fraction two-fifths to the decimal zero point four. The blue dot represents the fraction two-fifths, which is equivalent to the decimal zero point four. The red dashed line shows the decimal value, and the green dashed line shows the fraction value.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Given fraction: $2/5$ 📜]
#v(20pt)
#only("2-")[- Step 1: Divide $2$ by $5$ ➗ $2 ÷ 5 = 0.4$]
#v(20pt)
#only("3-")[- Step 2: Simplify if necessary ✂️]
#v(20pt)
#only("4-")[- Decimal equivalent: $0.4$ 🔢]

#only("1")[
#voiceover("To summarize, we started with the fraction two-fifths.")
]
#only("2")[
#voiceover("We divided two by five, which gave us zero point four.")
]
#only("3")[
#voiceover("Since zero point four is already in its simplest form, we didn't need to simplify further.")
]
#only("4")[
#voiceover("So, the decimal equivalent of two-fifths is zero point four.")
]
]