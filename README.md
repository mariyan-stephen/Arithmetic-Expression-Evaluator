# Arithmetic Expression Evaluator

A simple arithmetic expression evaluator using Flex and Bison.

## Overview

This project demonstrates the basics of using Flex and Bison for parsing and tokenizing arithmetic expressions. It supports integer numbers and basic arithmetic operations such as addition, subtraction, multiplication, and division.

## Building the Project

To build the project, follow these steps:

1. Install Flex and Bison on your system.
2. Run `bison -d parser.y` to generate the parser.
3. Run `flex lexer.l` to generate the lexer.
4. Run `gcc -o simple_expr_evaluator parser.tab.c lex.yy.c` to compile the project.

## Running the Project

After building the project, run the `simple_expr_evaluator` executable:

```bash
./simple_expr_evaluator


