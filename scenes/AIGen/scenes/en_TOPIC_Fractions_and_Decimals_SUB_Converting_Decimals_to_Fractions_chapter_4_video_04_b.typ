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
#text(size: 30pt, weight: "bold")[Converting Decimals with Leading Zeros to Fractions]
#v(40pt)
What fraction is $0.09$ equal to?
#v(40pt)
#only("1-")[The correct answer is $9/100$]
#only("1")[
#voiceover("That's right, well done! The correct answer is nine divided by one hundred. Let's find out why this is the case.")]
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
#text(size: 30pt, weight: "bold")[Example: Converting $0.09$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.09$. $arrow$ There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 9$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 9/100$ ]
#only("1")[
#voiceover("Now let's apply these steps to the decimal number zero point zero nine ... To convert zero point zero nine to a fraction, we first count the decimal places. There are two decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us nine.")
]
#only("3")[
#voiceover("Then, we divide nine by a one followed by two zeroes. Since zero point zero nine has two decimal places, we divide it by one hundred. So we get nine over one hundred. And that's it, we're done! The solution is nine over one hundred.")
]
]