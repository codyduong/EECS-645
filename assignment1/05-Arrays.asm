.data # data section
array:      .word 645, 12, 30, 13, 45  # Example array of integers (will be changed by the auto-grader)
arraySize:  .word 5               # Size of the array
newline:    .asciiz "\n"

sum: .asciiz "The sum of the array elements is: "
.text # text section
main:

  lw $t0, arraySize          # Load the size of the array into $t0
  la $t1, array              # Load the base address of the array into $t1
  li $t2, 0                  # Initialize sum to 0
  
  # Loop to calculate the sum of the array elements
  loop:
    beq $t0, $zero, exitLoop  # Exit the loop if size becomes 0

  ################## Don't change the upper part ##################

    ## Your instructions go here ##
    
    ## Load the current element of the array into $t3
    lw $t3, 0($t1)
    
    ## Add the current element to the sum in $t2
    add $t2, $t2, $t3

    ## Move to the next element in the array
    addi $t1, $t1, 4

  ################## Don't change the lower part ##################
  
    subi $t0, $t0, 1           # Decrease the size of the array
    j loop                    # Repeat the loop

  exitLoop:

  # Print the sum

  li $v0, 4
  la $a0, sum
  syscall

  li $v0, 1
  move $a0, $t2
  syscall

