   M S B A M L   `   `   `  ���� @  <Simon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:SimonSimon      Simon.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     %localclr-namespace:Simon       � Title$  Simon��$	��500��$	��500�� � Icon$ 	smile.ico����Z�  � 	Resources    ButtonSwitch �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property	 P� Value  Button1  Button2  Button3  Button4��%�  &	        &	 �     &	 �    &	 �    &	 r    �� " ��.���  � ��
 � � ���  � �� �� " ��.R��� $��border��$��0q�
������ #��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver	 . . ���  �@J�Opacity$ 1Q��� " ��.���  � ��
 � � ���  � �� �� " ��.R��� $��border��$��25,25,10,10q�
���   �#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver	 . . ���  �@J�Opacity$ 1Q��� " ��.���  � ��
 �  ����  � �� �� " ��.R��� $��border��$��10,25,25,10q�
���   �#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver	 . . ���  �@J�Opacity$ 1Q��� " ��.���  � ��
 ��  ���  � �� �� " ��.R��� $��border��$��10,10,25,25q�
���   �#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver	 . . ���  �@J�Opacity$ 1Q��� " ��.���  � ��
 � �����  � �� �� " ��.R��� $��border��$��25,10,10,25q�
���   �#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver	 . . ���  �@J�Opacity$ 1Q�.��� -   
 �Name$
 MainGrid��
������  � RowDefinitions �� �� $��0* �.+��� 
������ 
�������$��2q� �� CornerRadius$	 250��$��0q� �� Padding$ 0q��� -    ��Name$ InnerBorder��$	 225��
�������$��15,15,15,15q�
���   � K� ZIndex$ 1��$	��240��$	��230��$��128,119,0,0q�$
��Left=�$	��Top=�._��� -    ��Name$ InnerStackPanel��
������ $��Center=�$	��Top=�$	��200��$	��150��.+��� 
������ $	��Top=�$��Center=�$��55��$��0q�$	��150��$��0,20,0,0q�$	��Top=�$��Center=�$��45(�$��	ExtraBold"�.��Simon��  �� Orientation$ 
Horizontal=�.+��� $ 15��$��1q�$��0q�$ 0q�
���   �$��50��
���   �._��� -    ��Name$ CounterTextBlock��$��00��$&�� Courier,Terminal,Times New Roman)�
���  ��$��34(� �� TextAlignment$ Center=�
���   �$��60��$��40��$��	0,10,0,10q�$��Center=�$
��Left=��� -    ��Name$ ButtonStart��
���  ��$ 2��$��50��$��50��$��start��$��14(�$
��Bold"�
���   �$��7q�$��20,10,50,10q�$	��Top=�$��Right=�$��Center=� ��%:   '��       �� " ��.���  �@��CornerRadius$ 50���� $��52��$��20��$
��49,5q�
���   �$ 5��$ 0q�._��� -   $ ButtonSwitch��$��52��$��20��#��[  $��0q�
������ 
������ .���� -   $ BorderSwitch��$ 3��
����� �$
��Left=�$��16��$��22��$ 0q�$��0,0,25,0q�._��� -   $ SwitchTextBlock��$	��off��
������  �� Padding$ 0q�
���  ��$
��Left=�$��13(�$ Right=�$��19��$��18���� �� -	   $ ButtonGreen1��$�� ��#��[ 
��� � �$��6q�$��25,25,10,10q�
���   �$
��Left=�$	��Top=�$	��240��$	��230�� ��%A   '��       �� " ��.���  �@��CornerRadius$ 	220,0,0,0���� -
   $ 
ButtonRed2��#��[ $�� ��
���  ��$��10,25,25,10q�
���   �$
��Left=�$	��Top=�$	��240��$	��230��$��	239,6,0,0q� ��%A   '��       �� " ��.���  �@��CornerRadius$ 	0,220,0,0���� -   $ ButtonBlue3��#��[ $�� ��
����  �$��10,10,25,25q�
���   �$
��Left=�$	��Top=�$	��240��$	��230��$��239,227,0,0q� ��%A   '��       �� " ��.���  �@��CornerRadius$ 	0,0,220,0���� -   $ ButtonYellow4��#��[ $�� ��
��� ���$��25,10,10,25q�
���   �$
��Left=�$	��Top=�$	��240��$	��230��$��	6,227,0,0q� ��%A   '��       �� " ��.���  �@��CornerRadius$ 	0,0,0,220��