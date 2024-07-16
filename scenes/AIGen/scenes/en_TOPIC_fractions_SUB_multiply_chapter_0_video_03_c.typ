#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions by Integers]
  #v(40pt)
  
  #only("1-")[Multiply 4 by 2/3]
  #v(20pt)
  
  #only("-1")[a) 4/3]#only("2-")[#text(fill:red)[a) 4/3]]
  #v(10pt)
  #only("-2")[b) 6/3]#only("3-")[#text(fill:red)[b) 6/3]]
  #v(10pt)
  #only("-3")[c) 8/3]#only("4-")[#text(fill:green)[c) 8/3]]
  #v(10pt)
  #only("-4")[d) 10/3]#only("5-")[#text(fill:red)[d) 10/3]]

  #only("1")[#voiceover("Great job! You've answered this question correctly. Let's go through each option to understand why c) 8/3 is the correct answer.")]
  #only("2")[#voiceover("Option a) 4/3 is incorrect. This would be the result if we multiplied 2/3 by 2, not by 4.")]
  #only("3")[#voiceover("Option b) 6/3 is also incorrect. This would be the result if we multiplied 2/3 by 3.")]
  #only("4")[#voiceover("Option c) 8/3 is correct! When multiplying a fraction by an integer, we multiply the numerator by the integer and keep the denominator the same. So, 4 times 2/3 equals 8/3.")]
  #only("5")[#voiceover("Option d) 10/3 is incorrect. This would be the result if we multiplied 2/3 by 5.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step-by-Step Solution]
  #v(40pt)
  
  #only("1-")[1. Identify the problem: $4 dot 2/3$]
  #v(20pt)
  #only("2-")[2. Multiply the integer by the numerator: $4 dot 2 = 8$]
  #v(20pt)
  #only("3-")[3. Keep the denominator the same: $3$]
  #v(20pt)
  #only("4-")[4. Write the result: $8/3$]

  #only("1")[#voiceover("Let's break down the solution step by step. First, we identify our problem: we need to multiply 4 by 2/3.")]
  #only("2")[#voiceover("Next, we multiply the integer 4 by the numerator of the fraction, which is 2. Four times two equals 8.")]
  #only("3")[#voiceover("The key here is that we keep the denominator the same. The denominator remains 3.")]
  #only("4")[#voiceover("Finally, we write our result as 8/3. And that's our answer!")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[General Rule]
  #v(40pt)
  
  #only("1-")[When multiplying an integer $n$ by a fraction $a/b$:]
  #v(20pt)
  #only("2-")[$ n dot a/b = (n dot a)/b $]
  #v(40pt)
  #only("3-")[Example: $ 4 dot 2/3 = (4 dot 2)/3 = 8/3 $]

  #only("1")[#voiceover("Let's generalize this concept. When multiplying an integer n by a fraction a over b,")]
  #only("2")[#voiceover("we multiply n by a, and keep b as the denominator. This gives us the formula: n times a over b equals n times a, all over b.")]
  #only("3")[#voiceover("Using our example, we can see that 4 times 2/3 equals 4 times 2, which is 8, over 3, giving us 8/3.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)
  
  #only("1-")[Multiplying by a fraction means taking parts of a whole]
  #v(20pt)
  #only("2-")[2/3 of 4 = 4 dot 2/3]
  #v(20pt)
  #only("3-")[This is equivalent to:]
  #v(20pt)
  #only("4-")[1. Dividing 4 by 3: 4/3]
  #v(10pt)
  #only("5-")[2. Multiplying the result by 2: (4/3) dot 2 = 8/3]

  #only("1")[#voiceover("To understand why this works, remember that multiplying by a fraction means taking parts of a whole.")]
  #only("2")[#voiceover("In our case, we're finding 2/3 of 4, which is the same as 4 times 2/3.")]
  #only("3")[#voiceover("We can think of this in two steps:")]
  #only("4")[#voiceover("First, we divide 4 by 3, giving us 4/3.")]
  #only("5")[#voiceover("Then, we multiply this result by 2, which gives us 8/3. This is why our shortcut of multiplying the numerator by the integer works!")]
]