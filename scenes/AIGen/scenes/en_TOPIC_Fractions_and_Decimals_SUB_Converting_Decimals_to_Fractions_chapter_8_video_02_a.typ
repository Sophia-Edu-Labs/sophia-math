#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on answering the question correctly! Let's go through the solution step-by-step together.")
]

#text(size: 30pt, weight: "bold")[Converting Complex Decimals to Fractions]

#v(40pt)

#only("2-")[#text()[$2.345 = ?$]]
#only("2")[
#voiceover("We need to convert the decimal number two point three four five into a fraction.")
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
#voiceover("Before we solve the exercise, let's quickly review the steps to convert decimals to fractions. First, count the number of decimal places in the decimal number.")
]
#only("2")[
#voiceover("Next, remove the decimal point from the number.")
]
#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $2.345$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $2.345$. $arrow$ There are 3 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 2345$.]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $1000 arrow 2345/1000$.]
#only("4-")[- Step 4: Simplify the fraction. $arrow 469/200$.]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number two point three four five. First, we count the decimal places. There are three decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us two thousand three hundred forty-five.")
]
#only("3")[
#voiceover("Then, we divide two thousand three hundred forty-five by a one followed by three zeroes, since there are three decimal places. This gives us two thousand three hundred forty-five over one thousand.")
]
#only("4")[
#voiceover("Finally, we simplify the fraction. Two thousand three hundred forty-five divided by one thousand simplifies to four hundred sixty-nine over two hundred.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[The fraction equivalent to $2.345$ is $469/200$.]

#only("1")[
#voiceover("So, the fraction equivalent to two point three four five is four hundred sixty-nine over two hundred. Well done!")
]
]