.data         # data section
different:      .asciiz "The numbers are different"
same:           .asciiz "The numbers are the same"
.text         # code section
main:
  addi $t0, $zero, 5    # t0 <- 5  (will be changed by the auto-grader)
  addi $t1, $zero, 20   # t1 <- 20 (will be changed by the auto-grader)

################## Don't change the upper part ##################

  ## Your instructions go here ##

  # If $t0 and $t1 are different, jump to numbersdifferent
  bne $t0, $t1, numbersdifferent

  # If $t0 and $t1 are the same, jump to numberssame
  beq $t0, $t1, numberssame

################## Don't change the lower part ##################

numbersdifferent:
  # Display the message
  li $v0, 4             # 4 = system code for printing a string
  la $a0, different       # Load address of message in $a0
  syscall               # Print the string
  j exit_program

numberssame:
  # Display the message
  li $v0, 4             # 4 = system code for printing a string
  la $a0, same       # Load address of message in $a0
  syscall
  j exit_program
                 # Print the string
exit_program:
  # Exit program
  li $v0, 10            # 10 = system code for exit
  syscall               # Exit program
