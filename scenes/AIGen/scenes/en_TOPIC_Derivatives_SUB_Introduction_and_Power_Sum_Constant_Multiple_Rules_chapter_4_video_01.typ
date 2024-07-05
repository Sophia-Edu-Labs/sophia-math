#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Combining Derivative Rules]
  #v(40pt)
  
  #only("1-")[- Complex functions often combine simpler ones 🧩]
  #v(20pt)
  #only("2-")[- We need to combine derivative rules 🔗]
  #v(20pt)
  #only("3-")[- Example: $f(x) = 3x^2 + 2x - 5$ 📊]

  #only("1")[
    #voiceover("Welcome to our lesson on combining derivative rules. In calculus, we often encounter complex functions that are made up of simpler ones.")
  ]
  #only("2")[
    #voiceover("To find the derivatives of these complex functions, we need to combine the derivative rules we've learned so far.")
  ]
  #only("3")[
    #voiceover("Let's consider an example: f of x equals 3 x squared plus 2 x minus 5. This function combines powers, a constant multiple, and a sum. How do we find its derivative?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step-by-Step Approach]
  #v(40pt)
  
  #only("1-")[1. Identify the parts 🔍]
  #v(20pt)
  #only("2-")[2. Apply rules to each part ✅]
  #v(20pt)
  #only("3-")[3. Combine the results ➕]

  #only("1")[
    #voiceover("Let's break this down step-by-step. First, we need to identify the different parts of the function.")
  ]
  #only("2")[
    #voiceover("Then, we'll apply the appropriate derivative rule to each part.")
  ]
  #only("3")[
    #voiceover("Finally, we'll combine the results using the sum rule.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Rules]
  #v(40pt)
  
  #only("1-")[$ f(x) = 3x^2 + 2x - 5 $]
  #v(20pt)
  #only("2-")[$ f'(x) = 3 dot (2x) + 2 dot (1) + 0 $]
  #v(20pt)
  #only("3-")[$ f'(x) = 6x + 2 $]

  #only("1")[
    #voiceover("Let's start with our function: f of x equals 3 x squared plus 2 x minus 5.")
  ]
  #only("2")[
    #voiceover("Now, let's apply the rules. For 3 x squared, we use the power rule and the constant multiple rule: 3 times 2 x. For 2 x, the derivative is just 2. And the derivative of negative 5 is 0.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get: f prime of x equals 6 x plus 2. And that's our final answer!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[- Break down complex functions 🧩]
  #v(20pt)
  #only("2-")[- Apply rules to each part ✅]
  #v(20pt)
  #only("3-")[- Use sum rule to combine results ➕]

  #only("1")[
    #voiceover("To summarize, when dealing with complex functions, first break them down into simpler parts.")
  ]
  #only("2")[
    #voiceover("Then, apply the appropriate derivative rules to each part.")
  ]
  #only("3")[
    #voiceover("Finally, use the sum rule to combine the results. With practice, this process will become second nature!")
  ]
]