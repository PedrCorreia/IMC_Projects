# IMC_Projects
This repository contains the first project for the course "Introdução à Matemática Computacional" (LEAmb and LEQ) at the Unidade de Ensino de Matemática Aplicada e Análise Numérica, Departamento de Matemática/Instituto Superior Técnico.

**Project 1 Details:**
- **Due Date:** March 16, 2025
- **Submission Instructions:** Each group must submit a PDF report and the Matlab scripts and livescripts on Fénix (Projects area) in a single zip file. Note that:
    - The PDF report should not exceed 10 pages and must contain answers to the questions and some examples of the implemented programs' functionality. Groups can prepare the report in Word or LaTex, as long as it is submitted in PDF. If you wish to use LaTex, you can request a template from the professor.
    - Ideally, the codes should be in a single livescript file (excluding functions used in separate *.m files). A brief explanation of the codes used should be provided (either by writing a short text in the livescript file or commenting with `%` in front of some lines of code). Numerical results should be presented using `format long`.

**Project Tasks:**
# Integral Calculation Project

This project involves calculating integrals of the form $I_n(x) = \int_1^t t^n e^{-xt} \, dt$ for various values of $n$ and $x$. The tasks are divided into two main parts:

- Calculate $I_n(x)$ using Matlab's `integral` command for $x = 1$ and $x = 5$, with $n$ ranging from 1 to 20.
- Organize the results in a table for easy comparison.

2. **Recurrence Relation and Matlab Function:**
- Validate the recurrence relation for $x = 0$.
- Define a Matlab function `IntegralIterado.m` that computes the first $n$ terms of the sequence for given $n$ and $x$.
- Experiment with the function for $n = 20$, $x = 1$, and $x = 5$.
    - Compare the results with those obtained in the first part and explain any differences observed.

This README provides an overview of the tasks and the expected outcomes for the integral calculation project.
    - For each $n \in \mathbb{N}_0$ and $x \in \mathbb{R} $, consider the integral:
    ```math
    I_n(x) = \int_1^t t^n e^{-xt} \, dt
    ```
      - (a) Calculate $\ I_n(x) \$ using Matlab's `integral` command for $\ x = 1 \$ and $\ x = 5 \$, with $\ n \in [1, 20] \$. Organize the information in a table.
      - (b) 
            - i. Show that the recurrence relation for $\ x = 0 \$ is valid:
            ```math
            I_0(x) = 1, \quad x e^x I_n(x) = 1 - x^n I_{n-1}(x) + (-1)^n e^x, \quad \forall n \in \mathbb{N}
            ```
            - ii. Define a Matlab function `IntegralIterado.m` that receives an integer $\ n \geq 1 \$ and $\ x \in \mathbb{R} \setminus \{0\} \$ and returns the first $\ n \$ terms of the sequence (1) starting from $\ x \$. Experiment with $\ n = 20 \$, $\ x = 1 \$, and $\ x = 5 \$. Compare with the result obtained in (a) and explain the observed difference.

2. **Quasi-Newton Method:**
     - Consider the equation $\ f(x) = 0 \$. To avoid calculating the derivative in Newton's method, a modification can be made:
     ```math
         x_{k+1} = x_k - \frac{f(x_k)}{f(x_k + \epsilon) - f(x_k)}
     ```
     - (a) Construct a Matlab function `QuasiNewton.m` to implement the modified Newton method. The input data are the function $\ f \$, a value for $\ \epsilon \$, an initial approximation $\ x_0 \$ for the solution, the maximum number of iterations, and an error tolerance (associated with the absolute difference between two consecutive iterates). The output data are the sequence of calculated iterates and the corresponding error estimates.
     - (b) **Application: Concentrated Solar Power Production:**
         - In 1976, Lorin Vant-Hull proposed the following relation for the geometric concentration factor $\ C \$:
             ```math
             C = \frac{(h \cos(\theta))^2 f}{0.5 d^2 (1 + \sin(\theta) + 0.5 \cos(\theta))}
             ```
         - The value of $\ C \$ indicates the degree of solar radiation concentration on the receiver as a function of the plate angle, the fraction $\ f \$ of its coverage, and the diameter $\ d \$ and height $\ h \$ of the collector.
         - For $\ h = 300 \$, $\ f = 0.85 \$, and $\ d = 14 \$, calculate the smallest positive angle less than 10° for which the concentration factor equals 1250 using the `QuasiNewton.m` function.
         - Conduct a convergence study of the method based on numerical results. Apply the method with different values of $\ \epsilon \$ ($\ \epsilon = 10^{-1}, 10^{-2}, 10^{-3} \$) and, for each, record the number of iterations needed to meet a predefined stopping criterion. Also, estimate the asymptotic convergence coefficient in each case. Comment on the results.