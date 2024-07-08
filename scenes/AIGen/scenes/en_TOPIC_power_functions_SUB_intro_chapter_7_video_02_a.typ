#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function Evaluation]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 4, 100)
y = 7 * x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = 7x²')
plt.axvline(x=3, color='r', linestyle='--', label='x = 3')
plt.axhline(y=63, color='g', linestyle='--', label='y = 63')
plt.plot(3, 63, 'ro', markersize=10)
plt.text(3.1, 65, '(3, 63)', fontsize=12)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = 7x²')
plt.legend()
plt.grid(True)
plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job! That's correct. Let's walk through the solution step by step. We're dealing with the power function f of x equals 7 times x squared. We need to find f of 3, which means we need to evaluate the function at x equals 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Function]
  #v(40pt)
  #only("1-")[- Given function: $f(x) = 7x^2$ 📊]
  #v(20pt)
  #only("2-")[- This is a quadratic function (power of 2) 🔢]
  #only("1")[
    #voiceover("First, let's identify our function. We're given f of x equals 7 times x squared.")
  ]
  #only("2")[
    #voiceover("This is a quadratic function because the highest power of x is 2. The coefficient 7 will stretch the parabola vertically.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute the Value]
  #v(40pt)
  #only("1-")[- We need to find $f(3)$ 🔍]
  #v(20pt)
  #only("2-")[- Substitute $x$ with $3$ in the function]
  #v(20pt)
  #only("3-")[- $f(3) = 7(3)^2$ ✅]
  #only("1")[
    #voiceover("Now, we need to find f of 3. This means we need to calculate the value of the function when x equals 3.")
  ]
  #only("2")[
    #voiceover("To do this, we substitute x with 3 in our function.")
  ]
  #only("3")[
    #voiceover("So, f of 3 equals 7 times 3 squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $f(3) = 7(3)^2$]
  #v(20pt)
  #only("2-")[- $= 7(9)$]
  #v(20pt)
  #only("3-")[- $= 63$ 🎉]
  #only("1")[
    #voiceover("Let's calculate this step by step. We start with f of 3 equals 7 times 3 squared.")
  ]
  #only("2")[
    #voiceover("First, we calculate 3 squared, which is 9. So now we have 7 times 9.")
  ]
  #only("3")[
    #voiceover("7 times 9 is 63. So our final answer is 63.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)
  #only("1-")[- For the function $f(x) = 7x^2$]
  #v(20pt)
  #only("2-")[- We found that $f(3) = 63$ 🏁]
  #v(20pt)
  #only("3-")[- This means when $x = 3$, $y = 63$ on the graph 📈]
  #only("1")[
    #voiceover("To conclude, for the function f of x equals 7 x squared,")
  ]
  #only("2")[
    #voiceover("we found that f of 3 equals 63.")
  ]
  #only("3")[
    #voiceover("This means that when x equals 3, y equals 63 on the graph of this function. Great job solving this problem!")
  ]
]