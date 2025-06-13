# language: es

Característica: : Add an expense to a group

  Regla: Expenses can be added to a group

    Escenario: Add an expense to a group
      Dado a group with 2500 total
      Cuando adding an expense for 750
      Entonces group expenses should total "3.250"