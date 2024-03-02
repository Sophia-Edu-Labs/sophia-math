#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
#slide()[

#only("1")[
  #voiceover("Lasst uns üben, wie man Ableitungen berechnet.")
]
Berechne die Ableitung von
#v(40pt)
#only("2-")[#text()[$ f(x) = e^(x^2) - x $]]
#only("2")[
  #voiceover("f von x gleich e hoch x quadrat minus x.")
]
]

#slide()[
#only("1")[
  #voiceover("Um diese Aufgabe zu bewältigen, verwenden wir die Kettenregel und die Grundregeln der Ableitung.")
]
#only("2")[
  #voiceover("Lasst uns in den Lösungsprozess einsteigen!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Kettenregel für $e^(x^2)$]
    #only("2-")[- Grundregel für $-x$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = e^(x^2) - x$]
#only("1")[#voiceover("Beginnen wir mit der Funktion f von x gleich e hoch x quadrat.")]
#v(10pt)
#only("2")[#voiceover("Um die Ableitung von e hoch x quadrat zu finden, müssen wir die Kettenregel anwenden.")]
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Kettenregel]]]
#only("3")[#voiceover("Da e hoch x quadrat eine verkettete Funktion ist, leiten wir zunächst die äußere Funktion ab, was uns hoch x quadrat gibt, denn die Ableitung der e Funktion ist die e Funktion selbst. Das multiplizieren wir dann mit der Ableitung der inneren Funktion, also mit 2 x.")]  
#v(10pt)
#only("4-")[$f'(x) = 2x dot e^(x^2) - 1$]
#only("4")[#voiceover("Die Ableitung von minus x ist minus 1. Also, ist die Ableitung unserer Funktion gleich 2 x mal e hoch x quadrat minus eins.")]
#v(10pt)
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]

#only("1")[
  #voiceover("Lasst uns das ganze nun visualisieren.")
]
#v(60pt)
#only("2-")[
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
    import matplotlib.pyplot as plt
    import numpy as np

    # Define the function f(x) = x^2
    def f(x):
        return 2*x *2.71828182846** x - 1

    # Generate x values
    x = np.linspace(-10, 10, 400)

    # Generate y values by applying the function to x values
    y = f(x)

    # Create the plot
    plt.figure(figsize=(8, 6))
    plt.plot(x, y)


    # Display the plot
    plt.show()
    ```, 
  width: 300pt),
caption: $f'(x) = 2 dot x dot e^x - 1$  
)
]
]
]
#only("2")[
  #voiceover("Hier seht ihr den Graphen der Ableitung f strich von x gleich 2 x mal e hoch x minus 1.")
]
]