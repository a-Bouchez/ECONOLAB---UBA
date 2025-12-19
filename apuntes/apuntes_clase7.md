# Clase 7

## TP

No quieren todos de una misma carrera pero ni en pedo. Grupos para la semana que viene.

Tenemos que presentar el TP. 

Va a ser un informe sobre el trabajo con Jupiter Notebook que tengo que volver a instalar!!!!

Todas las semanas tenemos 30m de dudas.

Nos dan los temas.

Vamos a tener entrega intermedia en un mes aprox.

### Contenidos esperados

Definición del sistema y planteo del modelo conceptual (primer entrega).

Codigo legible con comentarios.

Análisis de resultados.

Limitaciones del trabajo.

### Propuestas
Los temas son:
- Implementar y simular Bhaduri Marglin (plus de lo que vamos a ver la próxima clase. Paper famoso que ya existe su versión dinámica Ver como nosotros hacemos las simulaciones).
- Modelo M49 (Se tocan las nociones de centro y peri. Podemos ver si se cumplen las hip que hace en el texto y en que condiciones).
- Lewis (2 sectores hablando sobre porque el sub desarrollo)
- Conflict inflation 
- Kalekiano ( Estos últimos 3 hay ver en python discretas).
- SFC (stock flow cons, sencillo pero puede no darse en la materia. no parece muy fácil)
- ISLM (Usar BIEN BIEN ISLM, cuando es keynes y cuando es neo. Clastering tmb)
- ABM Curva de phillips (ya existe)
- MIP (lo de la ante última clase, se peude representar sobre grafos y análisis sobre estructura económica. Una forma de representar contablemente la economía como una cadena productiva)

Todo con modélica menos los últimos 2.

## Teórica

### Goodwin

Escribe un texto influenciado por Kaleki, un modelo de Phillips y Harrod-Domas. Un modelo muy similar al presa depredador pero con participación asalariada como depredador y una presa siendo la tasa de empleo.

El modelo M49 es un Goodwin extendido.

#### Harrod-Domas

Su foco es la preocupación es la estabilidad de la capacidad producida.
Incluye relación entre stock de capital y el producto potencial.
- Con una cierta cantidad de máquinas puedo producir una cierta cantidad de cosas/plata.

**Macro-cierre**: tasa de la capacidad instalada.

### Modelo de Kalecki

3 maneras de escribir el producto.
- Y (simplemente en función sobre el poducto)
- C + I (Keynes le pone foco a la demanda agregada, perspectiva de la demanda)
- Perspectiva del ingreso: Masa salarial + Masa de ganancia. (excedente bruto de explotación) (Keynesn no le dió mucha boal pero a Kalecki si le gustó).

Hay 2 consumos:
- Consumo de los asalariados: Los trabajadore no ahorran 
- Consumo Capitalista: tienen una prop marginal a consumir.

Doble rol del salario:
- Demanda efectiva: Si te pago más consumís más
- Gasto de la empresa: Si es muy alto no hay ganancia -> no invierten y ganan menos

La realción con ese balance genera expansiones y contracciones.

El salario se determina en el **conflicto distributivo extra económicamente**.

Contradicción, el foco pasa a los **Ingresos**

Regulación: El estado interviene en la puja para regular la crisis si crece mucho el salario o si no les da la plata para la oferta ofrecida.

A Kalecki en este modelo no le dió mucha bola a la tasa de interés


### 3 Perspectivas

Descomposición del valor agregado:
- GPD: PBI
- INCOME: Profit + salarios (Distribución Funcional del ingreso)
- EXPENDITURE: Cosumo + inversión (Por los capitalistas) y Consumo (de los asalariados)

ExPost los 3 son iguales

### Diferencias con Keynes

Tenemos las ecuaciones:
- Y = C + I
- Y = C_0 + C_1 . y + I_0 (animal spirits)

Para Kalecki:
- (W + c. PI) + I = W + PI
- Despejando PI --> PI = I / (1 - c).
Misma operación usando las otras 2 partes de las ecuaciones

Nos da las concluciones:
- Trabajadores consumen todo lo que generan.
- Los capitalistas pueden decidir si invertir más pero si tenemos baja masa salarial no hay quien compre los bienes.
- Si los salarios son muy altos la inversión cae porque los beneficios caen.

Acá vemos la contradicción entre las clases sociales que antes no teníamos.

### Curva de Phillips

Ve una relación negativa entre 2 variables: Desempleo y Tasa de cambio de los salarios.

Escribe en un mundo donde los salarios los negocian los sindicatos, Mientras más cambia la tasa de variación mejor pueden negociar los salarios.

Cuando están en el 1% de desempleo hay una tasa de variación del 10%.

Depende de nivel de empleo la capacidad de los Asalariados de aumentar su salario y de los Capitalistas de bajarlo.

Para los neoclásicos hay que cambiar algo con la inflación (me desconecté, COMPLETAR).

Politica fiscal ineficaz.

### Goodwin

Mix de Harrod, Kalecki y Phillips y tiene la fórmula clásica Lotka-Volterra.

Ve que la dinámica entre los asalariados y los capitalistas es similar al de presa depredador

Ecuaciones:
- Empleo = Producto/Productividad --> L = Y/a.
- Tasa de empleo = Empleo/Población --> e = L/N
- Masa salarial = salario medio * Producto
- Masa de ganancias = Producto - masa Salarial --> PI= Y -W

Todas las ganancias se convienrten en inversión bruta (Inversión sin descontarle dep del capital)

Inversión = Stock del capital (si se me rompen 2 máquinas y compro 10, tengo 8 nuevas y mi stock de capital es = 8).

curva de Phillips: W^ = rho(e-tau).

#### Supuestos
Relación negativa entre salario e ingresos.
Salario juega el doble rol.
Sigue un modelo cíclico donde baja el empleo -> negocian a la baja por la tasa -> trabajador baráto por lo que contratan (sube la tasa)-> Capitalistas ganan menos -> el depre del capital es igual o mayor a la inversión -> se deja de contratar y vuelve el desempleo (baja la tasa) -> se arranca a invertir de vuelta -> ... sigue el ciclo.
