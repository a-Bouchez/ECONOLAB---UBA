# Clase 2

## Práctica

### Repaso

Lo que vamos a hacer hoy es básicamente los dibujitos de "modelado" que habíamos visto en clase.

#### Sistema Presa-Depredador

El sistema no dice cuánto vale la variable de interés (cantidad de c/u) en cada momento, sino que la ecuación dice la velocidad de cambio respecto a esas variables (son las derivadas).

### Temario

- Hello world de Modelica.  
- Modelado del sistema presa-depredador.  
- Análisis de sensibilidad de parámetros.  

### Modelica

No asignamos como se hace normalmente en los lenguajes de computación, son **ecuaciones de toda la vida**.

Podemos definir los parámetros que necesitemos y, además, usando `start` podemos darle un valor inicial a la población de conejos.

Volver a instalar Modelica porque no me funciona nada bien.

---

## Teórica

### Neoclásicos

Estudian lo que se observa:
- Mercado
- Precios del mercado
- Conductas de los individuos

**Marginalistas**: buscan matematizar la economía, siguiendo los cánones de la física. Son una respuesta a Marx, que veía todo desde el punto de vista más social.

Las distintas corrientes discuten cuáles son los supuestos que se usan para hacer ciencia.

Los neoclásicos:
- Se realiza un sistema del que luego se sacan supuestos.  
- Luego se verifica si los supuestos estaban bien o no.  

Asumen:
- Pleno empleo.  
- Completo uso de la producción.  

Básicamente: pleno empleo de los factores.

**Supuestos neoclásicos**:
- Mercado de competencia perfecta → ningún agente tiene la capacidad de imponer un precio. Cada uno se vale por sí mismo y por su propio egoísmo. Cuando este mercado opera, los precios que vemos son el equilibrio. (Lo opuesto al monopolio).  
- Racionalidad perfecta: si no consumo hoy es por algo; es lo que mueve el mercado. No hay riqueza que no se cuente.  
- Individualismo metodológico: la sociedad es la suma de los individuos que la componen, no se distingue lo social de lo individual.  

Todo esto lleva a que, por el equilibrio del precio, cada uno gana lo que produce.

**Ordinalidad y Cardinalidad**:
- Se sortea la necesidad de comparar y medir los deseos. Cuando le pongo un valor a algo, no sabemos cuánto más es ese valor; lo único que nos importa es que sea mayor a otra cosa, no importa qué tan mayor es.  
- Se deja de lado la cardinalidad y se opta por la ordinalidad.  

---

#### Mercados de bienes

- Q = cantidad  
- a, b, c y d = parámetros  

**Ley de demanda**: uno está dispuesto a comprar más cuanto más barato está el bien.  
- Q = a - b·p  

**Ley de oferta**: uno está dispuesto a ofertar más cuando el objeto tiene un precio más alto.  
- Q = c + d·p  

- Si pongo un precio **máx**, va a estar por debajo del equilibrio → más demanda que oferta → mercado negro con precios más altos.  
- Si pongo un salario **mín**, va a estar por encima del equilibrio → empresas contratan menos y la gente pide más salario → genera desempleo.  
  (En el gráfico, el segmento entre ambos puntos es el desempleo).  

---

##### Teoría del consumidor

**Lo que quiero** → modela mis gustos.  
- **Curvas de indiferencia**: en el gráfico de bienes.  
  - Mientras más a la derecha, mejor (consumo más).  
  - α y β suman 1 → función de utilidad.  
  - No se cruzan.  
- **TMS**: cuánto me tienen que dar de otro bien y yo dejar del mío para ser igual de feliz.  

**Lo que puedo** → modela el presupuesto.  
- Solución óptima = recta que me permite gastar todo mi dinero (recta presupuestaria).  
- Costo de oportunidad: pendiente de la recta presupuestaria.  

**Relación entre los dos**  
- Usamos la tangente para relacionar “lo que quiero” (curva de indiferencia) con “lo que puedo” (presupuesto).  
- Donde se igualan es donde soy feliz.  

Fórmulas:  
- x* = α/(α + β) · m · 1/Px  
- y* = β/(α + β) · m · 1/Py  

---

##### Teoría del productor

**Lo que puedo producir**:  
- Fórmula con trabajo y capital (máquinas y quienes las usan).  
- **TMST**: si saco un trabajador, cuántas unidades de capital necesito para mantener el mismo nivel de producción.  

**Lo que me cuesta**:  
- (Falta completar).  

Conclusión: al final parece que lo único que hay que hacer es darle una tasa de producción al capitalista, y en equilibrio ambos reciben lo mismo que producen.  

---

#### Mercado de trabajo

- Lo que nos hace feliz ahora no es consumir, es **no trabajar**.  
- Problema: no nos gusta trabajar, pero necesitamos un sueldo para comprar bienes.  

Condición:  
- Estamos dispuestos a trabajar cuando la **desutilidad** del trabajo es menor que la **utilidad** de lo que compro con el sueldo.  
- Caso contrario, me retiro **voluntariamente** del mercado laboral.  

→ Solo existe el desempleo voluntario (visión neoclásica: *“el pobre es pobre porque quiere”*).  

---

#### Tasa de interés

- Es el premio al consumidor por su **abstinencia de consumir**.  
- Al no comprar hoy, gana más mañana (en forma de más dinero).  

---

#### El dinero y el nivel general de precios

- El dinero se plantea como moneda de cambio sin valor intrínseco.  
- Se puede modelar la economía sin dinero y luego introducirlo, mostrando que solo sirve como medio de cambio.  

**Ecuación cuantitativa del dinero**:  
M · V = P · Y  

Se pensó en el contexto de:  
- Trabajadores feudales que migran del campo a la ciudad.  
- Llegada de oro de América → aumento de precios.  
