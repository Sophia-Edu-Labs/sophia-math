#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's go through the solution step by step to understand how we convert 9/20 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 9/20 to a Decimal]

#v(40pt)

#only("2-")[#text()[$9/20$]]
#only("2")[
#voiceover("We start with the fraction nine twentieths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 5/5]
#v(40pt)
#only("1-")[$ 9/20 = (9 × 5)/(20 × 5) $]
#v(20pt)
#only("2-")[$ = 45/100 $]
#only("1")[
#voiceover("Our first step is to multiply both the numerator and denominator by 5. This doesn't change the value of the fraction, but it makes it easier to convert to a decimal.")
]
#only("2")[
#voiceover("This gives us forty-five over one hundred.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[$ 45/100 = 0.45 $]
#v(20pt)
#only("2-")[💡 The decimal point goes before the second-to-last digit]
#only("1")[
#voiceover("Now, we can easily convert forty-five hundredths to a decimal. It's simply zero point four five.")
]
#only("2")[
#voiceover("A helpful tip: when converting a fraction over 100 to a decimal, the decimal point goes before the second-to-last digit.")
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

fig, ax = plt.subplots(figsize=(8, 6))

# Create a pie chart
sizes = [45, 55]
labels = ['0.45', '0.55']
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

ax.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

plt.title('9/20 = 0.45')
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of our fraction. As you can see, 9/20 or 0.45 represents 45% of the whole, which is slightly less than half.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with $9/20$ 📊]
#v(20pt)
#only("2-")[- Multiplied by $5/5$ to get $45/100$ ✖️]
#v(20pt)
#only("3-")[- Converted $45/100$ to $0.45$ 🔢]
#only("1")[
#voiceover("To summarize, we started with the fraction nine twentieths.")
]
#only("2")[
#voiceover("We multiplied both the numerator and denominator by 5 to get forty-five hundredths.")
]
#only("3")[
#voiceover("Finally, we converted forty-five hundredths to zero point four five. Well done on solving this problem!")
]
]