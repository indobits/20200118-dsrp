print('oli')

import psycopg2

client = psycopg2.connect(
  host='indobits-test1.postgres.database.azure.com',
  port=5432,
  user='indobits@indobits-test1',
  password='Luis1234',
  dbname='postgres'
)
client.cursor()



