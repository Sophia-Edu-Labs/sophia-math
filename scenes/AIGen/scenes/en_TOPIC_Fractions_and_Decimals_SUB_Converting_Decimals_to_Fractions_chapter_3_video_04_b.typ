#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]
#v(40pt)
#only("1")[
#voiceover("That's okay, let's go through the correct solution step by step together.")
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
#voiceover("Before we solve the exercise, a quick reminder of the steps to convert decimals to fractions. First, count the number of decimal places in the decimal number.")
]
#only("2")[
#voiceover("Next, remove the decimal point from the number.")
]
#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $1.25$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $1.25$. $arrow$There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 125$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 125/100$ ]
#v(20pt)
#only("4-")[- Step 4: Simplify the fraction: $arrow 5/4$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number 1.25 ... To convert one point two five to a fraction, we first count the decimal places. There are two decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us one hundred twenty-five.")
]
#only("3")[
#voiceover("Then, we divide one hundred twenty-five by a one followed by two zeroes. Since 1.25 has two decimal places, we divide it by one hundred. So we get one hundred twenty-five over one hundred.")
]
#only("4")[
#voiceover("Finally, we simplify the fraction. The greatest common divisor of one hundred twenty-five and one hundred is twenty-five. So we divide both the numerator and the denominator by twenty-five, which gives us five over four. And that's it, we're done! The solution is five over four.")
]
]