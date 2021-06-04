# FEUP-BDAD-PROJ

Project developed for BDAD.


This is a database created to model an online coding competition platform with extra features like courses and job offers

Developed by Filipe Campos, [Gabriel Rocco](https://github.com/gabrielrocco) and [Vasco Alves](https://github.com/Vasco52)

## Relevant information
**Date**: 2nd Year, 2nd Semester (2020/2021)

**Course name**: Databases / Bases de Dados

**Course link**: [BDAD](https://sigarra.up.pt/feup/en/ucurr_geral.ficha_uc_view?pv_ocorrencia_id=459477)


**Project grade**: 
| |description | grade |
|--|-|--------|
|1st delivery|UML diagram|18.3|
|2nd delivery|`criar.sql` and `povoar.sql`|18.6|
|3rd delivery|`queries` and `triggers`|19.2|
|**Final grade**| `0.25*(1st+2nd)+0.5*3rd`|18.8|

## Quick run information

To test this database just do `.read iniciar.sql` on `sqlite3` (Alternatively just read `criar.sql, povoar.sql, triggers/gatilhoX_adiciona.sql`, with `0 < X <= 3` manually). This will create, load and set triggers for the database, afterwards queries can be run using `.read intX.sql` where `0 < X <= 10`
