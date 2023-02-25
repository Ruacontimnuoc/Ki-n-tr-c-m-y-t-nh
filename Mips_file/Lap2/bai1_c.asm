#Chuong trinh: Nhap / Xuat chuoi 10 ky tu 
#----------------------------------- 
#Data segment 
 .data 
#Cac dinh nghia bien 
Dau: .ascii "AAAA" 
str_buf: .space 11 
Cuoi: .ascii "ZZZZ" 
#Cac cau nhac nhap du lieu 
Nhap_s: .asciiz "Nhap chuoi <=10 ky tu: " 
Xuat_s: .asciiz "Chuoi da nhap: " 
#----------------------------------- 
#Code segment 
 .text 
 .globl main 
#----------------------------------- 
#Chuong trinh chinh 
#----------------------------------- 
main: 
#Nhap (syscall) 
 la $a0,Nhap_s 
 addi $v0,$zero,4 
 syscall 
 la $a0,str_buf 
 addi $a1,$zero,11 
 addi $v0,$zero,8 
 syscall 
 # xuong dong 
 addi $a0,$zero,'\n' 
 addi $v0,$zero,11 
 syscall 
#Xu ly 
#Xuat ket qua (syscall) 
 la $a0,Xuat_s 
 addi $v0,$zero,4 
 syscall 
 la $a0,str_buf 
 addi $v0,$zero,4 
 syscall 
#ket thuc chuong trinh (syscall) 
Kthuc: addiu $v0,$zero,10 
 syscall 
#-----------------------------------