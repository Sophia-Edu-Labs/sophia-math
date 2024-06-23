#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's okay, let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]

#v(40pt)

#only("2-")[#text()[$0.56$]]
#only("2")[
#voiceover("So we're considering the decimal number zero point five six.")
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
#text(size: 30pt, weight: "bold")[Example: Converting $0.56$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.56$. $arrow$ There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 56$.]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 56/100$.]
#v(20pt)
#only("4-")[- Step 4: Simplify the fraction: $arrow 28/50 arrow 14/25$.]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number zero point five six. To convert zero point five six to a fraction, we first count the decimal places. There are two decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us fifty-six.")
]
#only("3")[
#voiceover("Then, we divide fifty-six by a one followed by two zeroes. Since zero point five six has two decimal places, we divide it by one hundred. So we get fifty-six over one hundred.")
]
#only("4")[
#voiceover("Finally, we simplify the fraction. Fifty-six divided by one hundred can be simplified to twenty-eight over fifty, and further simplified to fourteen over twenty-five. So, zero point five six is equal to fourteen over twenty-five.")
]
]