   M S B A M L   `   `   `  ����@  <Simon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:SimonSimon  5   	       Simon.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Simon     5   	     � Title$  Simon��5	   	   $	��500��6   $	��500��6$    � Icon$ 	smile.ico��6G   ��61   Z�  � 	Resources 5         ButtonSwitch �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property	 P� Value  Button1  Button2  Button3  Button4��%  &	        &	 �    &	     &	 �    &	 B    �� 5   
   " ��6%   .�5      ��  � ��
 � � �6;   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $��border��6!   $��0q�6/   
������ #��z��6]   ._�5      �� $��Center=�6/   $��Center=�6L   5       5      P� 5       �@J�IsMouseOver	 . . �5   "   ��  �@J�Opacity$ 1Q�6<   5      5      5      5      �� 5   
   " ��6    .�5      ��  � ��
 � � �6;   �� 5       � �� 5       �� 5!      " ��6&   .R�5"      �� $��border��6!   $��25,25,10,10q�6/   
���   �#��z��6a   ._�5#      �� $��Center=�6/   $��Center=�6L   5$       5%      P� 5&       �@J�IsMouseOver	 . . �5'   "   ��  �@J�Opacity$ 1Q�6<   5(      5*      5,      5-      �� 5.   
   " ��6    .�5/      ��  � ��
 �  ��69   �� 50       � �� 51      �� 52      " ��6&   .R�53      �� $��border��6!   $��10,25,25,10q�6/   
���   �#��z��6a   ._�54      �� $��Center=�6/   $��Center=�6L   55       56      P� 57       �@J�IsMouseOver	 . . �58   "   ��  �@J�Opacity$ 1Q�6<   59      5;      5=      5>      �� 5?   
   " ��6    .�5@      ��  � ��
 ��  �6:   �� 5A       � �� 5B      �� 5C      " ��6&   .R�5D      �� $��border��6!   $��10,10,25,25q�6/   
���   �#��z��6a   ._�5E      �� $��Center=�6/   $��Center=�6L   5F       5G      P� 5H       �@J�IsMouseOver	 . . �5I   "   ��  �@J�Opacity$ 1Q�6<   5J      5L      5N      5O      �� 5P   
   " ��6    .�5Q      ��  � ��
 � ���6<   �� 5R       � �� 5S      �� 5T      " ��6&   .R�5U      �� $��border��6!   $��25,10,10,25q�6/   
���   �#��z��6a   ._�5V      �� $��Center=�6/   $��Center=�6L   5W       5X      P� 5Y       �@J�IsMouseOver	 . . �5Z   "   ��  �@J�Opacity$ 1Q�6<   5[      5]      5_      5`      5a      .��5c      � -   5        
 �Name$
 MainGrid��5c      
������  � RowDefinitions 5d   
   �� 5e      �� 5f      $��0* �6   .+�5h   
   �� 
������ 
�������$��2q�6>    �� CornerRadius$	 250��6R   $��0q�6e    �� Padding$ 0q�6p   6~   �� 5i   
   -   5         ��Name$ InnerBorder��5i      $	 225��6&   
�������$��15,15,15,15q�6L   
���   � K� ZIndex$ 1��6~   $	��240��6�   $	��230��6�   $��128,119,0,0q�6�   $
��Left=�6�   $	��Top=�6�   ._�5j      �� -   5         ��Name$ InnerStackPanel��5j      
������ $��Center=�6L   $	��Top=�6i   $	��200��6�   $	��150��6�   .+�5k      �� 
������ $	��Top=�61   $��Center=�6I   $��55��6f   $��0q�6r   $	��150��6~   $��0,20,0,0q�6�   $	��Top=�6�   $��Center=�6�   $��45(�6�   $��	ExtraBold"�6�   .��6  Simon6  �� 5l       �� Orientation$ 
Horizontal=�6   .+�5m      �� $ 15��6   $��1q�6/   $��0q�6C   $ 0q�6N   
���   �$��50��6n   
���   �._�5n      �� -   5         ��Name$ CounterTextBlock��5n   $   $��00��6>   $&�� Courier,Terminal,Times New Roman)�6H   
���  ��$��34(�6�    �� TextAlignment$ Center=�6�   
���   �$��60��6�   $��40��6�   $��	0,10,0,10q�6�   $��Center=�6�   $
��Left=�6  5o      5p      �� 5q      -   5         ��Name$ ButtonStart��5q      
���  ��$ 2��6C   $��50��6T   $��50��6_   $��start��6k   $��14(�6{   $
��Bold"�6�   
���   �$��7q�6�   $��20,10,50,10q�6�   $	��Top=�6�   $��Right=�6�   $��Center=�6   5r      ��%_   '��       �� 5s      " ��6$   .�5t   "   ��  �@��CornerRadius$ 50��6A   5v      5w      5x      5y      �� 5z      $��52��6   $��20��6$   $
��49,5q�60   
���   �$ 5��6Q   $ 0q�6b   ._�5{      �� -   5        $ ButtonSwitch��5{      $��52��63   $��20��6>   #��[  6J   $��0q�6p   
������ 
������ .��5|      �� -   5        $ BorderSwitch��5|   !   $ 3��67   
����� �$
��Left=�6a   $��16��6|   $��22��6�   $ 0q�6�   $��0,0,25,0q�6�   ._�5}      �� -   5        $ SwitchTextBlock��5}   (   $	��off��6A   
������  �� Padding$ 0q�6e   
���  ��$
��Left=�6�   $��13(�6�   $ Right=�6�   $��19��6�   $��18��6�   5~      5      5�      �� 5�      6   5�      5�      �� 5�   
   -	   5        $ ButtonGreen1��5�      $�� ��6'   #��[ 62   
��� � �$��6q�6g   $��25,25,10,10q�6r   
���   �$
��Left=�6�   $	��Top=�6�   $	��240��6�   $	��230��6�    5�      ��%f   '��       �� 5�      " ��6   .�5�      ��  �@��CornerRadius$ 	220,0,0,0��65   5�      5�      5�      �� 5�   
   -
   5        $ 
ButtonRed2��5�      #��[ 6'   $�� ��6H   
���  ��$��10,25,25,10q�6e   
���   �$
��Left=�6�   $	��Top=�6�   $	��240��6�   $	��230��6�   $��	239,6,0,0q�6�    5�      ��%f   '��       �� 5�      " ��6   .�5�      ��  �@��CornerRadius$ 	0,220,0,0��65   5�      5�      5�      �� 5�   
   -   5        $ ButtonBlue3��5�      #��[ 6'   $�� ��6H   
����  �$��10,10,25,25q�6e   
���   �$
��Left=�6�   $	��Top=�6�   $	��240��6�   $	��230��6�   $��239,227,0,0q�6�    5�      ��%f   '��       �� 5�      " ��6   .�5�      ��  �@��CornerRadius$ 	0,0,220,0��65   5�      5�      5�      �� 5�   
   -   5        $ ButtonYellow4��5�      #��[ 6)   $�� ��6K   
��� ���$��25,10,10,25q�6j   
���   �$
��Left=�6�   $	��Top=�6�   $	��240��6�   $	��230��6�   $��	6,227,0,0q�6�    5�      ��%f   '��       �� 5�      " ��6   .�5�      ��  �@��CornerRadius$ 	0,0,0,220��65   5�      5�      5�      5�      5�      