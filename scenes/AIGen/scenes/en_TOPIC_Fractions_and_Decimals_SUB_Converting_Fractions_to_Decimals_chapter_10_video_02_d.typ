#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 19/8 to a Decimal]
#v(40pt)
What is 19/8 as a decimal?
#v(40pt)
#only("-1")[a) 2.375]#only("2-")[#text(fill:green)[a) 2.375]]
#v(10pt)
#only("-2")[b) 2.3]#only("3-")[#text(fill:red)[b) 2.3]]
#v(10pt)
#only("-3")[c) 2.0]#only("4-")[#text(fill:red)[c) 2.0]]
#v(10pt)
#only("-4")[d) 2.5]#only("5-")[#text(fill:red)[d) 2.5]]

#only("1")[#voiceover("Not quite. Let's review the correct solution and see why 2.375 is the right decimal representation of 19/8.")]
#only("2")[#voiceover("Option a, 2.375, is indeed correct. We'll see how to arrive at this in the next slides.")]
#only("3")[#voiceover("Option b, 2.3, is close but not precise enough. It's an approximation, not the exact value.")]
#only("4")[#voiceover("Option c, 2.0, is too small. Remember, 19 divided by 8 is more than 2.")]
#only("5")[#voiceover("Option d, 2.5, is too large. It would be the result if we were dividing 20 by 8, not 19 by 8.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 125]
#v(40pt)
#only("1-")[$ 19/8 = (19 × 125)/(8 × 125) $]
#v(20pt)
#only("2-")[$ = 2375/1000 $]

#only("1")[#voiceover("To convert 19/8 to a decimal, let's multiply both the numerator and denominator by 125. This doesn't change the value of the fraction, but it makes our calculation easier.")]
#only("2")[#voiceover("After multiplication, we get 2375 divided by 1000. This is a key step because dividing by 1000 is the same as moving the decimal point three places to the left.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Place the Decimal Point]
#v(40pt)
#only("1-")[$ 2375/1000 = 2.375 $]
#v(20pt)
#only("2-")[💡 Move decimal point 3 places left]

#only("1")[#voiceover("Now, we just need to place the decimal point. Since we're dividing by 1000, we move the decimal point in 2375 three places to the left.")]
#only("2")[#voiceover("This gives us 2.375. And there we have it! 19/8 as a decimal is 2.375.")]
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
import numpy as np

labels = ['0', '1', '2', '19/8\n(2.375)', '3']
x = np.arange(len(labels))
values = [0, 1, 2, 2.375, 3]

fig, ax = plt.subplots(figsize=(10, 6))
ax.plot(x, values, 'bo-')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.set_ylim(0, 3.5)
ax.set_title('Position of 19/8 on Number Line')
ax.axhline(y=2.375, color='r', linestyle='--')
ax.text(2.9, 2.4, '2.375', color='r', va='bottom', ha='left')

plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of where 2.375 sits on a number line. As you can see, it's between 2 and 3, slightly closer to 2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $19/8 = 2.375$ 🎉]
#v(20pt)
#only("2-")[- Multiply by 125/125 to get 2375/1000]
#v(20pt)
#only("3-")[- Move decimal point 3 places left]

#only("1")[#voiceover("To summarize, we've found that 19 divided by 8 equals 2.375.")]
#only("2")[#voiceover("We did this by multiplying both the numerator and denominator by 125, which gave us 2375 over 1000.")]
#only("3")[#voiceover("Finally, we moved the decimal point three places to the left to get our answer. Great job on mastering this technique!")]
]