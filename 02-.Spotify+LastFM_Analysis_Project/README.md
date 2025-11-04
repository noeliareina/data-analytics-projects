🎧 # Proyecto de Análisis de Spotify y LastFM

## Introducción

Este proyecto tiene como objetivo analizar las canciones más populares en diferentes zonas de Europa entre los años 2000 y 2024, explorando cómo han evolucionado las tendencias musicales a lo largo de los distintos lustros.

## Objetivos

1. Analizar las canciones más populares por zonas de Europa en el período 2000–2024.

2. Comparar la evolución musical por lustros y por países, utilizando datos obtenidos de Spotify y LastFM.

## Implementación del proyecto

✅ Se utilizaron las APIs de Spotify y LastFM para obtener datos de las canciones más escuchadas en Europa durante las últimas dos décadas.

✅ En la API de LastFM observamos una predominancia del género rock, mientras que Spotify ofrecía una mayor variedad de estilos musicales. Por ello, decidimos combinar ambas fuentes:

- Spotify para las canciones más escuchadas.

- LastFM para obtener el género musical de las canciones más populares, información no disponible en Spotify.

✅ El resultado fue una base de datos relacional con la siguiente estructura:

- Tabla principal: Canciones (nombre, popularidad y género).

- Tablas relacionadas: artista_en_cancion, lustro_de_cancion y país_en_cancion, conectadas con las tablas artistas, años, países y zonas.

✅ Con este esquema pudimos realizar diversas consultas SQL que nos permitieron analizar patrones y cumplir los objetivos planteados.

🛠️ Tecnologías utilizadas

    - Lenguajes: Python y MySQL.
    - Estructura modular: uso de funciones y bucles para mejorar la reutilización del código.
    - Estructuras de datos: listas, tuplas y diccionarios para limpiar y organizar la información obtenida de las APIs antes de insertarla en SQL.

🚀 Retos y aprendizajes

    1. Diseñar la estructura óptima de la base de datos tomó más tiempo del previsto.
    2. La limpieza de los géneros fue un desafío, ya que las tags de LastFM no siempre eran claras o coherentes.

🔮 Próximos pasos
    
    - Añadir biografías de los artistas desde la API de LastFM.
    - Aumentar el número de canciones en la base de datos (más de 50 por llamada a la API).
    - Mejorar la gestión de canciones con múltiples artistas, actualmente registradas como un único artista.

🏁 Conclusión

Este proyecto ha supuesto un aprendizaje integral en extracción, limpieza y análisis de datos, combinando Python y SQL para construir un flujo modular y escalable.
Una gran oportunidad para profundizar en el manejo de APIs y en la creación de bases de datos relacionales.

*English version*

🎧 # Spotify and LastFM Analysis Project

## Introduction

This project aims to analyse the most popular songs in different areas of Europe between 2000 and 2024, exploring how musical trends have evolved over the decades.

## Objectives

1. To analyse the most popular songs by region in Europe between 2000 and 2024.

2. To compare musical evolution by five-year period and by country, using data obtained from Spotify and LastFM.

## Project implementation

✅ The Spotify and LastFM APIs were used to obtain data on the most listened to songs in Europe over the last two decades.

✅ In the LastFM API, we observed a predominance of the rock genre, while Spotify offered a greater variety of musical styles. Therefore, we decided to combine both sources:

- Spotify for the most listened to songs.

- LastFM to obtain the musical genre of the most popular songs, information not available on Spotify.

✅ The result was a relational database with the following structure:

- Main table: Songs (name, popularity and genre).

- Related tables: artist_in_song, song_decade and country_in_song, connected to the artists, years, countries and regions tables.

✅ With this schema, we were able to perform various SQL queries that allowed us to analyse patterns and meet the objectives set.


🛠️ Technologies used

- Languages: Python and MySQL.
- Modular structure: use of functions and loops to improve code reuse.
- Data structures: lists, tuples, and dictionaries to clean and organise the information obtained from the APIs before inserting it into SQL.

🚀 Challenges and lessons learned

1. Designing the optimal database structure took longer than expected.
2. Cleaning up the genres was challenging, as LastFM tags were not always clear or consistent.

🔮 Next steps

- Add artist biographies from the LastFM API.
    - Increase the number of songs in the database (more than 50 per API call).
- Improve the management of songs with multiple artists, currently registered as a single artist.

🏁 Conclusion

This project has been a comprehensive learning experience in data extraction, cleaning, and analysis, combining Python and SQL to build a modular and scalable flow.
It has been a great opportunity to delve deeper into API management and relational database creation.