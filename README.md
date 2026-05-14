# 📊 Superstore Retail Data Analysis Pipeline

Este proyecto presenta un análisis integral de datos de ventas (dataset "Sample - Superstore"), documentando todo el ciclo de vida de los datos: desde la **limpieza y transformación (ETL)** hasta la **visualización estratégica** de negocio.

## 📂 Estructura del Repositorio
```text
Project-Superstore-Retail-Analysis/
├── data/               # Dataset original (CSV)
├── notebooks/          # Notebooks de Jupyter
├── picture/            # Gráficos exportados (.png)
├── SuperstoreRetail.sql# Modelo Relacional (DDL)
└── README.md

## 🚀 Tecnologías Utilizadas
* **Lenguajes:** Python, SQL (T-SQL).
* **Bibliotecas:** `Pandas`, `Seaborn`, `Matplotlib`, `SQLAlchemy`.
* **Base de Datos:** SQL Server.
* **Entorno:** Jupyter Notebooks (`.ipynb`).

## ⚙️ Arquitectura del Pipeline
El flujo de trabajo se divide en etapas modulares para garantizar la escalabilidad:

1. **`1_Limpieza_data.ipynb`**: Carga del CSV, normalización de tablas (`Sales`, `Customers`, `Products`), manejo de duplicados y validación de integridad.
2. **`2_carga_sql.ipynb`**: Automatización del proceso ETL para insertar los datos limpios en una base de datos relacional.
3. **`3_graficos.ipynb`**: Extracción mediante consultas SQL optimizadas y generación de visualizaciones estratégicas.

## 📈 Resumen de Hallazgos (Insights)

| # | Pregunta de Negocio | Resultado / Insight |
| :--- | :--- | :--- |
| 1 | Top 10 Ciudades | Nueva York y LA lideran la demanda. |
| 2 | Profit por Categoría | 'Technology' posee el margen más saludable. |
| 3 | Subcategorías críticas | 'Tables' presenta pérdidas, requiere revisión. |
| 4 | Ventas por Segmento | El segmento 'Consumer' es el motor principal. |
| 5 | Top 10 Clientes | Alta concentración en clientes VIP. |
| 6 | Tendencia mensual | Pico crítico de ventas en Q4 (fin de año). |
| 7 | Crecimiento histórico | Tendencia de expansión sostenida. |
| 8 | Correlación Venta/Profit | Descuentos excesivos reducen el margen. |
| 9 | Modo de envío | Preferencia clara por 'Standard Class'. |
| 10 | Eficiencia por Región | La región Oeste es la más rentable. |

---

## 📊 Visualización de Resultados

### 1. Desempeño por Categorías y Regiones
![Top Ciudades](picture/%201_top10_ciudades.png)
![Profit por Categoría](picture/%202_ventas_profit_categoria.png)

### 2. Segmentación y Rentabilidad
![Subcategorías](picture/%203_subcategoria.png)
![Segmento](picture/%204_segmento.png)

### 3. Clientes y Tendencias
![Top Clientes](picture/%205_topclientes.png)
![Tendencia](picture/%206_tendencia.png)

### 4. Operativa y Eficiencia
![Ventas Mes](picture/%207_mes_venta.png)
![Scatter Plot](picture/%208_scatter.png)
![Ship Mode](picture/%209_shipmode.png)
![Región](picture/%20%2010_region.png)

---

## 📂 Estructura del Repositorio
```text
Project-Superstore-Retail-Analysis/
├── data/               # Dataset original (CSV)
├── notebooks/          # Notebooks de Jupyter (ETL + Análisis)
├── picture/            # Gráficos exportados (.png)
├── SuperstoreRetail.sql# Script DDL de la base de datos
└── README.md           # Documentación del proyecto
