   M S B A M L   `   `   `  ����F  BNakayamaWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:NakayamaWPF.ViewNakayamaWPF.View  5   	   =#clr-namespace:NakayamaWPF.ViewModelNakayamaWPF.ViewModel  5   	   K*clr-namespace:NakayamaWPF.CustomControlersNakayamaWPF.CustomControlers  5   	        NakayamaWPF.View.LoginView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:NakayamaWPF.View     5   	   9	ViewModel#clr-namespace:NakayamaWPF.ViewModel     5   	   Gcustomcontrolers*clr-namespace:NakayamaWPF.CustomControlers     5   	   -   5          � Title$  	LoginView��5
   	   $	��550��6   $	��800��6(    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      *   $NakayamaWPF.ViewModel.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5      �� 
 �� CornerRadius$
 18��6   ��5    
   �� 5!       �� ImageSource$ /Imagenes/fondo.jpg��6    j� Stretch$ UniformToFill=�5"      ._�5$   
   �� $
 15��6   $��3q�5%       J� Opacity$
 0.90Q�5&      ��5(      �� 5)       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5*      �  � Color$ #154360��6#    � Offset$ 0Q�63   � 5+      $ #3498db��6#   $	 0.5Q�63   � 5,      $ #aed6f1��6#   $ 1Q�63   5.      ��51      �� 52      $	 1,0&�6&   $	 0,1&�67   .��53      � $ #154360��6#   $
 0.90Q�63   � 54      $ #aed6f1��6#   $ 0Q�63   55      ._�58      �  � RowDefinitions 59      �� 5:      $��30 �6$   �� 5;      .+�5>      �  � ColumnDefinitions 5?      �� 5@      �� 5A      $��25 �6+   �� 5B      $��25 �6+   �� 5C      $��5 �6+   .+�5F      �� $��LOG-IN��6    ���#d6eaf8$��10(�5H       $��
Montserrat)�5I       $��0��5J       $��Center=�5K       $��10,0,0,0q�5L       �� 5Q      -   5         ��Name$ btmMinimize��5Q      $��0q�5R      $��-��5S      
�������$��16(�5U      $��	Monserrat)�5V       � Cursor$
 Hand��5W      $��1��5X      ��5Z      �� 5[       �� 
TargetType" ��6$   .�5\   "   ��  �� Property � �� �� Value �#003a616?    �� Triggers 5]   "   P� 5^   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5_   *   ��  � �� �#48b5ff6G   5`   '   5b      ��5e      �� 5f       �� 
TargetType" ��6.   .R�5g   "   �� $��18��6)   $��18��64   $
 9��5h   )   #��z��5i   )   ._�5j   &   �� $��Center=�67   $��Center=�5k   7   5l   #   5m      5p      �� 5u      -   5        $ btmClose��5u      $��0q�5v      $��X��5w      
�������$��12(�5y      $��	Monserrat)�5z      $
 Hand��5{      $��2��5|      ��5~      �� 5      " ��6$   .�5�   "   ��  � �� �#003a616?    5�   "   P� 5�   &    �@J�IsMouseOver$
 True��6E   . �5�   *   ��  � �� �#48b5ff6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   �� $��18��6)   $��18��64   $
 9��5�      #��z��5�      ._�5�   &   �� $��Center=�67   $��Center=�5�      5�   #   5�      5�      5�      �� 5�      $	��250��6   $��2��5�       �� Orientation$ Vertical=�5�      $��0,35,0,0q�5�      .+�5�      �� $��/Imagenes/logo.png��6   $	��150��5�      $	��150��6(   �� 5�      $��NAKAYAMA DEL PERÚ S.A.C.��6    
�������$��	Monserrat)�5�       $��19(�5�       $��Medium"�5�       $��Center=�5�       �� 5�      $��Trading and Marine Div��6    
�������$��	Monserrat)�5�   !   $��13(�5�   !   $��Medium"�5�   !   $��Center=�5�   !   $��0,5,0,0q�5�   !   �� 5�      $��Usuario��6    
���   �$��	Monserrat)�5�   !   $��14(�5�   !   $��Medium"�5�   !   $��0,45,0,0q�5�   !   �� 5�      -   5         ��Name$ txtUser��5�      $��12(�5�      $��Medium"�5�      $��	Monserrat)�5�      
������� �� 
CaretBrush
 �����
�������$��0,0,0,2q�5�      $��28��5�      $��Center=�5�      $��0,5,0,0q�5�      $��22,0,0,0q�5�      ��5�      �� *
Username+  �� UpdateSourceTrigger$  PropertyChanged=�.��5�   1   ��5�      �� 5�      $ /Imagenes/icon-user.png��6)   $
 None=�5�   )   ! j� 
AlignmentX$
! Left=�5�   )   .��5�   .   5�      �� 5�      $��Contraseña��6    
���   �$��	Monserrat)�5�   !   $��14(�5�   !   $��Medium"�5�   !   $��0,10,0,0q�5�   !   6   0NakayamaWPF.CustomControlers.PasswordBindableBox  5�      $��28��5�   ;   $��0,5,0,0q�5�   ;   "   Password" 5�   ;   �� *
Password+$ TwoWay=�$  PropertyChanged=�5�      �� 5�      
���  ��$��	Monserrat)�5�   !   $��14(�5�   !   $��Medium"�5�   !   $��0,10,0,0q�5�   !   $
��Wrap=�5�       ��5�       �� *ErrorMessage+5�       �� 5�      -   5        $ btmLogin��5�      $��0q�5�      $��Ingresar��5�      
�������$��16(�5�      $��	Monserrat)�5�      $
 Hand��5�      $��1��5�      $��0,40,0,0q�5�      ��5�      �� *LoginCommand+��5�      �� 5�      " ��6$   .�5�   "   ��  � �� �#00253e6?    5�   "   P� 5�   &    �@J�IsMouseOver$
 True��6E   . �5�   *   ��  � �� �#48b5ff6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   �� $	��150��6)   $��40��65   $
 20��5   )   #��z��5  )   ._�5  &   �� $��Center=�67   $��Center=�5  7   5  #   5     5     5     5     5     5     5     