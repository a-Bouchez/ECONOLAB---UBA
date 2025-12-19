# Trabajo Práctico – Conflict Inflation Model en Modelica

Universidad de Buenos Aires (UBA)  
Materia: Econolab (optativa)

---

## Descripción general

Este Trabajo Práctico consiste en la implementación, extensión y análisis de un **Conflict Inflation Model**, basado en el artículo:

> *A Conflict Inflation Model*  
> https://macrosimulation.org/a_conflict_inflation_model

El objetivo principal del trabajo es **trasladar el modelo original implementado en Python a Modelica**, aprovechando las capacidades de modelado orientado a objetos, reutilización y extensibilidad que ofrece este lenguaje.

---

## Objetivos del trabajo

- Reimplementar en **Modelica** un modelo de inflación por conflicto originalmente desarrollado en Python
- Analizar la dinámica inflacionaria bajo distintos escenarios de shocks
- Diseñar una arquitectura de modelo extensible y modular
- Aplicar herramientas de análisis de sensibilidad y análisis de datos sobre los resultados de simulación

---

## Modelo implementado

### Conflict Inflation Model

El modelo aborda la inflación como el resultado de un conflicto distributivo entre distintos sectores económicos. A partir de esta estructura se modelan dinámicas de precios, salarios y márgenes, reproduciendo comportamientos macroeconómicos emergentes.

---

## Implementación en Modelica

### Pasaje de Python a Modelica

- Traducción completa de las ecuaciones del modelo original
- Preservación de la lógica económica subyacente
- Validación de resultados comparando trayectorias y dinámicas con la implementación original

---

### Modelado de shocks

Se implementan y analizan los **tres shocks propuestos en el paper**, permitiendo estudiar su impacto dinámico sobre las principales variables del modelo.

Cada shock se modela de forma paramétrica para facilitar su activación, combinación y análisis comparativo.

---

## Extensión del modelo

### Superclase de sector

El modelo fue ampliado mediante la creación de una **superclase abstracta que representa un sector económico**, lo que permite:

- Generalizar el modelo a un número arbitrario de sectores (`n`)
- Reutilizar lógica común entre sectores
- Facilitar la extensión futura del modelo

---

### Modelado orientado a objetos y conectores

Se hace uso intensivo de:

- **Modelado orientado a objetos (OOM)** en Modelica
- **Conectores** para representar flujos e interacciones entre sectores

Este enfoque permite una estructura modular, clara y fácilmente escalable, reduciendo el acoplamiento entre componentes y mejorando la mantenibilidad del modelo.

---

## Análisis y presentación de resultados

### Análisis de datos y sensibilidad

Para el análisis de los resultados de simulación se utiliza la herramienta **OMsens**, que permite:

- Análisis de sensibilidad
- Identificación de clusters de comportamiento
- Exploración de patrones emergentes en los datos simulados
- Comparación entre escenarios de shocks

---

### Presentación

El trabajo incluye una **presentación final** donde se desarrolla:

- La motivación económica del modelo
- La estructura y arquitectura del modelo en Modelica
- Los resultados de las simulaciones
- El análisis de clusters y sensibilidad
- Las conclusiones principales

---

## Tecnologías utilizadas

- **Modelica**
- **OpenModelica**
- **OMsens**
- Python (referencia al modelo original)

---

## Nota

Este Trabajo Práctico fue realizado con fines **académicos** en el marco de la materia Econolab (UBA).  
La implementación y el análisis presentados son desarrollos propios basados en el artículo citado.

---

## Referencias

- *A Conflict Inflation Model*  
  https://macrosimulation.org/a_conflict_inflation_model

---

