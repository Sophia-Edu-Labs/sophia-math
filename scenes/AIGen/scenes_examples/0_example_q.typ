#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#set text(lang: "de")

#questionDef(
  questionText: "Was ist der Wert von $b_3$?",
  // use latex!
  answerOptions: ("$b_3 = 3$", "$b_3 = 4$", "$b_3 = 5$", "$b_3 = 6$"),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ), 
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: 0.1
      )
    )
  )
)
  
#slide()[

#only("1")[
  hello #morphbox(bgcolor: red)[world]
  #voiceover("Die Aufgabe, die wir lösen müssen, ist die Berechnung der Ableitung der Funktion")

  #box()[
  #morphchildren(id: "plot")[
  #figure(
    pyimage(```
      import matplotlib.pyplot as plt
      import numpy as np

      # Define the function f(x) = x^2
      def f(x):
          return x ** 2 - 20

      # Generate x values
      x = np.linspace(-10, 10, 400)

      # Generate y values by applying the function to x values
      y = f(x)

      # Create the plot
      plt.figure(figsize=(8, 6))
      plt.plot(x, y, label='f(x) = $x^2$')

      # Label the axes
      plt.xlabel('x')
      plt.ylabel('f(x)')

      # Add a legend
      plt.legend()

      # Display the plot
      plt.show()
      ```, 
    width: 300pt),
  caption: $f(x) = x^3 - 2$
  )
  ]
  // #place(top+left, dx: 50pt, dy: 80pt)[
  //   #box(fill: red)[
  //     #text(size: 30pt, weight: "bold", fill: blue)[
  //       Okayyy
  //     ]
  //   ]
  // ]
  ]
]
// #pycontent(```
// # return "$f(x) = x^3 - 2$"
// return f"${'-'.join([str(i) for i in range(0, 100)])}$"
// ```)

// #v(40pt)
#only("2-")[
  #morphbox(bgcolor: red)[hello] world
  #text()[$ f(x) = "sin"("ln"(x)) + x^2 $]
]
#only("2")[
  #voiceover("f von x gleich Sinus von ln von x plus x Quadrat.")
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
    import matplotlib.pyplot as plt
    import numpy as np

    # Define the function f(x) = x^2
    def f(x):
        return x ** 2 - 20

    # Generate x values
    x = np.linspace(-10, 10, 400)

    # Generate y values by applying the function to x values
    y = f(x)

    # Create the plot
    plt.figure(figsize=(8, 6))
    plt.plot(x, y, label='f(x) = $x^2$')

    # Label the axes
    plt.xlabel('x')
    plt.ylabel('f(x)')

    # Add a legend
    plt.legend()

    # Display the plot
    plt.show()
    ```, 
  width: 300pt),
caption: $f(x) = x^3 - 2$
)
]
]
]]

#slide()[
#only("1")[
  #voiceover("Um diese Aufgabe zu lösen, nutzen wir die Summenregel")
]
#only("2")[
  #voiceover(" und die Kettenregel. Beginnen wir mit dem Lösungsprozess!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Kettenregel]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = "sin"("ln"(x)) + x^2$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich Sinus von ln von x plus x Quadrat.")]
#v(10pt)
#only("2")[#voiceover("Um die Ableitung von Sinus von ln von x zu finden, müssen wir")]
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Kettenregel]]]
#only("3")[#voiceover("die Kettenregel anwenden, denn Sinus von ln von x ist eine zusammengesetzte Funktion.")]  
#v(10pt)
#only("4-")[$f'(x) = "cos"("ln"(x)) dot 1/x + 2x$]
#only("4")[#voiceover("Die Ableitung von Sinus von ln von x ist Cosinus von ln von x mal 1 durch x. Die Ableitung von x Quadrat ist")]
#only("5")[#voiceover("2x. Also addieren wir Cosinus von ln von x mal 1 durch x zu 2x.")]
#v(10pt)
#only("6-")[#align(center)[#text(fill:aqua)[⇓ Vereinfachen]]]
#only("6")[#voiceover("Zum Schluss können wir das ganze noch etwas vereinfachen,")]
#v(10pt)
#only("7-")[$f'(x) = "cos"("ln"(x)) / x + 2x$]
#only("7")[#voiceover("und wir erhalten die endgültige Ableitung der Funktion, nämlich Cosinus von ln von x geteilt durch x plus 2x.")]
]