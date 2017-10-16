  .data
prompt_str:
  .asciiz "Enter a number: "
sum_str:
  .asciiz "The sum is: "
newline:
  .asciiz "\n"
  .text
  .globl main
  main:
  # Print the prompt
  li $v0, 4 # syscall code for print_str
  la $a0, prompt_str
  syscall

  # Read an integer
  li $v0, 5 # syscall code for read_int
  syscall

  # Save first integer
  add $t0, $zero, $v0

  # New prompt
  li $v0, 4
  la $a0, prompt_str
  syscall
    
  # Read another integer  
  li $v0, 5
  syscall

  add $t1, $zero, $v0  

  li $v0, 4
  la $a0, sum_str
  syscall

  add $a0, $t0, $t1
  li $v0, 1 # syscall code for print_int
  syscall

  li $v0, 4
  la $a0, newline
  syscall
  
  jr $ra
