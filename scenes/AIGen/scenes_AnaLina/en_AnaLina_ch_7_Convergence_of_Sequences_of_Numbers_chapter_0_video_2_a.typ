#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What is a Sequence?]
#v(40pt)
#only("1-")[What is a sequence?]
#v(40pt)
#only("-1")[a) A random list of numbers]#only("2-")[#text(fill:red)[a) A random list of numbers]]
#v(10pt)
#only("-1")[b) An ordered list of numbers]#only("3-")[#text(fill:green)[b) An ordered list of numbers]]
#v(10pt) 
#only("-1")[c) A set of unrelated numbers]#only("4-")[#text(fill:red)[c) A set of unrelated numbers]]
#v(10pt)
#only("-1")[d) A single number]#only("5-")[#text(fill:red)[d) A single number]]

#only("1")[#voiceover("That's okay! Let's take a look at the correct solution.")]
#only("2")[#voiceover("a) A random list of numbers is incorrect. A sequence has a specific order.")]
#only("3")[#voiceover("b) An ordered list of numbers is the correct definition of a sequence.")]
#only("4")[#voiceover("c) A set of unrelated numbers is incorrect. The numbers in a sequence are related by a rule or pattern.")]
#only("5")[#voiceover("d) A single number is incorrect. A sequence consists of multiple numbers.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[- A sequence is an ordered list of numbers.]
#only("2-")[- The numbers in a sequence follow a particular pattern or rule.]
#only("3-")[- For example, the sequence $1, 2, 3, 4, ...$ follows the rule $a_n = n$.]
#only("4-")[- Another example is the Fibonacci sequence: $1, 1, 2, 3, 5, 8, ...$]
#v(20pt)
#only("5-")[Therefore, the correct answer is b) An ordered list of numbers. 🎉]

#only("1")[#voiceover("Let's break this down step by step. A sequence is indeed an ordered list of numbers.")]
#only("2")[#voiceover("The numbers in a sequence are not random. They follow a specific pattern or rule.")]
#only("3")[#voiceover("For instance, consider the sequence 1, 2, 3, 4, and so on. Each term in this sequence is equal to its position. We can write this as a subscript n equals n.")]
#only("4")[#voiceover("Another famous example is the Fibonacci sequence: 1, 1, 2, 3, 5, 8, and so on. Each term is the sum of the two preceding ones.")]
#only("5")[#voiceover("So, the correct answer is b) An ordered list of numbers. Well done on choosing the right option!")]
]