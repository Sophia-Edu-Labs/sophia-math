#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency Calculation]
#v(40pt)
#only("1-")[What is the relative frequency of students who like history?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) 0.3]#only("2-")[#text(fill:red)[a) 0.3]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) 0.4]#only("3-")[#text(fill:green)[b) 0.4]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) 0.5]#only("4-")[#text(fill:red)[c) 0.5]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) 0.6]#only("5-")[#text(fill:red)[d) 0.6]]
#v(40pt)

#only("1")[#voiceover("Great job on answering the question! Let's go over the solution step-by-step.")]
#only("2")[#voiceover("Option a) 0.3 is incorrect. The relative frequency is calculated by dividing the number of students who like history by the total number of students. Here, the number of students who like history is 20, and the total number of students is 50. So, 20 divided by 50 equals 0.4.")]
#only("3")[#voiceover("Option b) 0.4 is correct. As we calculated, 20 divided by 50 equals 0.4.")]
#only("4")[#voiceover("Option c) 0.5 is incorrect. This would mean that 25 out of 50 students like history, which is not the case here.")]
#only("5")[#voiceover("Option d) 0.6 is also incorrect. This would mean that 30 out of 50 students like history, which is also not the case here.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency Calculation]
#v(40pt)
#only("1-")[Let's break down the calculation:]
#v(20pt)
#only("2-")[- Number of students who like history: $20$ 📚]
#v(10pt)
#only("3-")[- Total number of students: $50$ 👥]
#v(10pt)
#only("4-")[- Relative frequency: $20/50$ = $0.4$ 🧮]
#v(40pt)

#only("1")[#voiceover("Let's break down the calculation step-by-step.")]
#only("2")[#voiceover("First, we have the number of students who like history, which is 20.")]
#only("3")[#voiceover("Next, we have the total number of students, which is 50.")]
#only("4")[#voiceover("To find the relative frequency, we divide the number of students who like history by the total number of students. So, 20 divided by 50 equals 0.4.")]
]