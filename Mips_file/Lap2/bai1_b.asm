#Chuong trinh: Nhap / Xuat chuoi 10 ky tu 
#----------------------------------- 
#Data segment 
 .data 
#Cac dinh nghia bien 
#Cac cau nhac nhap du lieu 
Nhap_s: .asciiz "Kien Truc May Tinh 2022. " 
#----------------------------------- 
#Code segment 
 .text 
 .globl main 
#----------------------------------- 
#Chuong trinh chinh 
#----------------------------------- 
main: 
#Nhap (syscall) 

#Xu ly 
#Xuat ket qua (syscall) 
 la $a0,Nhap_s 
 addi $v0,$zero,4 
 syscall 
 # xuong dong 
 addi $a0,$zero,'\n' 
 addi $v0,$zero,11 
 syscall 
#ket thuc chuong trinh (syscall) 
Kthuc: addiu $v0,$zero,10 
 syscall 
#-----------------------------------