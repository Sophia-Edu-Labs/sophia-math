#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 7/8 to a Decimal]
#v(40pt)
What is 7/8 as a decimal?
#v(40pt)
#only("-1")[a) 0.875]#only("2-")[#text(fill:green)[a) 0.875]]
#v(10pt)
#only("-2")[b) 0.87]#only("3-")[#text(fill:red)[b) 0.87]]
#v(10pt)
#only("-3")[c) 0.85]#only("4-")[#text(fill:red)[c) 0.85]]
#v(10pt)
#only("-4")[d) 0.8]#only("5-")[#text(fill:red)[d) 0.8]]

#only("1")[#voiceover("Not quite. Let's review the correct solution step-by-step to understand why a) 0.875 is the right choice.")]
#only("2")[#voiceover("Option a, 0.875, is indeed the correct decimal representation of 7/8.")]
#only("3")[#voiceover("Option b, 0.87, is close but not precise enough. It's slightly less than the actual value.")]
#only("4")[#voiceover("Option c, 0.85, is too small to represent 7/8 accurately.")]
#only("5")[#voiceover("Option d, 0.8, is significantly smaller than 7/8 and thus incorrect.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 7/8 to a Decimal: Method]
#v(40pt)
#only("1-")[- Multiply both numerator and denominator by 125 📏]
#v(20pt)
#only("2-")[- This makes the denominator 1000 🎯]
#v(20pt)
#only("3-")[- Move decimal point 3 places left ⬅️]

#only("1")[#voiceover("To convert 7/8 to a decimal, we'll use a clever method. First, we multiply both the numerator and denominator by 125.")]
#only("2")[#voiceover("Why 125? Because 8 times 125 equals 1000, which will make our conversion easier.")]
#only("3")[#voiceover("Once we have a fraction over 1000, we can easily convert it to a decimal by moving the decimal point three places to the left.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1️⃣ $7/8 = (7 times 125)/(8 times 125)$]
#v(20pt)
#only("2-")[2️⃣ $= 875/1000$]
#v(20pt)
#only("3-")[3️⃣ $= 0.875$]

#only("1")[#voiceover("Let's start with our fraction, 7/8. We multiply both top and bottom by 125.")]
#only("2")[#voiceover("This gives us 875 over 1000.")]
#only("3")[#voiceover("Now, to convert a fraction over 1000 to a decimal, we simply move the decimal point three places to the left. 875 over 1000 becomes 0.875.")]
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

fig, ax = plt.subplots(figsize=(10, 6))

ax.bar(['7/8', '875/1000', '0.875'], [7/8, 875/1000, 0.875], color=['blue', 'green', 'red'])
ax.set_ylim(0, 1)
ax.set_title('Equivalence of 7/8, 875/1000, and 0.875')
ax.set_ylabel('Value')

for i, v in enumerate([7/8, 875/1000, 0.875]):
    ax.text(i, v, f'{v:.3f}', ha='center', va='bottom')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of our conversion. As you can see, 7/8, 875/1000, and 0.875 all represent the same value. This confirms that our conversion is correct.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- 7/8 = 0.875 in decimal form 🔢]
#v(20pt)
#only("2-")[- Multiplying by 125/125 helps convert to /1000 🧮]
#v(20pt)
#only("3-")[- /1000 easily converts to decimal by moving point ⬅️]

#only("1")[#voiceover("To summarize, we've learned that 7/8 is equal to 0.875 in decimal form.")]
#only("2")[#voiceover("We used a helpful trick of multiplying both the numerator and denominator by 125 to get a fraction over 1000.")]
#only("3")[#voiceover("Finally, we saw that any fraction over 1000 can be easily converted to a decimal by moving the decimal point three places to the left. Great job on mastering this concept!")]
]