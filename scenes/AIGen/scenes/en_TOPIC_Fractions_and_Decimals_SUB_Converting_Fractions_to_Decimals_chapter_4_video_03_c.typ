#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 2/5 to a Decimal]
#v(40pt)
What is 2/5 as a decimal?
#v(40pt)
#only("-1")[a) 0.25]#only("2-")[#text(fill:red)[a) 0.25]]
#v(10pt)
#only("-2")[b) 0.4]#only("3-")[#text(fill:green)[b) 0.4]]
#v(10pt)
#only("-3")[c) 0.5]#only("4-")[#text(fill:red)[c) 0.5]]
#v(10pt)
#only("-4")[d) 0.2]#only("5-")[#text(fill:red)[d) 0.2]]

#only("1")[#voiceover("Not quite. The correct answer is 0.4. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a, 0.25, is incorrect. This is actually equal to 1/4, not 2/5.")]
#only("3")[#voiceover("Option b, 0.4, is correct. We'll see how to arrive at this in a moment.")]
#only("4")[#voiceover("Option c, 0.5, is incorrect. This is equal to 1/2, which is larger than 2/5.")]
#only("5")[#voiceover("Option d, 0.2, is also incorrect. This is equal to 1/5, which is smaller than 2/5.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 2/5 to a Decimal: Step-by-Step]
#v(40pt)
#only("1-")[1️⃣ Start with the fraction: $2/5$]
#v(20pt)
#only("2-")[2️⃣ Multiply both numerator and denominator by 2:]
#v(20pt)
#only("3-")[$(2 * 2)/(5 * 2) = 4/10$]
#v(20pt)
#only("4-")[3️⃣ Result: $4/10 = 0.4$]

#only("1")[#voiceover("Let's convert 2/5 to a decimal step-by-step. We start with our fraction, 2/5.")]
#only("2")[#voiceover("To make this easier, we can multiply both the numerator and denominator by 2. This doesn't change the value of the fraction, but it gives us a denominator that's a power of 10, which is easier to convert to a decimal.")]
#only("3")[#voiceover("When we multiply both top and bottom by 2, we get 4 over 10.")]
#only("4")[#voiceover("4/10 is easy to write as a decimal. We just move the decimal point one place to the left, giving us 0.4.")]
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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

# First pie chart
labels1 = ['2/5', '3/5']
sizes1 = [2, 3]
colors1 = ['#ff9999', '#66b3ff']
ax1.pie(sizes1, labels=labels1, colors=colors1, autopct='%1.1f%%', startangle=90)
ax1.set_title('Fraction: 2/5')

# Second pie chart
labels2 = ['0.4', '0.6']
sizes2 = [4, 6]
colors2 = ['#ff9999', '#66b3ff']
ax2.pie(sizes2, labels=labels2, colors=colors2, autopct='%1.1f%%', startangle=90)
ax2.set_title('Decimal: 0.4')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of our conversion. On the left, we see the fraction 2/5 represented as a pie chart. On the right, we see the same portion represented as 0.4 or 40% of the whole. As you can see, they represent the same amount, just written differently.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[📌 $2/5 = 0.4$ in decimal form]
#v(20pt)
#only("2-")[💡 Multiply numerator and denominator by 2 to get 4/10]
#v(20pt)
#only("3-")[🔢 4/10 is easily converted to 0.4]
#v(20pt)
#only("4-")[🧮 Practice this method with other fractions!]

#only("1")[#voiceover("Let's recap what we've learned. First and foremost, 2/5 is equal to 0.4 in decimal form.")]
#only("2")[#voiceover("We found this by multiplying both the numerator and denominator by 2, which gave us 4/10.")]
#only("3")[#voiceover("4/10 is easily converted to 0.4 by moving the decimal point one place to the left.")]
#only("4")[#voiceover("Remember, you can use this method with other fractions too! Practice makes perfect.")]
]