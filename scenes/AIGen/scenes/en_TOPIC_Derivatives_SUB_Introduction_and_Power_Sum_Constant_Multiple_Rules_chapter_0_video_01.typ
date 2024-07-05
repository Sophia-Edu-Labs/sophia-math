#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Derivatives]
  #v(40pt)
  #only("1-")[🚗 Imagine a car's journey...]
  #v(20pt)
  #only("2-")[📊 How fast is it going?]
  #v(20pt)
  #only("3-")[🔄 Rate of change]
  #v(20pt)
  #only("4-")[📈 Enter: The Derivative]

  #only("1")[
    #voiceover("Welcome to our introduction to derivatives! Let's start with a real-world scenario.")
  ]
  #only("2")[
    #voiceover("Imagine a car on a journey. We might want to know: how fast is it going at any given moment?")
  ]
  #only("3")[
    #voiceover("This question is all about the rate of change - how quickly the car's position is changing over time.")
  ]
  #only("4")[
    #voiceover("This is where the concept of a derivative comes in. It's a powerful tool that helps us understand rates of change in various situations.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[What is a Derivative?]
  #v(40pt)
  #only("1-")[📉 Slope of a tangent line]
  #v(20pt)
  #only("2-")[🔍 Instantaneous rate of change]
  #v(20pt)
  #only("3-")[💡 Represents how a function changes]
  #v(40pt)
  #only("4-")[
    #align(center)[
      #box()[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x^2')
plt.plot([-2, 2], [4, 4], 'r--', label='Tangent at x=1')
plt.plot(1, 1, 'ro')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Function and its Tangent Line')
plt.legend()
plt.grid(True)
plt.show()
            ```,
            width: 360pt),
          )
        ]
      ]
    ]
  ]

  #only("1")[
    #voiceover("A derivative represents the slope of the tangent line to a function at any given point.")
  ]
  #only("2")[
    #voiceover("In other words, it gives us the instantaneous rate of change of the function.")
  ]
  #only("3")[
    #voiceover("The derivative essentially tells us how the function is changing at each point.")
  ]
  #only("4")[
    #voiceover("Let's visualize this with a graph. Here we have the function f of x equals x squared. The red dotted line represents the tangent line at the point where x equals 1. The slope of this tangent line is the derivative of the function at this point.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[📊 Derivative: Rate of change of a function]
  #v(20pt)
  #only("2-")[🚗 Real-world application: Speed of a car]
  #v(20pt)
  #only("3-")[📉 Graphically: Slope of tangent line]
  #v(20pt)
  #only("4-")[🔑 Key to understanding function behavior]

  #only("1")[
    #voiceover("To summarize, a derivative represents the rate of change of a function with respect to a variable.")
  ]
  #only("2")[
    #voiceover("In our car example, the derivative would give us the speed of the car at any moment - how quickly its position is changing with respect to time.")
  ]
  #only("3")[
    #voiceover("Graphically, we can think of the derivative as the slope of the tangent line to the function at any point.")
  ]
  #only("4")[
    #voiceover("Understanding derivatives is key to analyzing how functions behave and change, making it a fundamental concept in calculus and its applications.")
  ]
]