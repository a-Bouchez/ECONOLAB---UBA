# Clase 5

## Repaso

¿Qué cambia? El dinero y cómo se fija la tasa de interés con respecto a lo que pensaba Keynes.

Para Keynes, el consumo viene del nivel de ingreso; depende de lo que ganemos y le destinamos a consumir.

En el modelo Neoclásico, la tasa de interés está completamente relacionada con el consumo: si el retorno es alto, no consumo ahora para poder consumir mucho más mañana --> consumir hoy o mañana depende de la tasa de interés.

Para Keynes, la sociedad se comporta como bloque y primero separa para consumir, y el ahorro es lo que sobra después de eso. Por eso hay que darle dinero a las personas que van a seguir consumiendo cuando se les da dinero y no a las que lo usan para ahorrar.

## Práctica

### Mercado de Bienes

La tasa de interés es un parámetro porque no se determina en el mercado de bienes sino en el de dinero. Es decir, es un dato que nos viene.

¿Qué pasa si se demanda más que lo producido (DA > Y --> variación de existencias negativas)? Si hay mucha demanda y suponiendo stock, se arranca a vaciar (se demanda más de lo que se produce) y es una señal al productor de que tiene que aumentar el producto.

En la medida de lo posible hay que empujar la demanda --> política fiscal/ingreso/gasto. Nos ayuda a movernos de Y0 a Y1:
- Variación de gasto (dentro de DA): gasto público
- Ingreso al sector privado

La producción > demanda --> variación de existencias positivas --> acumulamos stock hasta que los productores ponen el freno.

No importa cómo se comporta el productor porque por precondición tenemos máquinas no usadas que solo tenemos que prender en caso de que tengamos que producir.

### Mercado de Dinero

Multiplicador monetario --> depende de los bancos y no depende de la tasa de interés

**Demanda de dinero/liquidez**: mayor demanda de transacciones - motivo especulativo relacionado a la tasa de interés
- El precio del bono está inversamente relacionado con la tasa de interés.
- Si cae el precio de los bonos, aumenta la tasa de interés. Ahora, en Argentina, está subiendo el precio de los bonos, entonces baja la tasa de interés y aumenta la demanda de dinero.
- Cae el rendimiento, quiero vender y quedarme con la plata.

Como en el modelo parto de un punto donde la cantidad demandada es mayor a la ofrecida, aumenta la tasa de interés.

Estamos en un mundo de corto plazo sin variación de salarios ni precios. El tiempo no tiene ninguna interpretación.

2 ejemplos:
- Simular shock en la demanda de dinero: cambios en el nivel del producto.
- Simular shock en la oferta de dinero: aumentamos la oferta de dinero --> baja la tasa de interés.
    - La economía estaba en equilibrio y los agentes contentos, pero el Banco Central inyecta dinero líquido. Los agentes tienen o billetes o plazo fijo. Hay mucha oferta de dinero, compran bonos (sube precio de los bonos y baja la tasa de interés).

Los precios no varían por recesión económica --> por eso hay máquinas en desuso.

### ISLM

Combinación de los 2 anteriores.

Copiamos el código de los 2 mercados, pero ahora las variables que nos daba Dios nos la da uno de los mercados.

**Efecto crowding-out**: conclusión más neoclásica.  
[aumenta gasto público -> aumenta demanda agregada -> aumenta producción] Mercado de bienes -> [aumenta la demanda de liquidez -> aumenta la tasa de interés] Mercado de dinero -> [baja la inversión privada] Mercado de bienes  

2 variables centrales:
- Tasa de interés
- Nivel de ingreso

Para que no ocurra el crowding-out podemos además combinar la política monetaria con la fiscal: cuando aumenta la demanda de dinero (monetaria) podemos aumentar la oferta (fiscal) en busca de evitar el decremento de la inversión.

La pendiente de la curva LM nos permite ver cómo se puede modelar el mundo Keynesiano y el neoclásico con el modelo ISLM. Para eso usamos el parámetro l:
- Cuando l tiende a infinito --> mundo Keynesiano (la tasa de interés se vuelve 0, es la trampa de liquidez. La tasa no responde y hay que empujar la demanda). 
- Cuando l tiende a 0 --> mundo neoclásico (nadie quiere tener liquidez, por lo que no hay que aumentar la demanda agregada. Va todo a tasa de interés).

### Un poco más de modelica

When (condition) then
    | equation |
end when;

¿Cómo planteamos si a partir de un momento pasa algo? --> ponemos `time` como condición

When (time > K) then
    | G0 = 120; | --> si es un parámetro me tira error
end when;

## Parcial

No orientado al desarrollo matemático. Van a preguntar cómo se puede escribir las ecuaciones de, por ejemplo, DA.

Multiple choice.

Sin Modelica.

IMPORTANTE: leer los textos que nos mandan, pero no hace falta saberse el párrafo 15 página 5. Sí hay que saber qué dicen.

Es importante el rol de la tasa de interés en un modelo y en otro.

- Qué dice Keynes
- Qué dicen los neoclásicos
- De dónde viene la síntesis neoclásica

## Teórica

### Modelos de Crecimiento

Para Keynes, si la tasa de interés existiera, tendría que hacer una política para bajarla y aumentar la inversión.

Modelos de corto plazo. ¿Qué pasa con el largo plazo?

Vuelve el debate inversión-ahorro, para el que los keynesianos tienen una respuesta y los neoclásicos otras.

