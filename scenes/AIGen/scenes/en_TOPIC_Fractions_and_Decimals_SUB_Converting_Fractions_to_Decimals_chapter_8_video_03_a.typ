#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step by step to understand how we convert 4/25 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 4/25 to a Decimal]

#v(40pt)

#only("2-")[#text()[$4/25$]]
#only("2")[
#voiceover("We start with the fraction four over twenty-five.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach: Multiply by 4/4]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 4 ✖️]
#v(20pt)
#only("2-")[- This doesn't change the fraction's value ⚖️]
#v(20pt)
#only("3-")[- Makes the denominator 100, easier to convert 💡]
#only("1")[
#voiceover("Our approach will be to multiply both the numerator and denominator by 4.")
]
#only("2")[
#voiceover("This doesn't change the value of the fraction, as we're multiplying by 4 over 4, which equals 1.")
]
#only("3")[
#voiceover("But it makes the denominator 100, which is much easier to convert to a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[$4/25 = (4 × 4)/(25 × 4)$]
#v(20pt)
#only("2-")[$= 16/100$]
#v(20pt)
#only("3-")[$= 0.16$]
#only("1")[
#voiceover("Let's multiply both the numerator and denominator by 4. 4 times 4 is 16, and 25 times 4 is 100.")
]
#only("2")[
#voiceover("So our fraction becomes 16 over 100.")
]
#only("3")[
#voiceover("Now, 16 over 100 is easy to convert to a decimal. It's simply 0.16.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Fraction]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(

```
import matplotlib.pyplot as plt

# Create a pie chart
labels = '4/25', 'Remainder'
sizes = [16, 84]
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

plt.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('Visualization of 4/25 (or 16/100)')
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of our fraction. As you can see, 4/25, which is the same as 16/100, represents 16% of the whole.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with $4/25$ 📊]
#v(20pt)
#only("2-")[- Multiplied by $4/4$ to get $16/100$ 🔢]
#v(20pt)
#only("3-")[- $16/100 = 0.16$ in decimal form 🎉]
#only("1")[
#voiceover("To summarize, we started with the fraction 4 over 25.")
]
#only("2")[
#voiceover("We multiplied both the numerator and denominator by 4, giving us 16 over 100.")
]
#only("3")[
#voiceover("16 over 100 is equal to 0.16 in decimal form. And that's our final answer! Well done on solving this problem.")
]
]