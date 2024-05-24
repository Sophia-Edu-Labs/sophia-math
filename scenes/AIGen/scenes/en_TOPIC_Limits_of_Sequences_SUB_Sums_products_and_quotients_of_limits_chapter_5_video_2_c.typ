#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications]
#v(40pt)
#only("1-")[Which of the following is an example of a real-world application of limits of sequences?]
#v(40pt)
#only("-1")[a) Calculating compound interest]
#only("2-")[#text(fill:green)[a) Calculating compound interest]]
#v(10pt)
#only("-1")[b) Population growth]
#only("3-")[#text(fill:green)[b) Population growth]]
#v(10pt)
#only("-1")[c) Both a and b]
#only("4-")[#text(fill:green)[c) Both a and b]]
#v(10pt)
#only("-1")[d) Neither a nor b]
#only("5-")[#text(fill:red)[d) Neither a nor b]]
#v(40pt)
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Calculating compound interest is indeed an example of a real-world application of limits of sequences.")]
#only("3")[#voiceover("Population growth is also a real-world application of limits of sequences.")]
#only("4")[#voiceover("So the correct answer is c) Both a and b. Calculating compound interest and population growth are both examples of real-world applications of limits of sequences.")]
#only("5")[#voiceover("The answer d) Neither a nor b is incorrect, as both calculating compound interest and population growth are real-world applications of limits of sequences.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Understand the concept of limits of sequences 📚]
#v(20pt)
#only("2-")[2. Recognize that compound interest involves a sequence 💰]
#v(20pt)
#only("3-")[   - Each term represents the amount after a period]
#v(20pt)
#only("4-")[   - The limit is the amount as the number of periods $arrow infinity$]
#only("1")[#voiceover("To solve this problem, let's go through it step by step.")]
#only("2")[#voiceover("First, we need to understand what limits of sequences are. They describe the behavior of a sequence as the index approaches infinity.")]
#only("3")[#voiceover("Now, let's think about compound interest. It involves a sequence where each term represents the amount of money after a certain period.")]
#only("4")[#voiceover("The limit of this sequence would be the amount of money as the number of compounding periods approaches infinity.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Recognize that population growth involves a sequence 👥]
#v(20pt)
#only("2-")[   - Each term represents the population after a time period]
#v(20pt)
#only("3-")[   - The limit is the population as time $arrow infinity$]
#v(20pt)
#only("4-")[2. Conclude that both are real-world applications of limits of sequences ✅]
#only("5")[#voiceover("Similarly, population growth can also be modeled by a sequence.")]
#only("6")[#voiceover("Each term in the sequence represents the population after a certain time period.")]
#only("7")[#voiceover("The limit of this sequence would be the population as time approaches infinity.")]
#only("8")[#voiceover("Therefore, we can conclude that both calculating compound interest and population growth are real-world applications of limits of sequences.")]
]