#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
#slide()[

#only("1")[
  #voiceover("Die Aufgabe, die wir lösen müssen, ist die Berechnung der Ableitung der folgenden Funktion")
]
#only("1")[
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
    import matplotlib.pyplot as plt
    import numpy as np

    # Define the function f(x) = x^2
    def f(x):
        return x ** 2 - 20

    def g(x):
        return -(x ** 2 - 20)



    # Generate x values
    x = np.linspace(-10, 10, 400)

    # Generate y values by applying the function to x values
    y = f(x)
    z = g(x)

    # Create the plot
    plt.figure(figsize=(8, 6))
    plt.plot(x, y)


    # Display the plot
    plt.show()
    ```, 
  width: 300pt),
caption: $f(x) = x^3 - 2$
)
]
]
]
#only("2-")[
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
    import matplotlib.pyplot as plt
    import numpy as np

    # Define the function f(x) = x^2
    def f(x):
        return x ** 2 - 20

    def g(x):
        return -(x ** 2 - 20)



    # Generate x values
    x = np.linspace(-10, 10, 400)

    # Generate y values by applying the function to x values
    y = f(x)
    z = g(x)

    # Create the plot
    plt.figure(figsize=(8, 6))
    plt.plot(x, y)
    plt.plot(x, z)


    # Display the plot
    plt.show()
    ```, 
  width: 300pt),
caption: $f(x) = x^3 - 2$
)
]
]
]
#only("2")[
  #voiceover("Die Funktion sollte sich jetzt bewegen...")
]
]

