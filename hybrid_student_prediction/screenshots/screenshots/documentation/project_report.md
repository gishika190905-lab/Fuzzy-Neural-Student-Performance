Project Report

Hybrid Intelligent System using Fuzzy Logic and Neural Networks

Student Name: Ishika Gupta

Course: Artificial Intelligence

University: Manipal University Jaipur
1. Abstract

Artificial Intelligence techniques such as fuzzy logic and neural networks are widely used for solving real-world problems involving uncertainty and learning from data. This project implements two intelligent systems. The first system uses fuzzy logic to determine the washing machine cycle time based on dirt level and load size. The second system develops a hybrid intelligent model combining fuzzy logic and neural networks to predict student performance levels. MATLAB Fuzzy Logic Toolbox and ANFIS are used to design and implement the systems.

3. Introduction

Traditional control systems require precise mathematical models which are often difficult to obtain for real-world problems. Fuzzy logic provides a way to model human reasoning using linguistic variables such as low, medium, and high. Neural networks, on the other hand, are capable of learning patterns from data.

Hybrid intelligent systems combine the advantages of both fuzzy logic and neural networks. This project demonstrates such an approach by developing a fuzzy washing machine controller and a student performance prediction system using ANFIS.
5. Objectives

The objectives of this project are:

To design a fuzzy logic system for determining washing machine cycle time.

To define fuzzy sets for dirt level and load size.

To create fuzzy rules for the washing machine controller.

To implement the system using MATLAB Fuzzy Logic Toolbox.

To develop a hybrid intelligent system combining fuzzy logic and neural networks.

To predict student performance levels using ANFIS.

6. Methodology

4.1 Fuzzy Logic System for Washing Machine

The fuzzy inference system determines washing machine cycle time based on two inputs.

Inputs

Dirt Level

Load Size

Output

Wash Time

The fuzzy sets for each variable are defined as:

Dirt Level

Low

Medium

High

Load Size

Small

Medium

Large

Wash Time

Short

Medium

Long

Membership functions are used to represent these linguistic variables. A rule base is created to determine wash time.

Example Fuzzy Rules

IF Dirt Level is Low AND Load Size is Small THEN Wash Time is Short

IF Dirt Level is Low AND Load Size is Large THEN Wash Time is Medium

IF Dirt Level is Medium AND Load Size is Small THEN Wash Time is Medium

IF Dirt Level is Medium AND Load Size is Large THEN Wash Time is Long

IF Dirt Level is High AND Load Size is Medium THEN Wash Time is Long

IF Dirt Level is High AND Load Size is Large THEN Wash Time is Long

The Mamdani fuzzy inference method is used to evaluate these rules.

4.2 Hybrid Intelligent System for Student Performance Prediction

The second part of the project implements a hybrid intelligent system using Adaptive Neuro-Fuzzy Inference System (ANFIS).

Inputs

Attendance

Assignment Marks

Test Marks

Output

Performance Level

Performance Levels

Poor

Average

Good

A dataset containing student information is used to train the system. ANFIS combines fuzzy logic reasoning with neural network learning.


8. Integration of Fuzzy Logic and Neural Networks
   
In a hybrid intelligent system:

Fuzzy Logic

Represents knowledge using linguistic rules.

Handles uncertainty in input data.

Neural Network

Learns from training data.

Adjusts membership functions automatically.

ANFIS

Combines both methods.

Uses neural learning to optimize fuzzy inference parameters.

This improves prediction accuracy and system adaptability.

10. Implementation Tools
    
The following tools were used in the project:

MATLAB

MATLAB Fuzzy Logic Toolbox

ANFIS (Adaptive Neuro-Fuzzy Inference System)

GitHub for project code submission

12. Results
    
The fuzzy washing machine system successfully determines the washing cycle time based on dirt level and load size. The rule viewer and membership functions demonstrate how fuzzy rules are applied to generate output.
The ANFIS-based hybrid system learns patterns from student data and predicts performance levels effectively.
14. Advantages

Handles uncertain and imprecise data.

Mimics human decision-making.

Learns from training data.

Improves prediction accuracy.

15. Applications
    
Hybrid intelligent systems can be used in:

Smart washing machines

Student performance analysis

Medical diagnosis systems

Industrial process control

Intelligent decision support systems

17. Conclusion
    
This project demonstrates the implementation of fuzzy logic and hybrid intelligent systems using MATLAB. The fuzzy washing machine controller determines wash cycle time using rule-based reasoning. The hybrid ANFIS model predicts student performance by combining fuzzy logic with neural network learning. These techniques provide efficient solutions for real-world problems involving uncertainty and data-driven learning.

19. References
    
MATLAB Documentation – Fuzzy Logic Toolbox

Jang, J.S.R. "ANFIS: Adaptive Network-Based Fuzzy Inference System"

Russell, S., Norvig, P. Artificial Intelligence: A Modern Approach

