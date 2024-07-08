#import "../sophiareporttheme.typ": *
#set page(
  margin: (x: 1.5cm, y: 1cm),
)
// Obere Box (unverändert)
#grid(
  columns: (1fr),
  gutter: 5pt,
  bento-box("Schülerfortschritts-Dashboard", [
    #align(center)[
      #text(size: 18pt, weight: "bold")[Nikita Bogana]
      #h(10pt)
      #text(size: 14pt)[5. Klasse, Luzern]
    ]
  ], quaternary-color)
)

#v(5pt)

// Zeile für Sitzungen (unverändert)
#let sessions-row = grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  bento-box("Letzte Sitzungen", [
    - ***15. Mai 2024*** Üben mit Einheiten
    - ***26. Juni 2024*** Brüche umwandeln
    - ***3. Juli 2024*** Dezimalzahlen umwandeln
  ], secondary-color),
  bento-box("Kommende Sitzungen", [
    - ***10. Juli 2024*** Grundrechenarten
    - ***17. Juli 2024*** Brüche
  ], tertiary-color)
)

// Modifizierte App-Nutzungszeile mit zwei Diagrammen
#let app-usage-row = grid(
  columns: (1fr),
  gutter: 10pt,
  bento-box("App-Nutzung und Fähigkeiten", [
    Hier werden die Daten aus der App ergänzt, sobald wir die App verbunden haben.
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

// Der Rest des Codes bleibt unverändert
// ... (Themenzeile, Leistungs- und Kommentarzeile und abschließender Stapel)

// Themenzeile
#let topics-row = grid(
columns: (1fr, 1fr),
gutter: 10pt,
bento-box("Vergangene Themen", [
 1. Einheiten (Länge, Fläche, Volumen, Masse, Zeit)
 2. Brüche und Bruchrechnen
 3. Umrechnungen zwischen Einheiten
 ], primary-color),
bento-box("Kommende Themen", [
 1. Rechnen mit Brüchen (8. - 14. Juli)
 2. Brüche umwandeln (14.-21. Juli)
 3. Geometrie Grundlagen (22. - 28. Juli)
 4. Einheiten (29. Juli - 4. August)
 5. Textaufgaben (4. August - 11. August)
 6. Gesamtwiederholung  (12. - 18. August)
 ], secondary-color)
)
// Leistungs- und Kommentarzeile
#let performance-row = grid(
columns: (1fr, 1fr),
gutter: 10pt,
bento-box("Akademische Leistung", [
 - Das 5. Schuljahr wurde erfolgreich abgeschlossen.
 - Das 6. Schuljahr beginnt am 19. August.
 ], tertiary-color),
bento-box("Kommentar des Tutors", [
 Nikita macht in den meisten Fächern ausgezeichnete Fortschritte.
 Wir werden uns in den kommenden Wochen darauf konzentrieren,
 die Leseverständnisfähigkeiten zu verbessern, um die
 Gesamtleistung zu steigern.
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
    
    Nikita hat grundsätzlich klar die Fähigkeiten, gute Leistungen in Mathematik zu erzielen. Dabei stehen ihm teilweise mangelnde Sorgfalt, sowie einige Wissenslücken im Weg. Diese wollen wir angehen.
  ],
  [
    #text(weight: "bold")[Plan]
    
    In jeder der Wochen konzentrieren wir uns auf ein Kernthema, was sowohl wichtig ist, um den Stoff der 6. Klasse gut zu verstehen, als auch hilfreich ist, um allgemeines Mathematisches denken zu üben.
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
sessions-row,
)