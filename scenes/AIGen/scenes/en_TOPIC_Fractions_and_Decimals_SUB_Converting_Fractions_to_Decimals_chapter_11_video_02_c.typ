#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 5/4 to a Decimal]
#v(40pt)
What is 5/4 as a decimal?
#v(40pt)
#only("-1")[a) 1.25]#only("2-")[#text(fill:green)[a) 1.25]]
#v(10pt)
#only("-2")[b) 1.2]#only("3-")[#text(fill:red)[b) 1.2]]
#v(10pt)
#only("-3")[c) 1.15]#only("4-")[#text(fill:red)[c) 1.15]]
#v(10pt)
#only("-4")[d) 1.3]#only("5-")[#text(fill:red)[d) 1.3]]

#only("1")[#voiceover("Not quite. Let's go through why a) 1.25 is the correct answer and explain the process step-by-step.")]
#only("2")[#voiceover("Option a) 1.25 is indeed correct. 5/4 is equal to 1.25 when converted to a decimal.")]
#only("3")[#voiceover("Option b) 1.2 is incorrect. It's close, but not exact.")]
#only("4")[#voiceover("Option c) 1.15 is also incorrect. It's smaller than the actual value.")]
#only("5")[#voiceover("Option d) 1.3 is incorrect as well. It's larger than the actual value.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 5/4 to a Decimal: Method]
#v(40pt)
#only("1-")[- Multiply both numerator and denominator by 25 📊]
#v(20pt)
#only("2-")[- This makes the denominator 100, which is easier to convert 💡]
#v(20pt)
#only("3-")[- Place the decimal point in the right spot ➡️]

#only("1")[#voiceover("To convert 5/4 to a decimal, we'll use a clever method. First, we'll multiply both the numerator and denominator by 25.")]
#only("2")[#voiceover("Why 25? Because it makes the denominator 100, which is much easier to convert to a decimal.")]
#only("3")[#voiceover("Then, we'll place the decimal point in the right spot to get our answer.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[$ 5/4 = (5 times 25)/(4 times 25) $]
#v(20pt)
#only("2-")[$ = 125/100 $]
#v(20pt)
#only("3-")[$ = 1.25 $]

#only("1")[#voiceover("Let's start with our fraction, 5/4. We multiply both top and bottom by 25.")]
#only("2")[#voiceover("This gives us 125 over 100.")]
#only("3")[#voiceover("Now, 125 over 100 is easy to convert to a decimal. We just need to move the decimal point two places to the left in 125, giving us 1.25.")]
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

fig, ax = plt.subplots(figsize=(8, 6))

ax.pie([1, 0.25], labels=['1', '0.25'], autopct='%1.2f%%', startangle=90, colors=['#ff9999', '#66b3ff'])
ax.set_title('Visual Representation of 1.25 (5/4)')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of 1.25 or 5/4. As you can see, it's one whole plus a quarter, which together make 1.25.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- 5/4 = 1.25 in decimal form 🔢]
#v(20pt)
#only("2-")[- Multiplying by 25/25 helps convert to hundredths 💯]
#v(20pt)
#only("3-")[- Practice this method with other fractions! 🏋️]

#only("1")[#voiceover("To summarize, we've learned that 5/4 equals 1.25 in decimal form.")]
#only("2")[#voiceover("We used a helpful trick of multiplying by 25 over 25 to convert our fraction to hundredths, making it easier to write as a decimal.")]
#only("3")[#voiceover("Try practicing this method with other fractions to improve your fraction-to-decimal conversion skills!")]
]