#	Makefile by Justin Haddock
#		9-20-2024
#  Compilation instructions for "employee"

CC = g++
CFLAGS = -c -Wall -Wextra
TARGET = employee

default: $(TARGET)

# I didn't put a CFLAGS here because the required -c does not work with the -o
employee: employee.o officer.o supervisor.o main.o
	$(CC) -Wall -Wextra -o $(TARGET) employee.o officer.o supervisor.o main.o

employee.o: Employee.cpp Employee.h 
	$(CC) $(CFLAGS) -c Employee.cpp

officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

main.o: main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) *.p *~ employee

