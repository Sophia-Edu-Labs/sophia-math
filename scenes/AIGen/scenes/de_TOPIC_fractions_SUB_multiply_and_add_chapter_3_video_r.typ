#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Brüche ändern 🔄]
  #v(40pt)
  #only("1-")[- Brüche sind wichtig in Mathe und im Alltag 🍕]
  #only("2-")[- Manchmal müssen wir Nenner ändern 🔢]
  #only("3-")[- Lass uns überprüfen, wie man das richtig macht ✅]
  
  #only("1")[
    #voiceover("Lass uns das Konzept des Änderns des Nenners von Brüchen überprüfen. Brüche sind sowohl in der Mathematik als auch im täglichen Leben wichtig.")
  ]
  #only("2")[
    #voiceover("Manchmal müssen wir den Nenner eines Bruchs ändern, während wir seinen Wert beibehalten. Dies ist eine wichtige Fähigkeit bei vielen mathematischen Operationen.")
  ]
  #only("3")[
    #voiceover("Lass uns überprüfen, wie man das richtig macht, um sicherzustellen, dass wir den ursprünglichen Wert des Bruchs beibehalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Nenner ändern]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Draw the pizza
circle = plt.Circle((0.5, 0.5), 0.4, fill=False)
ax.add_artist(circle)

# Draw the slices
angles = np.linspace(0, 2*np.pi, 9)[:-1]
for angle in angles:
    x = [0.5, 0.5 + 0.4*np.cos(angle)]
    y = [0.5, 0.5 + 0.4*np.sin(angle)]
    ax.plot(x, y, 'k-')

# Highlight 3 slices
highlight = plt.Circle((0.5, 0.5), 0.4, fill=True, alpha=0.3, color='red')
ax.add_artist(highlight)

# Set the aspect of the plot to be equal and remove axes
ax.set_aspect('equal', adjustable='box')
ax.axis('off')

# Add text
ax.text(0.5, -0.1, '3/8 of the pizza', ha='center', va='center', fontsize=12)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[$3/8 = ?/16$]
  #v(20pt)
  #only("3-")[Multipliziere sowohl Zähler als auch Nenner mit 2:]
  #only("4-")[$3/8 * 2/2 = (3*2)/(8*2) = 6/16$]
  
  #only("1")[
    #voiceover("Lass uns mit einem praktischen Beispiel beginnen. Stell dir vor, wir haben $3/8$ einer Pizza und möchten dies als Bruch mit $16$ als Nenner ausdrücken. Wie können wir das machen?")
  ]
  #only("2")[
    #voiceover("Wir müssen einen äquivalenten Bruch zu $3/8$ finden, aber mit $16$ als Nenner.")
  ]
  #only("3")[
    #voiceover("Um dies zu tun, multiplizieren wir sowohl den Zähler als auch den Nenner mit derselben Zahl. In diesem Fall müssen wir mit $2$ multiplizieren, um von $8$ auf $16$ im Nenner zu kommen.")
  ]
  #only("4")[
    #voiceover("Also multiplizieren wir $3/8$ mit $2/2$. Das ergibt $3$ mal $2$ über $8$ mal $2$, was $6/16$ ergibt. Dieser Bruch ist äquivalent zu $3/8$, hat aber jetzt $16$ als Nenner.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Um den Nenner zu ändern, finde einen äquivalenten Bruch 🔢]
  #only("2-")[- Multipliziere Zähler und Nenner mit derselben Zahl ✖️]
  #only("3-")[- Dies bewahrt den Wert des Bruchs ⚖️]
  #only("4-")[- Beispiel: $3/8 = 3/8 * 2/2 = 6/16$ 🍕]
  
  #only("1")[
    #voiceover("Lass uns zusammenfassen. Um den Nenner eines Bruchs zu ändern, müssen wir einen äquivalenten Bruch finden.")
  ]
  #only("2")[
    #voiceover("Das machen wir, indem wir sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren.")
  ]
  #only("3")[
    #voiceover("Dieser Prozess bewahrt den ursprünglichen Wert des Bruchs, da wir im Grunde genommen mit $1$ in Bruchform multiplizieren.")
  ]
  #only("4")[
    #voiceover("In unserem Beispiel haben wir $3/8$ in $6/16$ geändert, indem wir sowohl den Zähler als auch den Nenner mit $2$ multipliziert haben. Denke daran, diese Brüche sind äquivalent - sie repräsentieren denselben Teil des Ganzen.")
  ]
]