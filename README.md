Quadratic Equation Solver with FLTK

A lightweight desktop application built from scratch in C++ that calculates the real roots of a quadratic equation ($ax^2 + bx + c = 0$) using a graphical user interface (GUI). 

---

Project Overview:

This application provides a simple and clean interactive window where users can input the coefficients of a quadratic equation, immediately calculate the discriminant ($D$), and find the corresponding real roots ($x_1$ and $x_2$).

Features
* **Graphical User Interface:** Built using the **FLTK (Fast Light Toolkit)** library for minimal resource consumption and fast rendering.
* **Instant Validation:** Dynamically updates labels to display the calculated roots.
* **Discriminant Logic Handling:** If $D > 0$: Displays both distinct real roots ($x_1$ and $x_2$).
  * If $D = 0$: Displays the single repeating real root.
  * If $D < 0$: Informatively states that there are no real roots.

---

Installation & Setup:

### 1. Clone the Repository

```
git clone https://github.com/deniska-design/quadratic-equations.git
```
```
cd quadratic-equations
```

2. Run the Application

```
./prog
```

---

Usage:

<img width="1209" height="580" alt="Знімок екрана 2026-06-29 133100" src="https://github.com/user-attachments/assets/d317862a-7d85-44a7-8900-49d8383f3063" />
<img width="1212" height="582" alt="Знімок екрана 2026-06-29 133016" src="https://github.com/user-attachments/assets/f27af20a-7dac-4bc8-8f09-bcda017061fe" />


---

License:
This project is open-source. Feel free to download, modify, use, and distribute this software for personal, hobbyist, or educational purposes.
