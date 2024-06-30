#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 11/20 to a Decimal]
#v(40pt)
What is 11/20 as a decimal?
#v(40pt)
#only("-1")[a) 0.55]#only("2-")[#text(fill:green)[a) 0.55]]
#v(10pt)
#only("-2")[b) 0.5]#only("3-")[#text(fill:red)[b) 0.5]]
#v(10pt)
#only("-3")[c) 0.525]#only("4-")[#text(fill:red)[c) 0.525]]
#v(10pt)
#only("-4")[d) 0.50]#only("5-")[#text(fill:red)[d) 0.50]]

#only("1")[#voiceover("Not quite. Let's go through why a) 0.55 is the correct choice and why the others are incorrect.")]
#only("2")[#voiceover("a) 0.55 is indeed the correct answer. We'll see how we arrive at this in the next slides.")]
#only("3")[#voiceover("b) 0.5 is incorrect. This would be the decimal form of 1/2 or 10/20, not 11/20.")]
#only("4")[#voiceover("c) 0.525 is also incorrect. This is close, but not quite right.")]
#only("5")[#voiceover("d) 0.50 is incorrect as well. Like 0.5, this represents 1/2 or 10/20, not 11/20.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 11/20 to a Decimal: Method]
#v(40pt)
#only("1-")[1️⃣ Multiply both numerator and denominator by 5]
#v(20pt)
#only("2-")[2️⃣ Simplify the resulting fraction]
#v(20pt)
#only("3-")[3️⃣ Convert to a decimal]

#only("1")[#voiceover("To convert 11/20 to a decimal, we'll use a simple method. First, we'll multiply both the numerator and denominator by 5.")]
#only("2")[#voiceover("Then, we'll simplify the resulting fraction.")]
#only("3")[#voiceover("Finally, we'll convert this simplified fraction to a decimal.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 5]
#v(40pt)
#only("1-")[$(11 × 5)/(20 × 5) = 55/100$]
#v(20pt)
#only("2-")[💡 This doesn't change the value of the fraction!]

#only("1")[#voiceover("Let's start by multiplying both the numerator and denominator by 5. This gives us 55 over 100.")]
#only("2")[#voiceover("Remember, multiplying both the top and bottom of a fraction by the same number doesn't change its value. We're just making it easier to convert to a decimal.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2 & 3: Simplify and Convert]
#v(40pt)
#only("1-")[55/100 = 0.55]
#v(20pt)
#only("2-")[💡 The decimal point goes before the second-to-last digit]

#only("1")[#voiceover("Now, 55 over 100 is a fraction we can easily convert to a decimal. It equals 0.55.")]
#only("2")[#voiceover("A helpful tip: when converting a fraction over 100 to a decimal, the decimal point goes before the second-to-last digit.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Create data
labels = ['0.55', '0.45']
sizes = [55, 45]
colors = ['#ff9999', '#66b3ff']

# Plot
plt.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('11/20 as a Decimal')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of 0.55. As you can see, it's slightly more than half, which makes sense for 11/20.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- 11/20 = (11 × 5)/(20 × 5) = 55/100 = 0.55]
#v(20pt)
#only("2-")[- Multiplying by 5/5 doesn't change the fraction's value]
#v(20pt)
#only("3-")[- 55/100 is easy to convert to a decimal]

#only("1")[#voiceover("To summarize, we converted 11/20 to 0.55 by multiplying both the numerator and denominator by 5.")]
#only("2")[#voiceover("Remember, multiplying by 5/5 is the same as multiplying by 1, so it doesn't change the fraction's value.")]
#only("3")[#voiceover("This gave us 55/100, which is easy to convert to the decimal 0.55. Great job on solving this problem!")]
]