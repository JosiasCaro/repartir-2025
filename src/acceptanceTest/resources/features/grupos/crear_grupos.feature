# language: es
Característica: Crear Grupo para repartir gastos

  Regla: Los grupos tienen un nombre que los identifica

    Escenario: Crea un grupo con nombre
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando el nombre 'Regalo de navidad'
      Entonces debería visualizar dentro del listado el grupo con el nombre indicado

    @pendiente
    Escenario: No puede crear un grupo sin nombre
      Dado que el usuario inició Repartir
      Cuando el usuario intenta crear un grupo sin indicar su nombre
      Entonces no debería crear el grupo sin nombre
      Y debería ser informado que no puede crear un grupo sin nombre

  Regla: Los grupos están compuestos por al menos dos miembros

    Escenario: Crea un grupo con dos miembros
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando que sus miembros son 'mariano' y 'juan cruz'
      Entonces visualiza dentro del listado el grupo con los miembros indicados

    Escenario: No puedo crear un grupo con un único miembro
      Dado que el usuario inició Repartir
      Cuando el usuario intenta crear un grupo indicando un único miembro
      Entonces no debería crear el grupo con un único miembro
      Y debería ser informado que necesita tener al menos dos miembros

  Regla: Los grupos tienen un estado inicial

    Escenario: El total inicial del grupo es $ 0
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo
      Entonces debería visualiza dentro del listado el grupo creado con total '$  0,00'

  Regla: Los grupos no pueden tener el mismo nombre

    Escenario: No se pueden crear grupos con el mismo nombre
      Dado que el usuario inició Repartir
      Y se crea el grupo con el nombre 'Vacaciones'
      Cuando se intenta crear un grupo con el nombre 'Vacaciones'
      Entonces no se debería crear el grupo
      Y debería alertar que ya existe el nombre de ese grupo

    Escenario: El número total de grupos no debe aumentar al intentar crear uno duplicado
      Dado que el usuario inició Repartir
      Y se crea el grupo con el nombre 'Vacaciones'
      Y se cuenta la cantidad actual de grupos
      Cuando se intenta crear un grupo con el nombre 'Vacaciones'
      Entonces la cantidad de grupos debe seguir siendo la misma

