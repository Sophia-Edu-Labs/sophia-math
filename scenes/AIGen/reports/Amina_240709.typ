#import "sophiareporttheme.typ": *
#set page(
  margin: (x: 1.5cm, y: 1cm),
)
// Obere Box
#grid(
  columns: (1fr),
  gutter: 5pt,
  bento-box("", [
    #align(center)[
      #text(size: 18pt, weight: "bold")[Lernplan]
      #line(length: 40%, stroke:0.4pt)
      #text(size: 14pt)[Amina, Nachprüfung, August]
    ]
  ], quaternary-color)
)

#v(5pt)

// Zeile für Sitzungen
#let sessions-row = grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  bento-box("Vergangene Sitzungen", [
    - *5. Juli 2024* Extremstellen erkennen
    - *12. Juli 2024* Potenzfunktionen Grundlagen
    - *19. Juli 2024* Potenzgesetze und -rechenregeln
  ], secondary-color),
  bento-box("Kommende Sitzungen", [
    - *26. Juli 2024* Quadratische Funktionen I
    - *2. August 2024* Quadratische Funktionen II
    - *9. August 2024* Anwendungen und Problemlösung
    - *16. August 2024* Gesamtwiederholung
  ], tertiary-color)
)

// Modifizierte App-Nutzungszeile mit zwei Diagrammen
#let app-usage-row = grid(
  columns: (1fr),
  gutter: 10pt,
  bento-box("App-Nutzung und Fähigkeiten", [
    #grid(
      columns: (1fr, 1fr),
      gutter: 14pt,
      figure(
        pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Daten für 30 Tage generieren
days = [f'Tag {i}' for i in range(1, 31)]
usage = np.zeros(30)
correctness_share = np.random.rand(30)

# Daten in Vier-Tage-Intervalle einteilen
bin_size = 4
binned_days = [f'{i}-{i+bin_size-1}' for i in range(1, 31, bin_size)]
binned_usage = [np.mean(usage[i:i+bin_size]) for i in range(0, 30, bin_size)]
binned_correctness_share = [np.mean(correctness_share[i:i+bin_size]) for i in range(0, 30, bin_size)]

# Berechnung der korrekten und inkorrekten Anteile für Intervalle
binned_correctness_usage = np.array(binned_usage) * np.array(binned_correctness_share)
binned_incorrectness_usage = np.array(binned_usage) * (1 - np.array(binned_correctness_share))

# Diagramm erstellen
plt.figure(figsize=(6, 4))  # Seitenverhältnis auf 6x4 setzen
bar_width = 0.5  # Balkenbreite hier anpassen
plt.bar(binned_days, binned_correctness_usage, width=bar_width, color='green', label='Anteil korrekter Antworten')
plt.bar(binned_days, binned_incorrectness_usage, width=bar_width, bottom=binned_correctness_usage, color='grey')

plt.xlabel('Tage')
plt.ylabel('Minuten')
plt.ylim(0, max(binned_usage) * 1.1)
plt.xticks(rotation=45, ha='right')

# Textbeschriftungen hinzufügen
for i in range(len(binned_days)):
    plt.text(i, binned_correctness_usage[i] + binned_incorrectness_usage[i] + 0.5, f'{binned_usage[i]:.1f}', ha='center')

plt.legend()
plt.tight_layout()
plt.show()
        ```,
        width: 250pt
      ),
      caption: "Wöchentliche App-Nutzung"
    ),
    figure(
      pyimage(```
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Circle, Rectangle

def plot_gauge(value, minutes, minute_goal=60):
    # Parameters for easy adjustments
    base_circle_radius = 0.8
    colored_arc_inner_radius = 1
    colored_arc_outer_radius = 1.2
    outer_circle_radius = 1.25
    outer_circle_linewidth = 3
    arc_linewidth = 20
    figure_size = (6, 5)
    legend_position = [0.2, 0.1, 0.6, 0.05]
    font_size_value = 50
    font_size_label = 10
    label_position = -0.2
    buffer_height = 0.2
    bottom_buffer_height = 0.1

    # Calculate the angle for the value
    angle = (value / minute_goal) * 360  # Adjusted for minute_goal

    # Create figure and axis
    fig, ax = plt.subplots(figsize=figure_size, subplot_kw={'aspect': 'equal'})

    # Create the base circle
    base_circle = Circle((0, 0), base_circle_radius, color='lightgrey', fill=True)

    # Add the base circle to the plot
    ax.add_patch(base_circle)

    # Create a color gradient for the arc
    cmap = plt.get_cmap("RdYlGn")
    norm = plt.Normalize(0, minute_goal)
    
    # Create the colored arc based on the value
    theta = np.linspace(0, 2 * np.pi, 360)
    x_inner = colored_arc_inner_radius * np.cos(theta)
    y_inner = colored_arc_inner_radius * np.sin(theta)
    x_outer = colored_arc_outer_radius * np.cos(theta)
    y_outer = colored_arc_outer_radius * np.sin(theta)
    
    for i in range(len(x_inner) - 1):
        current_value = i / 360 * minute_goal
        ax.plot([x_inner[i], x_outer[i]], [y_inner[i], y_outer[i]], color=cmap(norm(current_value)), lw=arc_linewidth)
        if current_value >= value:
            break

    # Add a thicker black circle around the colored circle
    outer_circle = Circle((0, 0), outer_circle_radius, edgecolor='black', fill=False, lw=outer_circle_linewidth)
    ax.add_patch(outer_circle)

    # Add the value text
    plt.text(0, 0.1, str(value), horizontalalignment='center', verticalalignment='center', fontsize=font_size_value, fontweight='bold')
    # Add the "Tage" text next to the value, aligned at the bottom
    plt.text(0.35, 0.00, "Tage", horizontalalignment='left', verticalalignment='center', fontsize=font_size_label, fontweight='bold')
    plt.text(0, label_position, "Lernstreak", horizontalalignment='center', verticalalignment='center', fontsize=font_size_label, fontweight='bold')

    # Add a white rectangle to create a buffer between the plot and the legend
    buffer = Rectangle((-1.5, -1.3 - buffer_height), 3, buffer_height, color='white', fill=True)
    ax.add_patch(buffer)

    # Add a small white box at the bottom below the progress indicator
    bottom_buffer = Rectangle((-1.5, -1.4 - buffer_height - bottom_buffer_height), 3, bottom_buffer_height, color='white', fill=True)
    ax.add_patch(bottom_buffer)

    # Create the legend for the red-green plot
    gradient = np.linspace(0, 1, 256)
    gradient = np.vstack((gradient, gradient))

    ax2 = fig.add_axes(legend_position)
    ax2.imshow(gradient, aspect='auto', cmap=cmap)
    ax2.set_title("Tägliche Übungszeit", fontsize=10)
    ax2.set_xticks([0, 128, 255])
    ax2.set_xticklabels(['0', str(minute_goal // 2), str(minute_goal)])
    ax2.set_yticks([])

    # Remove the axis
    ax.axis('off')

    # Display the plot and legend
    plt.show()

# Example usage
consecutive_days = 0
minutes_per_day = [0, 0, 0, 0, 0, 0, 0]  # Example minutes per day for the last week
minute_goal = 20  # Example minute goal
plot_gauge(consecutive_days, minutes_per_day, minute_goal)
      ```,
      width: 200pt
    ),
    caption: "Lernstreak und -dauer"
    )
    )
    #v(5pt)
  ], quaternary-color)
)

// Themenzeile
#let topics-row = grid(
columns: (1fr, 1fr),
gutter: 10pt,
bento-box("Vergangene Themen", [
 1. Extremstellen erkennen (5. - 11. Juli)

 ], primary-color),
bento-box("Kommende Themen", [
1. Potenzfunktionen Grundlagen (12. - 18. Juli)
2. Potenzgesetze und -regeln (19. - 25. Juli)
3. Quadratische Funktionen I (26. -31. Juli)
4. Quadratische Funktionen II (1. - 8. August)
5. Anwendungen (9. - 15. August)
6. Gesamtwiederholung (16. - 22. August)
 ], secondary-color)
)

// Leistungs- und Kommentarzeile
#let performance-row = grid(
columns: (1fr, 1fr),
gutter: 10pt,
bento-box("Akademische Leistung", [
 - Fortschritte bei Potenzfunktionen sichtbar
 - Verständnis für Extremstellen verbessert
 - Nachprüfung in der letzten August-Woche
 ], tertiary-color),
bento-box("Kommentar des Tutors", [
 Amina macht stetige Fortschritte. Ihr Verständnis für Potenzfunktionen
 hat sich deutlich verbessert. In den kommenden Wochen werden wir uns
 auf quadratische Funktionen konzentrieren und dann alles für die
 Nachprüfung zusammenführen. Mit konsequentem Üben sind die Chancen
 für ein erfolgreiches Bestehen sehr gut.
 ], quaternary-color)
)

#let overview-row = grid(
  columns: (1fr),
  gutter: 10pt,
  bento-box("Lernziele und Lernplan", [
#line(length: 100%, stroke:0.4pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    #text(weight: "bold")[Ziele]
    
    Amina soll die Nachprüfung Ende August erfolgreich bestehen. Dazu müssen wir:

    1. Das Verständnis für Potenzfunktionen festigen
    2. Quadratische Funktionen gründlich erarbeiten
    3. Anwendungen in Problemlösungen üben
    4. Alle Themen für die Prüfung zusammenführen
  ],
  [
    #text(weight: "bold")[Plan]
    
    Wir arbeiten wöchentlich an einem #text(weight: "bold")[Hauptthema]:
    - Woche 1-3: Potenzfunktionen
    - Woche 4-5: Quadratische Funktionen
    - Woche 6: Anwendungen und Problemlösung
    - Woche 7: Gesamtwiederholung
    #v(10pt)
  ]
)
  ], tertiary-color)
)

// Alle Zeilen kombinieren
#stack(
spacing: 10pt,
overview-row,
topics-row,
app-usage-row,
)