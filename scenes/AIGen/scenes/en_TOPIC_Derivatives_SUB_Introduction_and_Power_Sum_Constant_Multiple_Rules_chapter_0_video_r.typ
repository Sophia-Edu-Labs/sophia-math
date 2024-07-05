#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Derivatives 📊]
  #v(40pt)
  #only("1-")[- Rate of change in various fields 🌡️]
  #only("2-")[- Crucial for understanding function behavior 📈]
  #only("3-")[- Let's review through an example 🚗]
  
  #only("1")[
    #voiceover("Let's review derivatives, a fundamental concept in calculus. Derivatives are essential for understanding rates of change in various fields.")
  ]
  #only("2")[
    #voiceover("They're crucial for analyzing how functions behave, helping us understand things like velocity, acceleration, and economic growth rates.")
  ]
  #only("3")[
    #voiceover("To refresh our understanding, let's look at a practical example involving a moving car.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative in Action 🚗]
  #v(20pt)
  #only("1-")[Position function: $s(t) = t^2 + 2t$ (meters)]
  #v(10pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 5, 100)
s = t**2 + 2*t

fig, ax = plt.subplots()
ax.plot(t, s, label='s(t) = t² + 2t')
ax.set_xlabel('Time (s)')
ax.set_ylabel('Position (m)')
ax.set_title('Car Position Over Time')
ax.legend()
ax.grid(True)

plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(10pt)
  #only("3-")[Derivative: $s'(t) = 2t + 2$ (meters/second)]
  #v(10pt)
  #only("4-")[Interpretation: Instantaneous velocity 🏎️]

  #only("1")[
    #voiceover("Consider a car moving along a straight line. Its position at time t is given by the function s of t equals t squared plus 2t, where s is measured in meters and t in seconds.")
  ]
  #only("2")[
    #voiceover("This graph shows how the car's position changes over time. Notice how the curve isn't a straight line, indicating the car's speed isn't constant.")
  ]
  #only("3")[
    #voiceover("The derivative of this function, s prime of t, is 2t plus 2. This tells us how the position is changing at any given moment.")
  ]
  #only("4")[
    #voiceover("In physical terms, this derivative represents the car's instantaneous velocity. It gives us the speed and direction of the car at any specific time.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points 🔑]
  #v(40pt)
  #only("1-")[- Derivative: Rate of change of a function 📈]
  #only("2-")[- Notation: $f'(x)$ or $dif(y)/dif(x)$]
  #only("3-")[- Represents slope of tangent line at a point 📐]
  #only("4-")[- Crucial for optimization and modeling 🔬]

  #only("1")[
    #voiceover("Let's recap the key points about derivatives. A derivative represents the rate of change of a function with respect to its variable.")
  ]
  #only("2")[
    #voiceover("We denote it as f prime of x or d y over d x. Both notations are commonly used and mean the same thing.")
  ]
  #only("3")[
    #voiceover("Geometrically, the derivative at a point represents the slope of the tangent line to the function's graph at that point.")
  ]
  #only("4")[
    #voiceover("Understanding derivatives is crucial for optimization problems and modeling real-world phenomena in fields like physics, economics, and engineering.")
  ]
]