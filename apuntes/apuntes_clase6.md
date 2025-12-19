# Clase 6

## Repaso

Modelo de Harrod:
- Tasa de crecimiento garantizada: garantiza ahorro = inversión, idea teórica. 
- Tasa de crecimiento efectiva: la que realmente se ve.

Para Harrod, aunque relaciona capital con producto, no es que el capital produce.

K = stock de capital.

K· es la var de K en el tiempo.

Inversión es demanda efectiva y ampliación de la capacidad instalada. Podemos no tener demanda para la ampliación y surge la pregunta de sobrecapacidad o subcapacidad.

Harrod quiere demostrar que la probabilidad de que converja a una economía estable son mínimas, a diferencia de Solow y los neoclásicos.

El caso estable es tan dependiente de los parámetros que podemos sacar la idea de que no existe.

Solow: ahorro = inversión ex-ante y en ambos ex-post.

El empresario invierte mirando la capacidad instalada.

**Macro-cierre**: ¿Cuáles son las var que van a ajustar? En nuestro caso, donde va a estar el der(), donde el Der vincula dos cosas, como pueden ser precio y demanda.

En este caso, usamos der(u) y miramos si se puede ajustar hasta u* (el equilibrio) si existe (en los neoclásicos siempre se puede llegar al u* = 1, pero en este modelo no). Con u utilización de la capacidad instalada.

**Punto de equilibrio estable**: atrae las vars para que vuelvan a este punto.  
**Punto de equilibrio inestable**: si nos movemos de este, el sistema en vez de atraernos de vuelta, nos deja ir hasta que explote.

## Práctica

### Harrod

gi = i_0 + i_1 · u · Y  
--> si i_1 es positivo nos refuerza que si va bien la economía (u positiva), gi aumenta, y lo mismo cuando u es negativo (se vuelve todo negativo)  
--> si sube, todo bien y si baja nos volvemos locos  
--> si i_1 es negativo  
    --> si mejora la cosa, la gente no se lo cree y si empeora, la gente cree que todo va a volver.

Inversión = i_0 + i_1 · Y  
Ahorro = mira otra cosa que es lo clave de este modelo en comparación con Solow.

El Harrod explosivo solo presetea los parámetros.

Vemos que si ponemos u* = 0.2 y u = 0.19, vemos que u se va a 0, que no tiene que ser posible. Vemos claramente el punto de equilibrio inestable.

Si u es baja, vamos a tener máquinas apagadas --> la gente labura menos.

A la tasa natural no le dan bola.

### Solow

Ya parte de Inversión = ahorro.

K·(t) = I - dep K con dep K = cómo se arruinan las máquinas y dep suele ser ≈ 5% por ponerle un valor.

Entonces se puede poner I = S y se pueden descomponer en sus respectivas fórmulas.

Ecuación importante de este modelo es:
- k· = sF(k) - (n + g + dep)k

Con el primer término siendo inversión por unidad de trabajo y el segundo es pérdidas a compensar.  
k es el stock de capital normalizado por unidad de trabajo.

Para los neoclásicos lo más importante es que la derivada sea = 0. En este caso k· = 0.

Solow usa una función Cobb-Douglas (ver nombres) y usa el caso específico que α + β = 1 con Y = K^α L^β.

Por cada unidad de capital que pierdo (k), ¿cuántas unidades de trabajo necesito para recuperarlos? Eso es α y β (tasa marginal de sustitución técnica), super parecido a las curvas de interés del problema del consumidor para los neoclásicos.

Las 2 opciones del modelo dependiendo del estado inicial son:
- k sube hasta converger con k· --> completar de diapositiva
- k baja hasta converger con k· --> completar de diapositiva

Las minúsculas del modelo son ajustadas por trabajador efectivo.

steady_state = donde va a converger k.

**y** = tasa de crecimiento de una economía.  
--> deja de crecer ajustado a niveles (llega un punto en el que no se puede producir más por cantidad de capital).  
--> largo plazo: convergen a steady state

El "**y**" converge siempre a un mismo punto, según Solow, los pbis (per capita y productividad) de los países convergen al mismo valor.

