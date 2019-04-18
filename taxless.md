### Entities
User
---
email
password_digest

Fop
---
first_name
last_name
surname
id_number
phone_number
region
city
district
street
building_no
postal_code
registration_date
registration_no
economic_activity_code
economic_activity_name

Group
---
name
key
vat { true/false }

Tax
---
name
type { income dependent | min_salary dependent | value based }
value
description

TaxGovermentInfo
---
min_salary

### Core classes
TaxCalculator - calculates tax based on income, current minimal salary, fop group and its taxes
DocumentGenerator - generates documents with declaration info by following some pattern
