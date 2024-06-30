#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 5/8 to a Decimal]
#v(40pt)
What is 5/8 as a decimal?
#v(40pt)
#only("-1")[a) 0.625]#only("2-")[#text(fill:green)[a) 0.625]]
#v(10pt)
#only("-2")[b) 0.62]#only("3-")[#text(fill:red)[b) 0.62]]
#v(10pt)
#only("-3")[c) 0.65]#only("4-")[#text(fill:red)[c) 0.65]]
#v(10pt)
#only("-4")[d) 0.6]#only("5-")[#text(fill:red)[d) 0.6]]

#only("1")[#voiceover("Excellent job! You've chosen the correct answer. Let's go through why 0.625 is indeed the correct decimal representation of 5/8.")]
#only("2")[#voiceover("Option a, 0.625, is correct. This is the exact decimal representation of 5/8.")]
#only("3")[#voiceover("Option b, 0.62, is incorrect. While it's close, it's not precise enough.")]
#only("4")[#voiceover("Option c, 0.65, is incorrect. It's slightly too large.")]
#only("5")[#voiceover("Option d, 0.6, is incorrect. It's an oversimplification and not accurate enough.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 5/8 to 0.625]
#v(40pt)
#only("1-")[Step 1: Multiply numerator and denominator by 125]
#v(20pt)
#only("2-")[$5/8 = (5 × 125) / (8 × 125)$]
#v(20pt)
#only("3-")[$= 625 / 1000$]

#only("1")[#voiceover("Let's break down the process of converting 5/8 to a decimal. Our first step is to multiply both the numerator and denominator by 125.")]
#only("2")[#voiceover("We do this because 125 times 8 equals 1000, which will give us a denominator of 1000. This is helpful because fractions with 1000 as the denominator are easy to convert to decimals.")]
#only("3")[#voiceover("After multiplying, we get 625 over 1000.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[From Fraction to Decimal]
#v(40pt)
#only("1-")[Step 2: Convert to decimal]
#v(20pt)
#only("2-")[$625 / 1000 = 0.625$]
#v(40pt)
#only("3-")[💡 The decimal point goes three places from the right]

#only("1")[#voiceover("Now for our second and final step, we convert this fraction to a decimal.")]
#only("2")[#voiceover("625 divided by 1000 equals 0.625. We can easily see this because when we have a fraction over 1000, we simply move the decimal point three places to the left from the end of the numerator.")]
#only("3")[#voiceover("Remember, when converting a fraction over 1000 to a decimal, the decimal point always goes three places from the right in the numerator.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Create data
labels = ['5/8', '0.625']
sizes = [5, 3]
colors = ['#ff9999', '#66b3ff']

# Create pie chart
fig, ax = plt.subplots()
ax.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

plt.title('5/8 as a Fraction and Decimal')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of 5/8 and its decimal equivalent, 0.625. As you can see, they represent the same portion of the whole, just in different formats.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- 5/8 = 0.625 in decimal form 🔢]
#v(20pt)
#only("2-")[- Multiply by 125/125 to get a denominator of 1000 🧮]
#v(20pt)
#only("3-")[- For fractions over 1000, move decimal 3 places left ⬅️]

#only("1")[#voiceover("Let's recap what we've learned. First and foremost, 5/8 is equal to 0.625 in decimal form.")]
#only("2")[#voiceover("We found this by multiplying both the numerator and denominator by 125, which gave us a denominator of 1000.")]
#only("3")[#voiceover("Finally, remember that for fractions over 1000, we can easily convert to a decimal by moving the decimal point three places to the left in the numerator. This trick can be very helpful in future calculations!")]
]