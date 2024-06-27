#import "../sophiareporttheme.typ": *
#set page(
  margin: (x: 1.5cm, y: 1cm),
)
// Top box (unchanged)
#grid(
  columns: (1fr),
  gutter: 5pt,
  bento-box("Student Progress Dashboard", [
    #align(center)[
      #text(size: 18pt, weight: "bold")[Nikita Bogana]
      #h(10pt)
      #text(size: 14pt)[5th Grade, Lucerne]
    ]
  ], primary-color)
)

#v(5pt)

// Sessions row (unchanged)
#let sessions-row = grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  bento-box("Recent Sessions", [
    - ***May 15, 2024*** (90 min): Fractions and decimals
      Progress: Excellent understanding of concepts
    - ***May 22, 2024*** (60 min): Introduction to geometry
      Progress: Good grasp of basic shapes and angles
  ], secondary-color),
  bento-box("Upcoming Sessions", [
    - ***June 5, 2024*** (90 min): Multiplication and division
    - ***June 12, 2024*** (60 min): Reading comprehension
  ], tertiary-color)
)

// Modified App Usage row with two plots
#let app-usage-row = grid(
  columns: (1fr),
  gutter: 10pt,
  bento-box("App Usage and Skills", [
    #grid(
      columns: (1fr, 1fr),
      gutter: 14pt,
      figure(
        pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generating data for 30 days
days = [f'Day {i}' for i in range(1, 31)]
usage = np.random.randint(15, 35, size=30)
correctness_share = np.random.rand(30)

# Bin data into four-day intervals
bin_size = 4
binned_days = [f'{i}-{i+bin_size-1}' for i in range(1, 31, bin_size)]
binned_usage = [np.mean(usage[i:i+bin_size]) for i in range(0, 30, bin_size)]
binned_correctness_share = [np.mean(correctness_share[i:i+bin_size]) for i in range(0, 30, bin_size)]

# Calculate correctness and incorrectness portions for bins
binned_correctness_usage = np.array(binned_usage) * np.array(binned_correctness_share)
binned_incorrectness_usage = np.array(binned_usage) * (1 - np.array(binned_correctness_share))

# Plotting
plt.figure(figsize=(6, 4))  # Set the aspect ratio to 6x4
bar_width = 0.5  # Adjust the bar width here
plt.bar(binned_days, binned_correctness_usage, width=bar_width, color='green', label='Share of Correct Answers')
plt.bar(binned_days, binned_incorrectness_usage, width=bar_width, bottom=binned_correctness_usage, color='grey')

plt.xlabel('Days')
plt.ylabel('Minutes')
plt.ylim(0, max(binned_usage) * 1.1)
plt.xticks(rotation=45, ha='right')

# Adding text labels
for i in range(len(binned_days)):
    plt.text(i, binned_correctness_usage[i] + binned_incorrectness_usage[i] + 0.5, f'{binned_usage[i]:.1f}', ha='center')

plt.legend()
plt.tight_layout()
plt.show()
        ```,
        width: 250pt
      ),
      caption: "Weekly App Usage"
    ),
    figure(
      pyimage(```
      import matplotlib.pyplot as plt
      import numpy as np
      # Topics
      labels = ["Arithmetic", "Fractions", "Decimals", "Geometry", "Algebra", "Data & Statistics"]
      num_labels = len(labels)
      # Scores
      scores = [80, 10, 75, 25, 20, 90]
      # Calculate angle for each axis
      angles = np.linspace(0, 2 * np.pi, num_labels, endpoint=False).tolist()
      scores += scores[:1]
      angles += angles[:1]
      # Plot
      fig, ax = plt.subplots(figsize=(6, 5), subplot_kw=dict(polar=True))
      ax.fill(angles, scores, color='blue', alpha=0.15)
      ax.plot(angles, scores, color='blue', linewidth=2)
      # Labels and title
      ax.set_yticklabels([])
      ax.set_xticks(angles[:-1])
      ax.set_xticklabels(labels, fontsize=16)
      # Show plot
      plt.tight_layout()
      plt.show()
      ```,
      width: 200pt
    ),
    caption: "Math Skills Overview"
    )
    )
    #v(5pt)
    // #align(center)[
    //   ***Average daily usage:*** 25 minutes
    //   #h(20pt)
    //   ***Weekly success rate:*** 85%
    // ]
  ], quaternary-color)
)

// Rest of the code remains unchanged
// ... (Topics row, Performance and Comment row, and final stack)

// Rest of the code remains unchanged
// ... (Topics row, Performance and Comment row, and final stack)
// Topics row
#let topics-row = grid(
columns: (1fr, 1fr),
gutter: 10pt,
bento-box("Past Topics", [
 1. Fractions and Decimals (continued)
 2. Basic Algebra
 3. Earth Science
 ], primary-color),
bento-box("Upcoming Topics", [
 1. Fractions and Decimals (continued)
 2. Basic Algebra
 3. Earth Science
 ], secondary-color)
)
// Performance and Comment row
#let performance-row = grid(
columns: (1fr, 1fr),
gutter: 10pt,
bento-box("Academic Performance", [
 - ***Current GPA:*** 3.7 / 4.0
 - ***Upcoming Exams:***
 - Math Quiz (June 10)
 - Science Project Presentation (June 20)
 ], tertiary-color),
bento-box("Tutor's Comment", [
 Nikita is making excellent progress in most subjects.
 We'll focus on improving reading comprehension skills
 in the coming weeks to boost overall performance.
 ], quaternary-color)
)
// Combine all rows
#stack(
spacing: 10pt,
sessions-row,
app-usage-row,
topics-row,
performance-row
)