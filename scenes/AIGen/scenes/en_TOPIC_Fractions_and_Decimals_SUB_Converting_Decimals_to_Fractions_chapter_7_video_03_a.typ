#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on attempting the exercise! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Converting Decimals with More Complexity to Fractions]

#v(40pt)

#only("2-")[#text()[$5.678$]]
// The decimal number 5.678 is shown from slide 2 onward

#only("2")[
#voiceover("We are given the decimal number five point six seven eight.")
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
#text(size: 30pt, weight: "bold")[Example: Converting $5.678$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $5.678$. $arrow$ There are 3 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 5678$.]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $1000 arrow 5678/1000$.]
#v(20pt)
#only("4-")[- Step 4: Simplify the fraction if possible.]
#only("1")[
#voiceover("Now let's apply these steps to the decimal number five point six seven eight. First, we count the decimal places. There are three decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us five thousand six hundred seventy-eight.")
]
#only("3")[
#voiceover("Then, we divide five thousand six hundred seventy-eight by a one followed by three zeroes. Since 5.678 has three decimal places, we divide it by one thousand. So we get five thousand six hundred seventy-eight over one thousand.")
]
#only("4")[
#voiceover("Finally, we simplify the fraction if possible. In this case, five thousand six hundred seventy-eight over one thousand simplifies to two hundred eighty-three over fifty. So, the fraction equivalent of five point six seven eight is two hundred eighty-three over fifty.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplification]
#v(40pt)
#only("1-")[- $5678/1000 = 283/50$]
#only("1")[
#voiceover("To simplify the fraction, we find the greatest common divisor of five thousand six hundred seventy-eight and one thousand, which is two. Dividing both the numerator and the denominator by two, we get two hundred eighty-three over fifty.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[- The fraction equivalent of $5.678$ is $283/50$.]
#only("1")[
#voiceover("So, the fraction equivalent of five point six seven eight is two hundred eighty-three over fifty. Well done!")
]
]