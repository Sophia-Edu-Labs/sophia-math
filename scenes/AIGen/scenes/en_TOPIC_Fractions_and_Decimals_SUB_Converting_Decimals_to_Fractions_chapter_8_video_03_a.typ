#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Complex Decimals to Fractions]
#v(40pt)
#only("1")[
#voiceover("Great job on attempting the exercise! Let's go through the solution step by step together.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Complex Decimals to Fractions]
#v(40pt)
#only("1-")[- Step 1: Identify the repeating part of the decimal. 🔄]
#v(20pt)
#only("2-")[- Step 2: Set up an equation representing the decimal. ➕]
#v(20pt)
#only("3-")[- Step 3: Multiply the equation to shift the decimal point. ✖️]
#v(20pt)
#only("4-")[- Step 4: Subtract the original equation from the new one. ➖]
#v(20pt)
#only("5-")[- Step 5: Solve for the variable. 🧮]

#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert complex decimals to fractions. First, identify the repeating part of the decimal.")
]
#only("2")[
#voiceover("Next, set up an equation representing the decimal number.")
]
#only("3")[
#voiceover("Then, multiply the equation by a power of ten to shift the decimal point.")
]
#only("4")[
#voiceover("After that, subtract the original equation from the new one.")
]
#only("5")[
#voiceover("Finally, solve for the variable to find the fraction.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $4.567$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔄 Identify the repeating part in $4.567$. $arrow$ The repeating part is $567$.]
#v(20pt)
#only("2-")[- Step 2: ➕ Set up the equation: $x = 4.567567...$ ]
#v(20pt)
#only("3-")[- Step 3: ✖️ Multiply by $1000$: $1000x = 4567.567567...$ ]
#v(20pt)
#only("4-")[- Step 4: ➖ Subtract: $1000x - x = 4567.567567... - 4.567567...$ ]
#v(20pt)
#only("5-")[- Step 5: 🧮 Solve for $x$: $999x = 4563 arrow x = 4563/999$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number 4.567. First, we identify the repeating part, which is 567.")
]
#only("2")[
#voiceover("Next, we set up the equation x equals 4.567567... where the repeating part continues indefinitely.")
]
#only("3")[
#voiceover("Then, we multiply the equation by one thousand to shift the decimal point three places to the right, giving us one thousand x equals 4567.567567...")
]
#only("4")[
#voiceover("After that, we subtract the original equation from the new one. So, one thousand x minus x equals 4567.567567... minus 4.567567...")
]
#only("5")[
#voiceover("Finally, we solve for x. This gives us 999x equals 4563, so x equals 4563 divided by 999. And that's the fraction equivalent of 4.567.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Fraction]
#v(40pt)
#only("1-")[- Step 6: Simplify $4563/999$. ]
#v(20pt)
#only("2-")[- $4563/999 = 507/111$ ]
#v(20pt)
#only("3-")[- $507/111 = 169/37$ ]

#only("1")[
#voiceover("Now, let's simplify the fraction 4563 over 999.")
]
#only("2")[
#voiceover("First, we divide both the numerator and the denominator by their greatest common divisor, which is 9. This gives us 507 over 111.")
]
#only("3")[
#voiceover("Next, we simplify further by dividing by their greatest common divisor, which is 3. This gives us 169 over 37. So, the fraction equivalent of 4.567 is 169 over 37.")
]
]