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

#text(size: 30pt, weight: "bold")[Converting Decimals with More Complexity to Fractions]

#v(40pt)

#only("2-")[#text()[$3.042$]]
// The decimal number 3.042 is shown from slide 2 onward

#only("2")[
#voiceover("So we're considering the decimal number three point zero four two.")
]
]


#slide()[
#only("1")[
#voiceover("To convert this decimal to a fraction, we follow a few steps. Let's start with the first step.")
]

#text(size: 30pt, weight: "bold")[Steps to Convert Decimals to Fractions]

#v(40pt)

#only("1-")[- Step 1: Count the decimal places. 🔢]
// The first step is shown from slide 1 onward

#only("2-")[- Step 2: Remove the decimal point. ✂️]
// The second step is shown from slide 2 onward

#only("3-")[- Step 3: Divide by a power of ten. ➗]
// The third step is shown from slide 3 onward

#only("1")[
#voiceover("First, count the number of decimal places in the decimal number.")
]

#only("2")[
#voiceover("Next, remove the decimal point from the number.")
]

#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $3.042$ to a Fraction]

#v(40pt)

#only("1-")[- Step 1: 🔢 Count the decimal places in $3.042$. $arrow$There are 3 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 3042$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $1000 arrow 3042/1000$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number three point zero four two. To convert three point zero four two to a fraction, we first count the decimal places. There are three decimal places.")
]

#only("2")[
#voiceover("Next, we remove the decimal point, which gives us three thousand forty-two.")
]

#only("3")[
#voiceover("Then, we divide three thousand forty-two by a one followed by three zeroes. Since three point zero four two has three decimal places, we divide it by one thousand. So we get three thousand forty-two over one thousand.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Fraction]

#v(40pt)

#only("1-")[- Step 4: Simplify the fraction if possible. 🧮]
#v(20pt)
#only("2-")[- $3042/1000 = 1521/500$]

#only("1")[
#voiceover("Finally, we simplify the fraction if possible. In this case, we can simplify three thousand forty-two over one thousand.")
]

#only("2")[
#voiceover("By dividing both the numerator and the denominator by their greatest common divisor, which is two, we get one thousand five hundred twenty-one over five hundred.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[- The fraction equivalent of $3.042$ is $1521/500$. 🎉]

#only("1")[
#voiceover("So, the fraction equivalent of three point zero four two is one thousand five hundred twenty-one over five hundred. Great job!")
]
]