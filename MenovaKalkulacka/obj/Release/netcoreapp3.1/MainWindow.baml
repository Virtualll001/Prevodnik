   M S B A M L   `   `   `  ���� K  GMenovaKalkulacka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:MenovaKalkulackaMenovaKalkulacka  !    MenovaKalkulacka.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:MenovaKalkulacka       � Title$  Měnová kalkulačka��$	��300��$	��250�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � WindowStyle$ 
ToolWindow=���
� .���  � Color$ Black��� $ White�� � Offset$ 1Q�.��� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.��� $ Black��$ 0.226Q�� $	 Red��$ 0.797Q�� $ 	#FFFDDADA��$ 1Q�.+�� $��25, 15, 25, 10q� � RowDefinitions �� $��* ��� $��* ��� $��* ��� $��50 �	 � ColumnDefinitions	 �� �� $
��Auto �.+��� -   
 ��Name$
 
czkTextBox��$��30��$��22(��� -   $
 
eurTextBox��$��30��$��1��$��22(��� $	��CZK��$��Center=�$��10, 0, 0, 0q�$��1��
�������$
��Bold"�$��22(��� $��1��$��Center=�$��10, 0, 0, 0q�$��1�� �� Orientation$ 
Horizontal=�.+��� $	��EUR��
�������$��22(��� -   $
 
usdTextBox��$��30��$��2��$��22(��� $��2��$��Center=�$��10, 0, 0, 0q�$��1��$ 
Horizontal=�.+��� $	��USD��
�������$��22(��� -    ��Name$ aktualniTextBlock��$
��Left=�$��2��$��4��$�� ��$
��Wrap=�$��Center=�$��12(�$��Italic$