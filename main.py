import psycopg2, os
from getpass import getpass

conn = psycopg2.connect(os.environ['DATABASE_URL'])

print("ADD NEW USER")

student_id = input("student_id: ")
first_name = input("First Name: ")
last_name = input("Last Name: ")
date_of_birth = input("Date of birth: ")
address = input("Address: ")
email = input("Email: ")
phone_number = input("Phone Number: ")

while True:
  password = getpass("Password: ")
  password2 = getpass("Password again: ")
  if password != password2:
    print("Password did not match")
  else:
    break
cur = conn.cursor()
cur.execute("INSERT INTO students (student_id, first_name, last_name, date_of_birth, address, email, phone_number) VALUES (%s, %s, %s, %s, %s, %s, %s)", (int(student_id), first_name, last_name, date_of_birth, address, email, int(phone_number)))
conn.commit()
cur.close()