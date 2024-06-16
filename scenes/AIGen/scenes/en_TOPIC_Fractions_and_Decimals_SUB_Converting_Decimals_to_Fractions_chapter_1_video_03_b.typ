#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's okay! Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]

#v(40pt)

#only("2-")[#text()[$0.4$]]
// The decimal number 0.4 is shown from slide 2 onward

#only("2")[
#voiceover("We're considering the decimal number zero point four.")
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
#text(size: 30pt, weight: "bold")[Example: Converting $0.4$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.4$. $arrow$There is 1 decimal place.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 4$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $10 arrow 4/10$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number zero point four. First, we count the decimal places. There is one decimal place.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us four.")
]
#only("3")[
#voiceover("Then, we divide four by a one followed by one zero. Since zero point four has one decimal place, we divide it by ten. So we get four over ten. And that's it, we're done! The solution is four over ten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Fraction]
#v(40pt)
#only("1-")[- Step 4: Simplify the fraction. ➗]
#v(20pt)
#only("2-")[$4/10 = 2/5$]

#only("1")[
#voiceover("Finally, we simplify the fraction. To do this, we find the greatest common divisor of the numerator and the denominator.")
]
#only("2")[
#voiceover("In this case, the greatest common divisor of four and ten is two. So, we divide both the numerator and the denominator by two, which gives us two over five. Therefore, zero point four is equal to two over five.")
]
]