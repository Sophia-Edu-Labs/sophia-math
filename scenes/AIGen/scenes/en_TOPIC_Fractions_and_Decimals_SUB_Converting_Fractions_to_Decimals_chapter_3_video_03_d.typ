#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 3/4 to a Decimal]
#v(40pt)
What is 3/4 as a decimal?
#v(40pt)
#only("-1")[a) 0.34]#only("2-")[#text(fill:red)[a) 0.34]]
#v(10pt)
#only("-2")[b) 0.43]#only("3-")[#text(fill:red)[b) 0.43]]
#v(10pt)
#only("-3")[c) 0.75]#only("4-")[#text(fill:green)[c) 0.75]]
#v(10pt)
#only("-4")[d) 0.57]#only("5-")[#text(fill:red)[d) 0.57]]

#only("1")[#voiceover("Not quite. The correct answer is 0.75. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a, 0.34, is incorrect. This is not the decimal representation of 3/4.")]
#only("3")[#voiceover("Option b, 0.43, is also incorrect. It's not the result we get when converting 3/4 to a decimal.")]
#only("4")[#voiceover("Option c, 0.75, is the correct answer. We'll see how we arrive at this in the next slides.")]
#only("5")[#voiceover("Option d, 0.57, is incorrect. This doesn't represent 3/4 as a decimal.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 3/4 to a Decimal: Method]
#v(40pt)
#only("1-")[Step 1: Multiply both numerator and denominator by 25]
#v(20pt)
#only("2-")[Step 2: Simplify the resulting fraction]
#v(20pt)
#only("3-")[Step 3: Write as a decimal]

#only("1")[#voiceover("To convert 3/4 to a decimal, we'll use a simple method. First, we'll multiply both the numerator and denominator by 25.")]
#only("2")[#voiceover("Then, we'll simplify the resulting fraction.")]
#only("3")[#voiceover("Finally, we'll write our result as a decimal.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 25]
#v(40pt)
#only("1-")[$(3/4) * (25/25) = (3*25)/(4*25)$]
#v(20pt)
#only("2-")[$(3*25)/(4*25) = 75/100$]

#only("1")[#voiceover("Let's start with our fraction, 3/4. We multiply both the top and bottom by 25. This doesn't change the value of the fraction, because we're multiplying by 25/25, which equals 1.")]
#only("2")[#voiceover("When we multiply, we get 75 divided by 100.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2 & 3: Simplify and Write as Decimal]
#v(40pt)
#only("1-")[75/100 = 0.75]
#v(20pt)
#only("2-")[Place the decimal point before the second to last digit]
#v(20pt)
#only("3-")[3/4 = 0.75]

#only("1")[#voiceover("Now, 75 divided by 100 is easy to write as a decimal. It's simply 0.75.")]
#only("2")[#voiceover("A quick way to remember this is that when you have a fraction over 100, you can write it as a decimal by placing the decimal point before the second to last digit.")]
#only("3")[#voiceover("So, we've shown that 3/4 is indeed equal to 0.75 as a decimal.")]
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

labels = ['3/4', '75/100', '0.75']
values = [0.75, 0.75, 0.75]

plt.figure(figsize=(10, 6))
plt.bar(labels, values, color=['blue', 'green', 'red'])
plt.ylim(0, 1)
plt.title('Equivalence of 3/4, 75/100, and 0.75')
plt.ylabel('Value')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of what we've done. As you can see, 3/4, 75/100, and 0.75 all represent the same value. They're just different ways of writing the same number.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We converted 3/4 to a decimal 🔢]
#v(20pt)
#only("2-")[- We multiplied by 25/25 to get 75/100 ✖️]
#v(20pt)
#only("3-")[- 75/100 is equal to 0.75 🎉]

#only("1")[#voiceover("To summarize, we converted 3/4 to a decimal.")]
#only("2")[#voiceover("We did this by multiplying both the numerator and denominator by 25, which gave us 75/100.")]
#only("3")[#voiceover("And 75/100 is equal to 0.75. Great job understanding this conversion process!")]
]