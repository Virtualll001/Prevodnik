   M S B A M L   `   `   `  ����K  GMenovaKalkulacka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:MenovaKalkulackaMenovaKalkulacka  5   	   !    MenovaKalkulacka.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:MenovaKalkulacka     5   	     � Title$  Měnová kalkulačka��5   	   $	��300��6#   $	��250��60    � 
ResizeMode$ NoResize=�6<    � WindowStartupLocation$ CenterScreen=�6R    � WindowStyle$ 
ToolWindow=�6w   ��5	      
� 5
   
   .��5      �  � Color$ Black��6   � 5      $ White��6    � Offset$ 1Q�6)   5      .��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      � $ Black��6   $ 0.226Q�6-   � 5      $	 Red��6   $ 0.797Q�6+   � 5      $ 	#FFFDDADA��6   $ 1Q�61   5      .+�5   
   � $��25, 15, 25, 10q�6    � RowDefinitions 5      �� 5      $��* �6    �� 5      $��* �6    �� 5      $��* �6    �� 5      $��50 �6    	 � ColumnDefinitions	 5      �� 5      �� 5       $
��Auto �6#   .+�5"      �� -   5        
 ��Name$
 
czkTextBox��5"   "   $��30��6   $��22(�66   6D   �� 5#      -   5        $
 
eurTextBox��5#   /   $��30��6   $��1��6"   $��22(�6C   6Q   �� 5$      $	��CZK��6   $��Center=�6$   $��10, 0, 0, 0q�6?   $��1��6T   
�������$
��Bold"�6w   $��22(�6�   �� 5%      $��1��6   $��Center=�6&   $��10, 0, 0, 0q�6A   $��1��6V    �� Orientation$ 
Horizontal=�6f   .+�5&      �� $	��EUR��6   
�������$��22(�6:   5'      �� 5)      -   5        $
 
usdTextBox��5)   /   $��30��6   $��2��6"   $��22(�6C   6Q   �� 5*      $��2��6   $��Center=�6&   $��10, 0, 0, 0q�6A   $��1��6V   $ 
Horizontal=�6f   .+�5+      �� $	��USD��6   
�������$��22(�6:   5,      �� 5.      -   5         ��Name$ aktualniTextBlock��5.      $
��Left=�63   $��2��6N   $��4��6b   $�� ��6o   $
��Wrap=�6w   $��Center=�6�   $��12(�6�   $��Italic$�6�   50      51      52      