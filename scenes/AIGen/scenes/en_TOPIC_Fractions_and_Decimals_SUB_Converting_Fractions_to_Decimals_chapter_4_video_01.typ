#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Complex Fractions to Decimals]
  #v(40pt)
  
  #only("1-")[- Not all fractions have denominators that are powers of 10 🤔]
  #v(20pt)
  #only("2-")[- Example: $3/8$ ➡️ How to convert?]
  #v(20pt)
  #only("3-")[- Solution: Multiply numerator and denominator by the same value]
  #v(20pt)
  #only("4-")[- Goal: Get a denominator that's a power of 10]

  #only("1")[
    #voiceover("Welcome to our lesson on converting more complex fractions to decimals. We often encounter fractions in our daily lives, but not all of them are as straightforward to convert to decimals as those with denominators that are powers of ten.")
  ]
  #only("2")[
    #voiceover("Let's consider an example: How would we convert the fraction three-eighths to a decimal? It's not immediately clear, is it?")
  ]
  #only("3")[
    #voiceover("The key to solving this problem is to multiply both the numerator and denominator by the same value. This doesn't change the value of the fraction, but it can make it easier to convert to a decimal.")
  ]
  #only("4")[
    #voiceover("Our goal is to transform the denominator into a power of ten. Once we achieve this, we can easily convert the fraction to a decimal, just like we've done before with simpler fractions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Process]
  #v(40pt)
  
  #only("1-")[1️⃣ Identify the fraction: $3/8$]
  #v(20pt)
  #only("2-")[2️⃣ Find a number to multiply by: $125$]
  #v(20pt)
  #only("3-")[3️⃣ Multiply both parts: $(3 dot 125)/(8 dot 125) = 375/1000$]
  #v(20pt)
  #only("4-")[4️⃣ Convert to decimal: $375/1000 = 0.375$]

  #only("1")[
    #voiceover("Let's walk through the process step by step. We start with our fraction, three-eighths.")
  ]
  #only("2")[
    #voiceover("Next, we need to find a number that, when multiplied by 8, gives us a power of 10. In this case, that number is 125, because 8 times 125 equals 1000, which is 10 to the third power.")
  ]
  #only("3")[
    #voiceover("Now, we multiply both the numerator and denominator by 125. This gives us 3 times 125 over 8 times 125, which simplifies to 375 over 1000.")
  ]
  #only("4")[
    #voiceover("Finally, we can easily convert this to a decimal. 375 divided by 1000 is 0.375.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[- To convert complex fractions to decimals:]
  #v(20pt)
  #only("2-")[  1. Multiply numerator and denominator by same value]
  #v(20pt)
  #only("3-")[  2. Aim for a denominator that's a power of 10]
  #v(20pt)
  #only("4-")[  3. Then convert as usual]
  #v(20pt)
  #only("5-")[- This method works for any fraction! 🎉]

  #only("1")[
    #voiceover("Let's summarize what we've learned about converting more complex fractions to decimals.")
  ]
  #only("2")[
    #voiceover("First, we multiply both the numerator and denominator by the same value.")
  ]
  #only("3")[
    #voiceover("Our goal is to get a denominator that's a power of ten.")
  ]
  #only("4")[
    #voiceover("Once we have that, we can convert the fraction to a decimal just like we do with simpler fractions.")
  ]
  #only("5")[
    #voiceover("The beauty of this method is that it works for any fraction, no matter how complex it might seem at first. With practice, you'll be able to convert fractions to decimals quickly and easily!")
  ]
]