La teoría neoclásica es una teoría de convergencia relativa (dependiente de los parámetros) y no absoluta sobre los países.

Poder distinguir el modo de pensar Neoclásico del Keynesiano!!!

## Teórica

Economía computacional basada en agentes.

### Concepto central

Procesos económicos, incluidas economías completas, a modo de sistemas dinámicos “abiertos” de agentes económicos que interactúan entre sí.

No tienen información completa sobre el sistema del que forman parte ni tienen racionalidad perfecta.

#### Qué nos impone ACE?

La única manera de ver qué es lo que va a suceder y el resultado que vamos a obtener va a ser simulando.

Lo que vemos en los gráficos es el modelo de segregación de Schelling. Quiere mostrar la creación de guetos (grupos de personas de la misma etnia). Es un enfoque completamente distinto al de las ecuaciones diferenciales.

Muestra patrones sobre distribuciones espaciales.

Se puede usar para planificación urbana y sector inmobiliario.

Un agente puede ser sindicatos y cámaras empresarias.

Dependiendo del enfoque cambia qué tan "bajo" modelamos los agentes. Por ejemplo, podemos reducir el de arriba hasta individuos.

No asume la existencia a priori de estados de equilibrio ni de coordinaciones espontáneas entre agentes.

Tiene los focos puestos en:
- Los procesos económicos (a lo largo de un período de tiempo, enfocado en las relaciones entre los agentes de los que emergen) (interacción micro y macro)
- Las interacciones locales entre agentes económicos
- Las dinámicas fuera del equilibrio (el equilibrio puede ser un caso particular que se dé)
- Las fases de coordinación y descoordinación (puede haber momentos en los que los agentes se pueden coordinar para lograr algún objetivo)

### ABM (agent based modelling)

Busca flexibilidad de modelado + rigurosidad lógica: nos permite leer los textos de los económicos que están escritos en lenguaje natural (leer y entender sus argumentos) y se encarga de mantener la rigurosidad lógica.

Tenemos interacciones agente-agente y agente-medio ambiente.

Foco en aquellos sistemas cuya dinámica queda determinada por: secuencias de interacciones entre entidades discretas → agentes.

Cada agente:
- Interactúa con otros agentes y el entorno (exponen, modifican, observan info)
- Maneja su dinámica temporal (constante movimiento o estabilidad temporal)
- Tiene memoria (se acuerda de sus acciones y de lo que vio a la hora de tomar una decisión) (Con eqs dif puedo tener una especie de memoria integrando para comparar cómo 2 curvas llegan al mismo valor)
- Tiene sus algoritmos (permiten maximizar funciones objetivo dependiendo de lo que va viendo)

El simulador es el que permite que se relacionen correctamente y que puedan ver variables específicas. Es el software que permite que puedan tomar distintas acciones o no puedan tomar otras.

Propiedades a nivel sistema (macroscópico) emergen por las interacciones de agentes (microcóspico).

ACE: una variante particular de ABM → foco en sistemas económicos.

Cuando un agente no puede tomar una acción analítica (como las de teoría de juegos!!! gracias Ariel!) se simula.  
Toman las acciones dependiendo de su información local y sus incentivos.

### Main Strands of ACE Research

Puedo usarlo de 2 maneras:
- Seteo las cosas y simulo y lo dejo estar para ver qué pasa.
- Desarrollo políticas o reglas para incentivar a que pase alguna cosa de interés, influimos en la toma de decisiones de los agentes.

### ACE admite cambios en la estructura de los modelos

Se pueden unificar en el modelo muchos agentes en uno solo sin importar los individuos (cambió la estructura). Lo opuesto también puede ocurrir.

Se pueden crear nuevos agentes y destruir otros.

## Parcial

Foco es en las diapositivas y lo que discutimos en clase, y cómo eso lo metemos en los modelos. Recordar que las biblios que nos dan son para ir entendidos a la clase sobre lo que vamos a discutir.

De 3 a 5. Seguimos con clase. 

Se aprueba con 4 y MC. No desarrollos largos y no hace falta traer nada, si necesitamos fórmulas nos las dan.

Todo el foco es entender la diferencia entre neoclásicos, keynesiano y las síntesis.
