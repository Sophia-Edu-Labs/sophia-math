#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 1/2 to a Decimal]
#v(40pt)
What is 1/2 as a decimal?
#v(40pt)
#only("-1")[a) 0.2]#only("2-")[#text(fill:red)[a) 0.2]]
#v(10pt)
#only("-2")[b) 0.5]#only("3-")[#text(fill:green)[b) 0.5]]
#v(10pt)
#only("-3")[c) 2.0]#only("4-")[#text(fill:red)[c) 2.0]]
#v(10pt)
#only("-4")[d) 5.0]#only("5-")[#text(fill:red)[d) 5.0]]

#only("1")[#voiceover("Excellent job! You've correctly identified that 1/2 as a decimal is 0.5. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a, 0.2, is incorrect. This is actually equal to 1/5, not 1/2.")]
#only("3")[#voiceover("Option b, 0.5, is correct! This is indeed equal to 1/2.")]
#only("4")[#voiceover("Option c, 2.0, is incorrect. This is 2 wholes, which is larger than 1/2.")]
#only("5")[#voiceover("Option d, 5.0, is also incorrect. This is 5 wholes, which is much larger than 1/2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 1/2 to 0.5]
#v(40pt)
#only("1-")[Step 1: Multiply numerator and denominator by 5]
#v(20pt)
#only("2-")[$ 1/2 = (1 dot 5)/(2 dot 5) = 5/10 $]
#v(20pt)
#only("3-")[Step 2: Divide 5 by 10]
#v(20pt)
#only("4-")[$ 5/10 = 0.5 $]

#only("1")[#voiceover("Let's walk through the process of converting 1/2 to a decimal. Our first step is to multiply both the numerator and denominator by 5.")]
#only("2")[#voiceover("When we do this, we get 1 times 5 over 2 times 5, which equals 5 over 10. Remember, multiplying by 5 over 5 doesn't change the value of the fraction, it just helps us convert it to a decimal more easily.")]
#only("3")[#voiceover("Now, our second step is to divide 5 by 10.")]
#only("4")[#voiceover("5 divided by 10 equals 0.5. And there we have it! We've converted 1/2 to the decimal 0.5.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing 1/2 as 0.5]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Pie chart
sizes = [1, 1]
colors = ['#ff9999', '#66b3ff']
ax1.pie(sizes, colors=colors, autopct='%1.1f%%', startangle=90)
ax1.set_title('1/2 as a Fraction')

# Bar chart
ax2.bar(['0.5'], [0.5], color='#ff9999', width=0.4)
ax2.set_ylim(0, 1)
ax2.set_title('0.5 as a Decimal')
ax2.set_ylabel('Value')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of 1/2 and 0.5. On the left, we see a pie chart divided into two equal halves, representing the fraction 1/2. On the right, we have a bar chart showing 0.5, which goes exactly halfway up the scale from 0 to 1.")]
#only("2")[#voiceover("This visualization helps us see that 1/2 and 0.5 are indeed the same value, just expressed in different forms. Whether we say 'one-half' or 'zero point five', we're talking about the same amount.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- 1/2 is equal to 0.5 in decimal form 🔢]
#v(20pt)
#only("2-")[- To convert, multiply numerator and denominator by 5 ✖️]
#v(20pt)
#only("3-")[- This method works for other fractions too! 🧠]

#only("1")[#voiceover("Let's recap what we've learned. First and foremost, we now know that 1/2 is equal to 0.5 in decimal form.")]
#only("2")[#voiceover("We also learned a handy method for converting 1/2 to a decimal: multiply both the numerator and denominator by 5. This gives us 5/10, which is easy to convert to 0.5.")]
#only("3")[#voiceover("Remember, this method of multiplying both the numerator and denominator by the same number can be useful for converting other fractions to decimals too! Keep practicing, and you'll become a pro at fraction-to-decimal conversions in no time!")]
]