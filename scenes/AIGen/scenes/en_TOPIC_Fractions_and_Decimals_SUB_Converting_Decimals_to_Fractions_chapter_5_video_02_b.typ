#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Don't worry, let's go through the correct solution step-by-step together.")
]

#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]

#v(40pt)

#only("2-")[#text()[$0.8$]]
#only("2")[
#voiceover("We are given the decimal number zero point eight.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Decimals to Fractions]
#v(40pt)
#only("1-")[- Step 1: Count the decimal places. 🔢]
#v(20pt)
#only("2-")[- Step 2: Remove the decimal point. ✂️]
#v(20pt)
#only("3-")[- Step 3: Divide by a power of ten. ➗]
#only("1")[
#voiceover("Before we solve the exercise, let's quickly remind ourselves of the steps to convert decimals to fractions. First, count the number of decimal places in the decimal number.")
]
#only("2")[
#voiceover("Next, remove the decimal point from the number.")
]
#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $0.8$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.8$. $arrow$There is 1 decimal place.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 8$.]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $10 arrow 8/10$.]
#v(20pt)
#only("4-")[- Simplify the fraction: $8/10 = 4/5$.]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number zero point eight. First, we count the decimal places. There is one decimal place.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us eight.")
]
#only("3")[
#voiceover("Then, we divide eight by a one followed by one zero. Since zero point eight has one decimal place, we divide it by ten. So we get eight over ten.")
]
#only("4")[
#voiceover("Finally, we simplify the fraction eight over ten by dividing both the numerator and the denominator by their greatest common divisor, which is two. This gives us four over five. And that's it, we're done! The solution is four over five.")
]
]