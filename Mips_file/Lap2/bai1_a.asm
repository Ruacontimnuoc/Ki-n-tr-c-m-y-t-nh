# Chuong trinh: f(a,b,c)=a-b+c 
# f(1,2,3)= 2; f(11,24,5)= -8 
#----------------------------------- 
# Data segment 
 .data 
# Cac dinh nghia bien 
int_a: .word 0 
int_b: .word 0 
int_c: .word 0 
int_f: .word 13 
# Cac cau nhac nhap/xuat du lieu 
Nhap_a: .asciiz "Nhap a: " 
Nhap_b: .asciiz "Nhap b: " 
Nhap_c: .asciiz "Nhap c: " 
Xuat_kq: .asciiz "f(a,b,c)= " 
#----------------------------------- 
# Code segment 
 .text 
 .globl main 
#----------------------------------- 
# Chuong trinh chinh 
#----------------------------------- 
main: 
# Nhap (syscall) 
 # Nhap a 
 la $a0,Nhap_a 
 addi $v0,$zero,4 
 syscall 
 addi $v0,$zero,5 
 syscall 
 sw $v0,int_a 
 # Nhap b 
 la $a0,Nhap_b 
 addi $v0,$zero,4 
 syscall 
 addi $v0,$zero,5 
 syscall 
 sw $v0,int_b 
 # Nhap c 
 la $a0,Nhap_c 
 addi $v0,$zero,4 
 syscall 
 addi $v0,$zero,5 
 syscall 
 sw $v0,int_c 
# Xu ly 
 # t0=a/f, t1=b/c 
 # f=a-b 
 lw $t0,int_a 
 lw $t1,int_b 
 sub $t0,$t0,$t1 
 # f=(a-b)+c [f+c] 
 lw $t1,int_c 
 add $t0,$t0,$t1 
 # luu ket qua 
 sw $t0,int_f 
# Xuat ket qua (syscall) 
 la $a0,Xuat_kq 
 addi $v0,$zero,4 
 syscall 
 lw $a0,int_f 
 addi $v0,$zero,1 
 syscall 
# Ket thuc chuong trinh (syscall) 
Kthuc: addiu $v0,$zero,10 
 syscall 
#-----------------------------------