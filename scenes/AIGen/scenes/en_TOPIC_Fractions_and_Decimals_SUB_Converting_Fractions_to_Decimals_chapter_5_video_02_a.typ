#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $4/5$ as a decimal?
#v(40pt)
#only("-1")[a) 0.8]#only("2-")[#text(fill:green)[a) 0.8]]
#v(10pt)
#only("-2")[b) 0.45]#only("3-")[#text(fill:red)[b) 0.45]]
#v(10pt)
#only("-3")[c) 0.75]#only("4-")[#text(fill:red)[c) 0.75]]
#v(10pt)
#only("-4")[d) 0.5]#only("5-")[#text(fill:red)[d) 0.5]]

#only("1")[#voiceover("Great job! You got it right. Let's go through why 0.8 is the correct answer and why the other options are incorrect.")]
#only("2")[#voiceover("a) 0.8 is indeed the correct answer. We'll see how to arrive at this in a moment.")]
#only("3")[#voiceover("b) 0.45 is incorrect. This would be the decimal form of 9/20, not 4/5.")]
#only("4")[#voiceover("c) 0.75 is also incorrect. This is actually the decimal form of 3/4.")]
#only("5")[#voiceover("d) 0.5 is incorrect as well. This is the decimal form of 1/2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 4/5 to a Decimal]
#v(40pt)
#only("1-")[Step 1: Multiply both numerator and denominator by 2]
#v(20pt)
#only("2-")[$4/5 = (4 × 2)/(5 × 2) = 8/10$]
#v(20pt)
#only("3-")[Step 2: Write as a decimal]
#v(20pt)
#only("4-")[$8/10 = 0.8$]

#only("1")[#voiceover("Let's convert 4/5 to a decimal step by step. First, we'll multiply both the numerator and denominator by 2.")]
#only("2")[#voiceover("This gives us 8 over 10. We do this because 10 is a power of 10, which makes it easier to convert to a decimal.")]
#only("3")[#voiceover("Now, we can easily write this as a decimal.")]
#only("4")[#voiceover("8/10 is equivalent to 0.8. The decimal point goes before the 8 because 8 is in the tenths place.")]
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
labels = ['Fraction', 'Remaining']
sizes = [4, 1]
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

plt.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('4/5 as a Fraction of a Whole')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of 4/5 as a fraction of a whole. As you can see, it takes up 80% of the circle, which is equivalent to 0.8 in decimal form.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- To convert a fraction to a decimal, make the denominator a power of 10 📊]
#v(20pt)
#only("2-")[- Multiply both numerator and denominator by the same number ✖️]
#v(20pt)
#only("3-")[- Place the decimal point to represent tenths, hundredths, etc. 🔢]

#only("1")[#voiceover("Let's recap what we've learned. To convert a fraction to a decimal, it's helpful to make the denominator a power of 10.")]
#only("2")[#voiceover("We can do this by multiplying both the numerator and denominator by the same number. This doesn't change the value of the fraction.")]
#only("3")[#voiceover("Finally, we place the decimal point to represent tenths, hundredths, and so on. In this case, 8/10 becomes 0.8 because the 8 is in the tenths place.")]
]