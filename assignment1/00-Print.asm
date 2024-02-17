.data            # Variable declaration section
HelloString:     .ascii "Hello, MIPS!" # The string to be printed

.text           # Code section

# Printing a string
li $v0, 4         # 4 = syscall number for printing a string

################## Don't change the upper part ##################

## Your instructions go here ##
# Load the address of the HelloString into $a0
la $a0, HelloString

################## Don't change the lower part ##################

syscall           # Call to the System to execute the instructions and print the character at $a0
