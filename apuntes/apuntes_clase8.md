# Clase 8

## Informe

Nos dan un informe en python, tenemos que pasarlo a modelica y simular para ver que nos dá y como funciona. Una vez hecho esto, podemos ver bajo que valroes de los parámetros se cumplen los supuestos. Bajo que valores no. Y hacer un análisis similar al que hicieron en la clase de mesa en ABM.

## Práctica

introducción a mesa: Framework de simulación en python.

Pasar de lenguaje natural a entidad de software que tiene sus atributos y demás (una clase).

### MESA

framework de simulación, no es un formalismo de modelado.

Es en tiempo discreto, las ecuaciones se resuelven como con un for uno por una y puede tener efectos distintos (En Modelica es todo al mismo tiempo).

Tiene distintos tipos de objetos:
- Modelo: Contiene los agentes, controla la evolución temporal define el espacio y recolecta los datos. 
- Agent: ...
- Spaces: Nos define la localidad/entorno con el que se van a relacionar los agentes.
- Scheduler: Define el orden en el que se ejecutan las acciones de los agentes.

### ABM Goodwin

**Modelo de Goodwin**: 
- crecimiento constante del progreso técnico y de la fuerza de trabajo.
- Único bien homogéneo que dunciona como vien de ocnsumo y capital
- COMPLETAR DE DIAPOS.

## Teórica

Vamos a ver economías abiertas (importación, exportación, distintas monedas, mercados de capitales de otros países, migraciones, etc.) y Modelo ISLMBP. 

### 3 métodos de medir PBI

**Valor agregado (VA)** = Ingreso(Y) = Demanda agregada(DA)
- VA = Valor bruto de producción(VBP) - Consumos intermedios(CI).
- Y = Masa salarial(W) + Excedente bruto de explotación(EBE).
- DA = Consumo(C) + Inversión(I).

En economía cerrada sin sector público, Necesariamente se financia la I con el ahorro(S).

### Economía cerrada con sector público

DA = C + I + **G** (gastos públicos)
Y = C + S + **T** (Impuestos)

Pagan impuestos --> C + I + G = C + S + T

... COMPLETAR ...

Toda inversión no necesariamente viene del sector privado. En este caso (I - S) = (T - G).
Si el sector privado está en deficit el sector público está en superávit (y viceversa).

### Economía abierta con sector público

VA + **Importaciones (M)** = C + I + G + **Exportaciones (X)**

VA + **Importaciones (M)** --> Oferta global de bienes y servicios

C + I + G + **Exportaciones (X)** --> Demanda global ...COMPLETAR

Qué pasa con la identidad ahorro inversión?
- C + I + G + X - M = C + S + T.
- (I - S) = (T - G) + (M - X)

Con:
- (I - S) = deficit del sector privado. Diferencia entre inv privada y ...
- COMPLETAR
- COMPLETAR

### Balance de pagos

Mide los flujos(Transacciones) entre el país y el resto del mundo.
Cuenta corriente (CC) + saldo cuenta capital y financiera (CK) = Variación de reservas internacionales (VRI).