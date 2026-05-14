# 📊 Superstore Retail Data Analysis Pipeline

Este proyecto presenta un análisis integral de datos de ventas (dataset "Sample - Superstore"), documentando todo el ciclo de vida de los datos: desde la **limpieza y transformación (ETL)** hasta la **visualización estratégica** de negocio.

## 🚀 Tecnologías Utilizadas
* **Lenguajes:** Python, SQL (T-SQL).
* **Bibliotecas:** `Pandas`, `Seaborn`, `Matplotlib`, `SQLAlchemy`.
* **Base de Datos:** SQL Server.
* **Entorno:** Jupyter Notebooks (`.ipynb`).
---

## ⚙️ Arquitectura del Pipeline
El flujo de trabajo se divide en etapas modulares para garantizar la escalabilidad:

1. **`1_Limpieza_data.ipynb`**: Carga del CSV, normalización de tablas (`Sales`, `Customers`, `Products`), manejo de duplicados y validación de integridad.
2. **`2_carga_sql.ipynb`**: Automatización del proceso ETL para insertar los datos limpios en una base de datos relacional.
3. **`3_graficos.ipynb`**: Extracción mediante consultas SQL optimizadas y generación de visualizaciones estratégicas.
---

## 🗄️ Diccionario de Datos y Modelo Relacional

El dataset original contenía una estructura plana de 21 columnas. Para optimizar la gestión de la información, se aplicó una **normalización** separando los datos en entidades lógicas mediante Python:

| Entidad | Campos Incluidos |
| :--- | :--- |
| **`Sales`** (Hechos) | `Row ID`, `Order ID`, `Order Date`, `Ship Date`, `Ship Mode`, `Sales`, `Quantity`, `Discount`, `Profit` |
| **`Customers`** (Dimensión) | `Customer ID`, `Customer Name`, `Segment`, `Country`, `City`, `State`, `Postal Code`, `Region` |
| **`Products`** (Dimensión) | `Product ID`, `Product Name`, `Category`, `Sub-Category` |

### 🛠️ Lógica de Limpieza en Python
Utilizando la librería **Pandas**, se realizó la siguiente transformación:
* **Separación de Entidades:** Se crearon DataFrames independientes para Clientes y Productos.
* **Eliminación de Redundancia:** Se aplicó `.drop_duplicates()` sobre `Customer ID` y `Product ID` para garantizar que cada entidad sea única en su tabla de dimensión.
* **Integridad Referencial:** Se mantuvo la tabla de `Sales` vinculada a las dimensiones mediante sus respectivas claves foráneas, asegurando un modelo relacional sólido en SQL Server.


---
## 📊 Visualización de Resultados (Insights)

| Pregunta de Negocio | Análisis | Visualización |
| :--- | :--- | :--- |
| **1. Top 10 Ciudades** | Nueva York y LA lideran la demanda. | ![Ciudades](picture/%201_top10_ciudades.png) |
| **2. Profit por Categ.** | 'Technology' posee el margen más alto. | ![Categoría](picture/%202_ventas_profit_categoria.png) |
| **3. Subcategorías** | 'Tables' presenta pérdidas, requiere revisión. | ![Subcat](picture/%203_subcategoria.png) |
| **4. Segmento** | El segmento 'Consumer' es el motor principal. | ![Segmento](picture/%204_segmento.png) |
| **5. Top Clientes** | Alta concentración en clientes VIP. | ![Clientes](picture/%205_topclientes.png) |
| **6. Tendencia Mens.** | Pico crítico de ventas en Q4 (fin de año). | ![Tendencia](picture/%206_tendencia.png) |
| **7. Ventas Mes** | Crecimiento histórico sostenido. | ![Mes](picture/%207_mes_venta.png) |
| **8. Venta vs Profit** | Descuentos excesivos reducen el margen. | ![Scatter](picture/%208_scatter.png) |
| **9. Modo Envío** | Preferencia por 'Standard Class'. | ![Ship](picture/%209_shipmode.png) |
| **10. Región Efic.** | La región Oeste es la más rentable. | ![Región](picture/%20%2010_region.png) |



## 📂Estructura del Repositorio
```text
Project-Superstore-Retail-Analysis/
├── data/               # Dataset original (CSV).
├── notebooks/          # Notebooks de Jupyter (ETL + Análisis).
├── picture/            # Gráficos exportados (.png).
├── SuperstoreRetail.sql# Script DDL de la base de datos.
└── README.md           # Documentación del proyecto.


## 👨‍💻Autor
Renzo Luza 