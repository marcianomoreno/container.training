# Tecnologías de datos estructurados
- CAP
- ACID
---
## Modelo de bases de datos relacionales: Propiedades de transacciones ACID
- Las bases de datos relacionales garantizan las cuatro propiedades de transacciones de bases de datos:
    - ACID = Atomicity + Consistency + Isolation + Durability

|Propiedad|Descripción|
|---|---|
|Atomicity|Se garantiza que todas las operaciones de la transacción sucede o no ocurre ninguna|
|Consistency|Se garantiza que todos los datos estarán en un estado consistente|
|Isolation|Se garantiza que ninguna transacción será afectada por otras|
|Durability|Cuando se confirma una transacción, se garantiza que permanecerá en el sistema|
???
https://database.guide/what-is-acid-in-databases/#:~:text=In%20database%20systems%2C%20ACID%20(Atomicity,occur%20while%20processing%20a%20transaction.
https://www.researchgate.net/post/What_is_the_Best_Database_Structure_for_Big_Data
---
class: extra-details

## Modelo de base de datos relacional: concepto
- Enfoque para administrar datos utilizando una estructura y lenguaje consistente con la lógica de predicados de primer orden.

- Descrita en 1969 por Edgar F. Codd.

- Los datos se representan en tuplas, agrupadas en relaciones.

- Una base de datos organizada en términos de un modelo relacional se conoce como base de datos relacional.

---
class: extra-details
## Modelo de base de datos relacional: declarativo

- El modelo relacional provee de un método declarativo para especificar datos y consultas.

- Los usuarios especifican directamente qué información contendrá la base de datos y qué información desea extraer de ella.

    - Los usuarios no especifican el control de flujo para obtener la información de interés.

---

## Modelo de base de datos relacional: lenguajes de definición y consulta

- SQL (Structured Query Language) es un lenguaje de dominio específico empleado para administrar y obtener datos de bases relacionales (p.e. Microsoft SQL Server).

- SQL introdujo la capacidad de acceder a múltiples registros por medio de un comando y no requiere especificar la forma de acceder a la información.

- SQL cuenta con un lenguaje de definición (DDL, Data Definition Language) y otro de consulta (DQL, Data Query Language).


