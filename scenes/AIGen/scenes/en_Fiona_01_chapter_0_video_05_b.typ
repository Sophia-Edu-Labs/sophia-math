#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Rolling a Number Greater Than 4]
#v(40pt)
#only("1-")[a) 0.5]
#v(10pt)
#only("2-")[b) 0.6]
#v(10pt)
#only("3-")[c) 0.7]
#v(10pt)
#only("4-")[d) 0.4]
#v(40pt)

#only("1")[#voiceover("Great job on answering the question! Let's go through the solution step-by-step.")]
#only("2")[#voiceover("Option a) 0.5 is incorrect. The relative frequency is calculated by dividing the number of favorable outcomes by the total number of trials.")]
#only("3")[#voiceover("Option b) 0.6 is correct. We rolled a number greater than 4 six times out of ten trials. This gives us a relative frequency of 6 divided by 10, which equals 0.6.")]
#only("4")[#voiceover("Option c) 0.7 is incorrect. This would imply that we rolled a number greater than 4 seven times out of ten trials, which is not the case.")]
#only("5")[#voiceover("Option d) 0.4 is also incorrect. This would imply that we rolled a number greater than 4 four times out of ten trials, which is not the case.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Relative Frequency]
#v(40pt)
#only("1-")[- Total number of trials: 10 🎲]
#v(20pt)
#only("2-")[- Favorable outcomes: 5, 6, 6, 6, 6 (5 times) 🎯]
#v(20pt)
#only("3-")[- Relative frequency: $6/10 = 0.6$ 📊]
#v(40pt)

#only("1")[#voiceover("Let's calculate the relative frequency. We had a total of 10 trials.")]
#only("2")[#voiceover("The favorable outcomes, where we rolled a number greater than 4, were 5, 6, 6, 6, and 6. This happened 5 times.")]
#only("3")[#voiceover("To find the relative frequency, we divide the number of favorable outcomes by the total number of trials. So, 6 divided by 10 equals 0.6.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Options]
#v(40pt)
#only("1-")[- Option a) 0.5 ❌]
#v(10pt)
#only("2-")[- Option b) 0.6 ✅]
#v(10pt)
#only("3-")[- Option c) 0.7 ❌]
#v(10pt)
#only("4-")[- Option d) 0.4 ❌]
#v(40pt)

#only("1")[#voiceover("Now, let's understand why the other options are incorrect.")]
#only("2")[#voiceover("Option a) 0.5 is incorrect because it implies that we rolled a number greater than 4 five times out of ten trials, which is not the case.")]
#only("3")[#voiceover("Option c) 0.7 is incorrect because it implies that we rolled a number greater than 4 seven times out of ten trials, which is not the case.")]
#only("4")[#voiceover("Option d) 0.4 is incorrect because it implies that we rolled a number greater than 4 four times out of ten trials, which is not the case.")]
]