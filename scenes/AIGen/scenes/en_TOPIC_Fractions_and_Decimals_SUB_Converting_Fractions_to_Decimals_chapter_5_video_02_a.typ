#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $4/5$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.8$]#only("2-")[#text(fill:green)[a) $0.8$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $0.45$]#only("3-")[#text(fill:red)[b) $0.45$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $0.75$]#only("4-")[#text(fill:red)[c) $0.75$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $0.5$]#only("5-")[#text(fill:red)[d) $0.5$]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's go through the options to understand why the correct answer is a) 0.8.")]
#only("2")[#voiceover("Option a) 0.8 is correct. When you divide 4 by 5, you get 0.8.")]
#only("3")[#voiceover("Option b) 0.45 is incorrect. 0.45 is less than 0.8.")]
#only("4")[#voiceover("Option c) 0.75 is incorrect. 0.75 is also less than 0.8.")]
#only("5")[#voiceover("Option d) 0.5 is incorrect. 0.5 is half, which is less than 0.8.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Write the result as a decimal. ✍️]

#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, write the result as a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $4/5$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: ➗ Divide $4$ by $5$. $arrow 4 ÷ 5 = 0.8$]
#v(20pt)
#only("2-")[- Step 2: ✍️ Write the result as a decimal: $0.8$.]

#only("1")[
#voiceover("Now let's apply these steps to the fraction four over five. First, we divide four by five, which gives us zero point eight.")
]
#only("2")[
#voiceover("Next, we write the result as a decimal, which is zero point eight. And that's the correct answer!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why the Other Options are Incorrect]
#v(40pt)
#only("1-")[- Option b) $0.45$ is incorrect. $0.45$ is less than $0.8$.]
#v(20pt)
#only("2-")[- Option c) $0.75$ is incorrect. $0.75$ is also less than $0.8$.]
#v(20pt)
#only("3-")[- Option d) $0.5$ is incorrect. $0.5$ is half, which is less than $0.8$.]

#only("1")[
#voiceover("Let's understand why the other options are incorrect. Option b) 0.45 is less than 0.8.")]
#only("2")[
#voiceover("Option c) 0.75 is also less than 0.8.")]
#only("3")[
#voiceover("Option d) 0.5 is half, which is less than 0.8.")]
]

```

This Typst code creates a slideshow that explains the solution to the exercise "What is $4/5$ as a decimal?" step-by-step, with voiceovers guiding the learner through each step. The slides use the `#only()