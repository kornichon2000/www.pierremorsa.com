FasdUAS 1.101.10   ��   ��    k             l        	  x     �� 
 ��   
 1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 4��       Yosemite (10.10) or later    	 �   4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r      x    �� ����    2  	 ��
�� 
osax��        l     ��������  ��  ��        l     ��  ��    A ; on open theFiles executes when a file is opened either by:     �   v   o n   o p e n   t h e F i l e s   e x e c u t e s   w h e n   a   f i l e   i s   o p e n e d   e i t h e r   b y :      l     ��  ��    ( " * dragging the file on the applet     �   D   *   d r a g g i n g   t h e   f i l e   o n   t h e   a p p l e t       l     �� ! "��   ! 0 * * selecting a file in the open dialog box    " � # # T   *   s e l e c t i n g   a   f i l e   i n   t h e   o p e n   d i a l o g   b o x    $ % $ i     & ' & I     �� (��
�� .aevtodocnull  �    alis ( o      ���� 0 thefiles theFiles��   ' X     g )�� * ) k    b + +  , - , l   ��������  ��  ��   -  . / . l   �� 0 1��   0 > 8 Get the POSIX path of the file, with surrounding quotes    1 � 2 2 p   G e t   t h e   P O S I X   p a t h   o f   t h e   f i l e ,   w i t h   s u r r o u n d i n g   q u o t e s /  3 4 3 l   �� 5 6��   5 5 / POSIX paths are best for shell script commands    6 � 7 7 ^   P O S I X   p a t h s   a r e   b e s t   f o r   s h e l l   s c r i p t   c o m m a n d s 4  8 9 8 l   �� : ;��   : 9 3 for example '/User/Toto/Desktop/Presentation.pptx'    ; � < < f   f o r   e x a m p l e   ' / U s e r / T o t o / D e s k t o p / P r e s e n t a t i o n . p p t x ' 9  = > = r     ? @ ? n     A B A 1    ��
�� 
strq B n     C D C 1    ��
�� 
psxp D o    ���� 0 thefile theFile @ o      ���� 0 thefilepath theFilePath >  E F E l   ��������  ��  ��   F  G H G l   �� I J��   I "  Get parent path of the file    J � K K 8   G e t   p a r e n t   p a t h   o f   t h e   f i l e H  L M L l   �� N O��   N &   for example /User/Toto/Desktop/    O � P P @   f o r   e x a m p l e   / U s e r / T o t o / D e s k t o p / M  Q R Q l   �� S T��   S - ' Note we don't use the quoted form here    T � U U N   N o t e   w e   d o n ' t   u s e   t h e   q u o t e d   f o r m   h e r e R  V W V O    & X Y X r    % Z [ Z n    # \ ] \ 1   ! #��
�� 
psxp ] l   ! ^���� ^ c    ! _ ` _ n     a b a m    ��
�� 
ctnr b o    ���� 0 thefile theFile ` m     ��
�� 
alis��  ��   [ o      ���� 0 thefilefolder theFileFolder Y m     c c�                                                                                  MACS  alis    2  Titan                          BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    T i t a n  &System/Library/CoreServices/Finder.app  / ��   W  d e d l  ' '��������  ��  ��   e  f g f l  ' '�� h i��   h B < Nice little trick to get the *last* characters of a string:    i � j j x   N i c e   l i t t l e   t r i c k   t o   g e t   t h e   * l a s t *   c h a r a c t e r s   o f   a   s t r i n g : g  k l k l  ' '�� m n��   m R L Use negative numbers. -1 is the last character. -2 is the penultimate, etc.    n � o o �   U s e   n e g a t i v e   n u m b e r s .   - 1   i s   t h e   l a s t   c h a r a c t e r .   - 2   i s   t h e   p e n u l t i m a t e ,   e t c . l  p q p l  ' '�� r s��   r J D Here we get the last 5 characters except the last one, which is a '    s � t t �   H e r e   w e   g e t   t h e   l a s t   5   c h a r a c t e r s   e x c e p t   t h e   l a s t   o n e ,   w h i c h   i s   a   ' q  u v u l  ' '�� w x��   w G A If we used -4 thru -1 we would get "ptx'" with the closing quote    x � y y �   I f   w e   u s e d   - 4   t h r u   - 1   w e   w o u l d   g e t   " p t x ' "   w i t h   t h e   c l o s i n g   q u o t e v  z { z l  ' '�� | }��   | g a Cast type as string or you get a list of characters { "p", "p", "t", "x" } , not a string "pptx"    } � ~ ~ �   C a s t   t y p e   a s   s t r i n g   o r   y o u   g e t   a   l i s t   o f   c h a r a c t e r s   {   " p " ,   " p " ,   " t " ,   " x "   }   ,   n o t   a   s t r i n g   " p p t x " {   �  r   ' 6 � � � c   ' 4 � � � l  ' 2 ����� � n   ' 2 � � � 7  ( 2�� � �
�� 
cha  � m   , .������ � m   / 1������ � o   ' (���� 0 thefilepath theFilePath��  ��   � m   2 3��
�� 
TEXT � o      ���� 0 thefiletype theFileType �  � � � l  7 7��������  ��  ��   �  � � � l  7 7�� � ���   � : 4 If the file extension is not "pptx" then do nothing    � � � � h   I f   t h e   f i l e   e x t e n s i o n   i s   n o t   " p p t x "   t h e n   d o   n o t h i n g �  ��� � Z   7 b � ��� � � >  7 : � � � o   7 8���� 0 thefiletype theFileType � m   8 9 � � � � �  p p t x � I  = D�� � �
�� .sysodlogaskr        TEXT � m   = > � � � � � 2 T h i s   i s   n o t   a   . p p t x   f i l e . � �� ���
�� 
btns � m   ? @ � � � � �  C a n c e l��  ��   � k   G b � �  � � � l  G G�� � ���   � [ U This is the magic command, which unzips the media folder stored inside the pptx file    � � � � �   T h i s   i s   t h e   m a g i c   c o m m a n d ,   w h i c h   u n z i p s   t h e   m e d i a   f o l d e r   s t o r e d   i n s i d e   t h e   p p t x   f i l e �  � � � I  G Z�� ���
�� .sysoexecTEXT���     TEXT � b   G V � � � b   G R � � � b   G P � � � b   G L � � � m   G J � � � � �  u n z i p   - u   � o   J K���� 0 thefilepath theFilePath � m   L O � � � � � "   p p t / m e d i a / *   - d   ' � o   P Q���� 0 thefilefolder theFileFolder � m   R U � � � � �  '��   �  � � � l  [ [�� � ���   � ? 9 Then we simply display a notification to tell we're done    � � � � r   T h e n   w e   s i m p l y   d i s p l a y   a   n o t i f i c a t i o n   t o   t e l l   w e ' r e   d o n e �  ��� � I  [ b�� ���
�� .sysonotfnull��� ��� TEXT � m   [ ^ � � � � � 
 D o n e .��  ��  ��  �� 0 thefile theFile * o    ���� 0 thefiles theFiles %  � � � l     ��������  ��  ��   �  � � � i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k      � �  � � � l     �� � ���   � M G	Handle the case where the script is launched without any dropped files    � � � � � 	 H a n d l e   t h e   c a s e   w h e r e   t h e   s c r i p t   i s   l a u n c h e d   w i t h o u t   a n y   d r o p p e d   f i l e s �  ��� � I    �� ���
�� .aevtodocnull  �    alis � l     ����� � I    ���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
mlsl � m    ��
�� boovtrue��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � � � ���   � ������
�� 
pimr
�� .aevtodocnull  �    alis
�� .aevtoappnull  �   � **** � �� ���  �   � � � �� ��
�� 
vers��   � �� ���
�� 
cobj �  � �  ��� � ��   ���   � �� � � � ���   � �� '���� � ���
�� .aevtodocnull  �    alis�� 0 thefiles theFiles��   � ������������ 0 thefiles theFiles�� 0 thefile theFile�� 0 thefilepath theFilePath�� 0 thefilefolder theFileFolder�� 0 thefiletype theFileType � ���������� c����~�}�|�{ � ��z ��y � � ��x ��w
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psxp
�� 
strq
�� 
ctnr
� 
alis
�~ 
cha �}���|��
�{ 
TEXT
�z 
btns
�y .sysodlogaskr        TEXT
�x .sysoexecTEXT���     TEXT
�w .sysonotfnull��� ��� TEXT�� h f�[��l kh ��,�,E�O� ��,�&�,E�UO�[�\[Z�\Z�2�&E�O�� ���l Y a �%a %�%a %j Oa j [OY�� � �v ��u�t � ��s
�v .aevtoappnull  �   � ****�u  �t   �   � �r�q�p
�r 
mlsl
�q .sysostdfalis    ��� null
�p .aevtodocnull  �    alis�s *�el j 
�� 
osax��  ascr  ��ޭ