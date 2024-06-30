#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Excellent work! You've got the correct answer. Let's walk through the solution step by step to understand how we convert 15/8 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 15/8 to a Decimal]

#v(40pt)

#only("2-")[#text()[$15/8$]]
#only("2")[
#voiceover("We start with the fraction fifteen over eight.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach: Multiply by 125/125]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 125 ✖️]
#v(20pt)
#only("2-")[- This makes the denominator 1000 🎯]
#only("1")[
#voiceover("Our approach is to multiply both the numerator and denominator by 125.")
]
#only("2")[
#voiceover("We choose 125 because it will make the denominator 1000, which is easy to convert to a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiplication]
#v(40pt)
#only("1-")[$15/8 = (15 × 125)/(8 × 125)$]
#v(20pt)
#only("2-")[$= 1875/1000$]
#only("1")[
#voiceover("Let's multiply both the numerator and denominator by 125. Fifteen times 125 is 1875, and 8 times 125 is 1000.")
]
#only("2")[
#voiceover("So our fraction becomes 1875 over 1000.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Decimal Conversion]
#v(40pt)
#only("1-")[$1875/1000 = 1.875$]
#v(20pt)
#only("2-")[#text(fill: green)[✓ The decimal form of 15/8 is 1.875]]
#only("1")[
#voiceover("Now, 1875 divided by 1000 is easy to convert to a decimal. We simply move the decimal point three places to the left.")
]
#only("2")[
#voiceover("This gives us 1.875. Therefore, the decimal form of 15/8 is 1.875.")
]
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

fig, ax = plt.subplots(figsize=(10, 6))

x = np.linspace(0, 2, 1000)
y = 15/8 * np.ones_like(x)

ax.plot(x, y, 'b-', linewidth=2)
ax.axhline(y=15/8, color='r', linestyle='--')
ax.text(2.02, 15/8, '1.875', verticalalignment='center')

ax.set_xlim(0, 2)
ax.set_ylim(0, 3)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Visualization of 15/8 = 1.875')
ax.grid(True)

plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of our result. The horizontal red dashed line shows the value of 15/8, which is equal to 1.875.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with $15/8$ 📊]
#v(20pt)
#only("2-")[- Multiplied by $125/125$ to get $1875/1000$ 🔢]
#v(20pt)
#only("3-")[- Converted to decimal: $1.875$ 🎉]
#only("1")[
#voiceover("To summarize, we started with the fraction 15 over 8.")
]
#only("2")[
#voiceover("We multiplied both numerator and denominator by 125 to get 1875 over 1000.")
]
#only("3")[
#voiceover("Finally, we converted this to the decimal 1.875. Great job on solving this problem!")
]
]