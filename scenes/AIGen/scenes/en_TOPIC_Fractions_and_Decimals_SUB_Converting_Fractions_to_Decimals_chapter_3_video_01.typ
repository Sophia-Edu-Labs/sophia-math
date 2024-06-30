#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Simple Fractions to Decimals]
  #v(40pt)
  
  #only("1-")[- Sarah has 3/4 of a pizza 🍕]
  #v(20pt)
  #only("2-")[- How much is that in decimal form? 🤔]
  #v(20pt)
  #only("3-")[- We need a method to convert fractions to decimals! 🔢]

  #only("1")[
    #voiceover("Imagine Sarah has three-quarters of a pizza left. That's easy to visualize, right?")
  ]
  #only("2")[
    #voiceover("But what if we wanted to express this amount as a decimal? How would we do that?")
  ]
  #only("3")[
    #voiceover("This is where we need a method to convert fractions to decimals. Let's learn how to do this, especially when the denominator isn't a power of ten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Challenge]
  #v(40pt)
  
  #only("1-")[- Easy: 1/10 = 0.1, 3/100 = 0.03 ✅]
  #v(20pt)
  #only("2-")[- But what about 3/4? 🤷‍♀️]
  #v(20pt)
  #only("3-")[- We need to make the denominator a power of 10! 💡]

  #only("1")[
    #voiceover("We know how to convert fractions to decimals when the denominator is already a power of ten. For example, one-tenth is zero point one, and three-hundredths is zero point zero three.")
  ]
  #only("2")[
    #voiceover("But what about three-quarters? The denominator isn't a power of ten, so we can't directly write it as a decimal.")
  ]
  #only("3")[
    #voiceover("The key is to transform the fraction so that its denominator becomes a power of ten. Let's see how we can do this!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Solution]
  #v(40pt)
  
  #only("1-")[- Multiply numerator and denominator by the same number]
  #v(20pt)
  #only("2-")[$ 3/4 = (3 dot 25)/(4 dot 25) = 75/100 = 0.75 $]
  #v(20pt)
  #only("3-")[- We chose 25 because 4 × 25 = 100 (power of 10) 🎯]

  #only("1")[
    #voiceover("Here's the trick: we can multiply both the numerator and denominator by the same number. This doesn't change the value of the fraction, but it can give us a denominator that's a power of ten.")
  ]
  #only("2")[
    #voiceover("Let's try this with our three-quarters example. We'll multiply both top and bottom by twenty-five. Three times twenty-five is seventy-five, and four times twenty-five is one hundred. So three-quarters equals seventy-five hundredths, which we can easily write as zero point seven five.")
  ]
  #only("3")[
    #voiceover("We chose twenty-five because when multiplied by four, it gives us one hundred, which is a power of ten. This is the key to our method!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[- To convert a fraction to a decimal:]
  #v(20pt)
  #only("2-")[1. Multiply numerator and denominator by same number]
  #v(20pt)
  #only("3-")[2. Choose a number that makes denominator a power of 10]
  #v(20pt)
  #only("4-")[3. Divide the new numerator by the new denominator]

  #only("1")[
    #voiceover("Let's summarize our method for converting fractions to decimals when the denominator isn't already a power of ten.")
  ]
  #only("2")[
    #voiceover("First, we multiply both the numerator and denominator by the same number. This ensures that the fraction's value doesn't change.")
  ]
  #only("3")[
    #voiceover("Second, we choose this number carefully so that it makes the denominator a power of ten. This might take some trial and error or quick mental math.")
  ]
  #only("4")[
    #voiceover("Finally, we divide the new numerator by the new denominator, which is now a power of ten, giving us our decimal result. And that's it! You can now convert any simple fraction to a decimal.")
  ]
]