Estos modelos ya son más modernos y tienen ecuaciones, más parecido a un paper y son dinámicos (dependen del tiempo).

Keynes hace una lectura distinta de la crisis que Marx (para Keynes es falta de consumo y para Marx sobreproducción).

Keynes dice que si falta consumo, quien llena la brecha es el Estado.

#### ISLM
**Corto plazo**:
- Precios fijos (no hay aumento constante y generalizado de los precios)
- No se usa toda la capacidad instalada.
- Es un mundo bastante similar al Keynesiano (IMPORTANTE!!!!).

**Largo plazo**:
- Precios flexibles
- Uso completo de la capacidad instalada --> producción máxima a la que se quiere aspirar
- Los shocks tienen efectos en el corto plazo
- Es neoclásico
- En el largo plazo se va al equilibrio cumpliendo las condiciones neoclásicas

Para Keynes no hace falta que el Estado constantemente esté haciendo cosas, sino que el Estado es como un agente regulador que interviene en caso de crisis (hay desempleo en el equilibrio o los animal spirits están bajos y no se quiere invertir).

#### Teorías del Crecimiento Económico

Se preguntan: ¿qué pasa con ... en el largo plazo?  
Con ... = el producto, el empleo, el salario o la distribución de ingresos.

Aparece la idea de los macros cierres (donde focalizan):
- Ahorro --> Keynes
- Inversión --> Neoclásicos

#### Modelo Keynesiano a Largo Plazo

En corto plazo la inversión empuja el nivel de actividad y este determina el nivel de demanda del empleo y salarios, y de ahí sale el nivel de desempleo.

No hay una mirada competitiva del salario sino que es extraeconómica.

**Largo plazo**: la inversión genera acumulación de capital y aumenta la capacidad productiva.

Si la demanda efectiva es menor a la capacidad productiva no se usan todas las máquinas. La inversión genera UCI (capacidad disponible).

Agregamos al modelo K(punto) la derivada de K respecto al tiempo, cómo varía el stock de capital con respecto al tiempo (variación absoluta) y cuánto tengo de K.

u₀ es el 100% del uso.

Hay algo para que en el largo plazo haya un equilibrio?

v es la productividad marginal del capital para un neoclásico, pero en este caso no produce. Queremos ver si hay una relación técnica entre la capacidad productiva y la producción efectiva.

La función de producción es de tipo Leontief (algo así) que quiere decir coeficientes fijos.  
Para los neoclásicos: Y = A · K^α · L^β  
Para Keynes: complemento perfecto entre máquinas y trabajadores (aunque me des más trabajadores no puedo sustituir máquinas por personas). Para cantidad de capital hay una cantidad de trabajadores.

La producción puede crecer siempre que haya mano de obra disponible (no hay pleno uso de las máquinas).

No existe que un exceso de demanda generalizado explique inflación (todo se usa al 100% pero hay inflación).

¿Cómo se da la igualdad ahorro-inversión en el largo plazo? La decisión de ahorrar o invertir es autónoma.

#### Modelo de Harrod

Responde cuándo se iguala la inversión con el ahorro para Keynes (VER).

Ecuaciones contables:

Principio del multiplicador: ΔY (del producto) = 1 / (1 - propensión marginal a consumir) · ΔC₀ (COMPLETAR)

Principio del acelerador: cuando invierto en prop b, cambia mi stock de capital. Mi stock de capital cambia mi capacidad productiva.

Tasa de crecimiento:
- Garantizada: tasa de crecimiento de la capacidad instalada que hace que el crecimiento de la demanda efectiva sea estable (parámetros para que el sistema sea estable porque invertir hace 2 cosas al mismo tiempo), pleno uso de la capacidad instalada.
- Efectiva: la observable en la economía, es la tasa garantizada multiplicada por el uso de la capacidad instalada. Si son distintas, ¿qué pasa? 
- Natural: paramétrica, cómo crecen la cantidad de trabajadores y la productividad del trabajo.

Y* = variación del producto potencial (VER) con respecto al tiempo.

**Acumulación de capital**: la tasa de acumulación de capital es cómo invierten los capitalistas, lo hacen respecto a la capacidad instalada. Si la capacidad instalada está muy cercana al 100% se invierte.

**Las condiciones de (in)estabilidad**: requiere que la capacidad producida sea equivalente a la acumulación del capital. Las condiciones de crecimiento generan ahorro y con eso se entiende la inversión.

Caso inestable: acumulación de capital. Los inversores invierten más rápido que la demanda que generan y explota la capacidad productiva ociosa.

#### Modelo de Domar

Mantener un nivel de pleno empleo, muy similar al anterior.

#### Modelo de Solow

Así como Hicks quiere decir que el caso de Keynes es un borde, Solow intenta hacer lo mismo con Harrod (dice que se tiende a la estabilidad).

La economía impulsada por la oferta --> los fundamentos siguen siendo el mercado de capital y de trabajo (Neoclásicos).

Usa una función de producción Cobb-Douglas: α + β = 1 --> Y = A · L^α · K^β.

Hay ahorro de inversión ex-ante y ex-post --> siempre hay equilibrio. La pregunta pasa a ser por qué siguen siendo iguales.

Partiendo de I = S con:
- S = s · Y (proporción del ingreso) --> I = s · F(K; A · L) la parte de lo producido que se ahorra.
- El stock es el ahorro de lo producido - el gasto del capital.

Relación entre stock de capital y trabajadores = k.

Balance entre la tasa de factores que deprecian la economía y la curva de inversión de la economía.
