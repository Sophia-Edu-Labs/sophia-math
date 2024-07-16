#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions with Integers]
  #v(40pt)

  #only("1-")[Multiply 6 by 5/6:]
  #v(20pt)

  #only("-1")[a) 5/6]#only("2-")[#text(fill:red)[a) 5/6]]
  #v(10pt)
  #only("-2")[b) 10/6]#only("3-")[#text(fill:red)[b) 10/6]]
  #v(10pt)
  #only("-3")[c) 15/6]#only("4-")[#text(fill:red)[c) 15/6]]
  #v(10pt)
  #only("-4")[d) 30/6]#only("5-")[#text(fill:green)[d) 30/6]]

  #only("1")[#voiceover("Great job! You got it right. Let's go through each option to understand why d) 30/6 is the correct answer.")]

  #only("2")[#voiceover("Option a) 5/6 is incorrect. This is simply the fraction we're multiplying by, not the result of the multiplication.")]

  #only("3")[#voiceover("Option b) 10/6 is also incorrect. This would be the result if we had multiplied 6 by 5/3, not 5/6.")]

  #only("4")[#voiceover("Option c) 15/6 is incorrect as well. This would be the result if we had multiplied 3 by 5/6, not 6 by 5/6.")]

  #only("5")[#voiceover("The correct answer is d) 30/6. Let's see why in the next slide.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solution: 6 dot 5/6]
  #v(40pt)

  #only("1-")[Step 1: Multiply the integer by the numerator]
  #v(20pt)
  #only("2-")[$6 dot 5/6 = (6 dot 5)/6$]
  #v(20pt)
  #only("3-")[Step 2: Simplify]
  #v(20pt)
  #only("4-")[$= 30/6$]

  #only("1")[#voiceover("Let's solve this step by step. When multiplying an integer by a fraction, we can follow a simple rule.")]

  #only("2")[#voiceover("Step 1: We multiply the integer by the numerator of the fraction. In this case, we multiply 6 by 5, keeping the denominator the same.")]

  #only("3")[#voiceover("Step 2: Now we just need to simplify our result.")]

  #only("4")[#voiceover("We get 30/6, which is our final answer. This fraction can be further simplified to 5, but that wasn't asked in the question.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[General Rule]
  #v(40pt)

  #only("1-")[For any integer $n$ and fraction $a/b$:]
  #v(20pt)
  #only("2-")[$n dot a/b = (n dot a)/b$]
  #v(40pt)
  #only("3-")[Example: $6 dot 5/6 = (6 dot 5)/6 = 30/6$]

  #only("1")[#voiceover("Let's generalize what we've learned into a rule.")]

  #only("2")[#voiceover("For any integer n and fraction a over b, when we multiply them, we get n times a, over b. In other words, we multiply the integer by the numerator, and keep the denominator the same.")]

  #only("3")[#voiceover("Our example fits this rule perfectly. 6 times 5/6 equals 6 times 5, over 6, which gives us 30/6. This rule makes multiplying integers with fractions much simpler!")]
]