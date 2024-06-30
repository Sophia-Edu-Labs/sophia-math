#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 3/8 to a Decimal]
#v(40pt)
What is 3/8 as a decimal?
#v(40pt)
#only("-1")[a) 0.375]#only("2-")[#text(fill:green)[a) 0.375]]
#v(10pt)
#only("-2")[b) 0.38]#only("3-")[#text(fill:red)[b) 0.38]]
#v(10pt)
#only("-3")[c) 0.35]#only("4-")[#text(fill:red)[c) 0.35]]
#v(10pt)
#only("-4")[d) 0.3]#only("5-")[#text(fill:red)[d) 0.3]]

#only("1")[#voiceover("Not quite. The correct decimal for 3/8 is 0.375. Let's walk through the solution step-by-step to understand why.")]
#only("2")[#voiceover("Option a, 0.375, is indeed the correct answer. We'll see how we arrive at this in a moment.")]
#only("3")[#voiceover("Option b, 0.38, is incorrect. It's close, but not exact.")]
#only("4")[#voiceover("Option c, 0.35, is also incorrect. It's an underestimate of the actual value.")]
#only("5")[#voiceover("Option d, 0.3, is incorrect as well. It's too small to be the correct answer.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 3/8 to a Decimal: The Process]
#v(40pt)
#only("1-")[1️⃣ Start with the fraction: $3/8$]
#v(20pt)
#only("2-")[2️⃣ Multiply both numerator and denominator by 125: $3/8 = (3 × 125)/(8 × 125)$]
#v(20pt)
#only("3-")[3️⃣ Simplify: $375/1000$]
#v(20pt)
#only("4-")[4️⃣ Write as a decimal: $0.375$]

#only("1")[#voiceover("Let's start with our fraction, three-eighths.")]
#only("2")[#voiceover("To convert this to a decimal, we'll multiply both the numerator and denominator by 125. Why 125? Because 8 times 125 is 1000, which will give us a denominator that's a power of 10.")]
#only("3")[#voiceover("After multiplying, we get 375 over 1000.")]
#only("4")[#voiceover("Now, we can easily write this as a decimal by moving the decimal point three places to the left: 0.375.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why This Method Works]
#v(40pt)
#only("1-")[• Multiplying by 125/125 = 1, so the fraction's value doesn't change 🔄]
#v(20pt)
#only("2-")[• 1000 in the denominator makes it easy to write as a decimal 🔟]
#v(20pt)
#only("3-")[• This method works for any fraction with a denominator of 8 ✨]

#only("1")[#voiceover("This method works because we're essentially multiplying the fraction by 1 in the form of 125 over 125. This doesn't change the value of the fraction.")]
#only("2")[#voiceover("By getting 1000 in the denominator, we make it easy to write as a decimal. We just need to move the decimal point three places to the left.")]
#only("3")[#voiceover("Interestingly, this method of multiplying by 125 works for any fraction with a denominator of 8, because 8 times 125 is always 1000.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Decimal]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(10, 2))

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_yticks([])
ax.set_xticks([0, 0.375, 1])
ax.set_xticklabels(['0', '0.375', '1'])

ax.axvline(x=0.375, color='r', linestyle='--')
ax.annotate('3/8 = 0.375', xy=(0.375, 0.5), xytext=(0.4, 0.7),
            arrowprops=dict(facecolor='black', shrink=0.05))

ax.set_title('3/8 on a Number Line')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of where 0.375 lies on a number line between 0 and 1. As you can see, it's slightly less than halfway, which makes sense for the fraction three-eighths.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[• 3/8 as a decimal is 0.375 ✅]
#v(20pt)
#only("2-")[• We can convert fractions to decimals by making the denominator a power of 10 💡]
#v(20pt)
#only("3-")[• This method helps us convert fractions to decimals without long division 🧮]

#only("1")[#voiceover("To wrap up, let's review the key points. First, we've confirmed that three-eighths as a decimal is indeed 0.375.")]
#only("2")[#voiceover("We've learned a useful method for converting fractions to decimals by making the denominator a power of 10.")]
#only("3")[#voiceover("This method is particularly helpful as it allows us to convert fractions to decimals without resorting to long division. Keep practicing this technique, and you'll find it becomes easier each time!")]
]