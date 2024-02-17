.data
prompt:    .asciiz "Enter a number: "
message:   .asciiz "Your number was: "

.text
# Print prompt
li $v0, 4          # 4 = system code for printing a string
la $a0, prompt     # Load address of prompt in $a0
syscall            # Print the string "Enter a number"

# Get the user's number
li $v0, 5          # 5 = system code for user input
syscall            # Call to the System to execute the instruction

################## Don't change the upper part ##################

## Your instructions go here ##
# Store the result in $t0
move $t0, $v0

################## Don't change the lower part ##################

# Print newline
li $v0, 11        # 11 = system code for printing a character
li $a0, '\n'      # $a0 = register that accepts the newline character for printing
syscall           # Call to the System to execute the instructions and print the newline character

# Display the message
li $v0, 4          # 4 = system code for printing a string
la $a0, message    # Load address of message in $a0
syscall            # Print the string "\n Your number was:"

# Show the number
li $v0, 1          # 1 = system code for printing a word
move $a0, $t0      # Move the user input to $a0
syscall            # Call to the System to execute the instruction
