#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

#only("1-")[
$3/5 times 7/8 = ?$
]

#v(20pt)

#only("2-")[
$3/5 times 7/8 = (3 dot 7)/(5 dot 8)$
]

#v(20pt)

#only("3-")[
$3/5 times 7/8 = 21/40$
]

#v(20pt)

#only("4-")[
🎉 Correct! 21/40 is the final answer.
]

#only("1")[
#voiceover("Not quite. Let's review the correct solution step-by-step. We start with the problem: three-fifths multiplied by seven-eighths.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 3 by 7 in the numerator, and 5 by 8 in the denominator.")
]

#only("3")[
#voiceover("This gives us twenty-one over forty. There's no need for simplification here as 21 and 40 don't have any common factors other than 1.")
]

#only("4")[
#voiceover("So, the final answer is indeed twenty-one fortieths or 21/40. Well done on solving this problem!")
]
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
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

# First fraction: 3/5
ax1.pie([3, 2], labels=['3/5', ''], colors=['#ff9999', 'white'], startangle=90)
ax1.set_title('3/5')

# Second fraction: 7/8
ax2.pie([7, 1], labels=['7/8', ''], colors=['#66b3ff', 'white'], startangle=90)
ax2.set_title('7/8')

# Result: 21/40
ax3.pie([21, 19], labels=['21/40', ''], colors=['#99ff99', 'white'], startangle=90)
ax3.set_title('21/40')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Visual representation of 3/5 × 7/8 = 21/40],
)
]
]

#only("1")[
#voiceover("Let's visualize our fractions to better understand the multiplication. Here we have three pie charts.")
]

#only("2")[
#voiceover("The first pie chart represents three-fifths. As you can see, three out of five slices are colored.")
]

#only("3")[
#voiceover("The second pie chart shows seven-eighths, with seven out of eight slices colored.")
]

#only("4")[
#voiceover("The third pie chart represents our result, twenty-one fortieths. Notice how it's a smaller portion than either of the original fractions, which makes sense as we're multiplying two proper fractions.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why This Works]
#v(40pt)

#only("1-")[
- Multiplication of fractions: $(a/b) times (c/d) = (a times c)/(b times d)$
]

#v(20pt)

#only("2-")[
- In our case: $(3/5) times (7/8) = (3 times 7)/(5 times 8) = 21/40$
]

#v(20pt)

#only("3-")[
- This method always works for fraction multiplication! 🧮✨
]

#only("1")[
#voiceover("Now, let's understand why this method of multiplying fractions works. The general rule for multiplying fractions is: when we multiply a over b by c over d, we get a times c over b times d.")
]

#only("2")[
#voiceover("In our specific problem, we're multiplying three-fifths by seven-eighths. Following the rule, we multiply 3 by 7 in the numerator, and 5 by 8 in the denominator, giving us twenty-one fortieths.")
]

#only("3")[
#voiceover("This method always works for multiplying fractions, regardless of their size or complexity. It's a powerful tool in fraction arithmetic!")
]
]