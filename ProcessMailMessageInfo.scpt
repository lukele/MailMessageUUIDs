FasdUAS 1.101.10   ��   ��    k             l     ��  ��    3 -	Create a CSV file for import into a database     � 	 	 Z 	 C r e a t e   a   C S V   f i l e   f o r   i m p o r t   i n t o   a   d a t a b a s e   
  
 l     ��������  ��  ��        j     �� �� 0 outputasjson outputAsJSON  m     ��
�� boovfals      j    �� �� 0 outputascsv outputAsCSV  m    ��
�� boovfals      j    �� ��  0 outputfilename outputFileName  m       �    I m p o r t M a i l I n f o      l     ��������  ��  ��        i   	     I     ������
�� .aevtoappnull  �   � ****��  ��    k           l     ��������  ��  ��       !   l     �� " #��   " ) #	applescript's text item delimiters    # � $ $ F 	 a p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) 9 3	Should get the contents from the current directory    * � + + f 	 S h o u l d   g e t   t h e   c o n t e n t s   f r o m   t h e   c u r r e n t   d i r e c t o r y (  , - , O      . / . k     0 0  1 2 1 r     3 4 3 I   	�� 5��
�� .earsffdralis        afdr 5  f    ��   4 o      ���� 0 
scriptpath 
scriptPath 2  6�� 6 r     7 8 7 n     9 : 9 m    ��
�� 
ctnr : o    ���� 0 
scriptpath 
scriptPath 8 o      ���� 0 
infofolder 
infoFolder��   / m      ; ;�                                                                                  MACS  alis    r  Hyperactive                ̷%QH+   ��
Finder.app                                                      @���        ����  	                CoreServices    ̷A      �͒     �� �{   c  5Hyperactive:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    H y p e r a c t i v e  &System/Library/CoreServices/Finder.app  / ��   -  < = < l   ��������  ��  ��   =  > ? > l   �� @ A��   @  	Get the info lists    A � B B & 	 G e t   t h e   i n f o   l i s t s ?  C D C r     E F E I    �� G���� 20 buildinfolistfromfolder buildInfoListfromFolder G  H�� H o    ���� 0 
infofolder 
infoFolder��  ��   F o      ���� 0 infolist infoList D  I J I l   ��������  ��  ��   J  K L K l   �� M N��   M ; 5	Create sorted, unique lists of Mail and Message info    N � O O j 	 C r e a t e   s o r t e d ,   u n i q u e   l i s t s   o f   M a i l   a n d   M e s s a g e   i n f o L  P Q P r    $ R S R I    "�� T���� ,0 filteruniquemailinfo FilterUniqueMailInfo T  U�� U o    ���� 0 infolist infoList��  ��   S o      ����  0 uniquemailinfo uniqueMailInfo Q  V W V r   % - X Y X I   % +�� Z���� 20 filteruniquemessageinfo FilterUniqueMessageInfo Z  [�� [ o   & '���� 0 infolist infoList��  ��   Y o      ���� &0 uniquemessageinfo uniqueMessageInfo W  \ ] \ l  . .��������  ��  ��   ]  ^ _ ^ l  . .�� ` a��   `  	Do JSON if desired    a � b b & 	 D o   J S O N   i f   d e s i r e d _  c d c Z   . � e f���� e l  . 3 g���� g o   . 3���� 0 outputasjson outputAsJSON��  ��   f k   6 � h h  i j i l  6 6��������  ��  ��   j  k l k l  6 6�� m n��   m G A	Write the contents of the JSON out to the current folder as well    n � o o � 	 W r i t e   t h e   c o n t e n t s   o f   t h e   J S O N   o u t   t o   t h e   c u r r e n t   f o l d e r   a s   w e l l l  p q p r   6 > r s r I   6 <�� t���� &0 convertlisttojson convertListtoJSON t  u�� u o   7 8���� 0 infolist infoList��  ��   s o      ����  0 outputcontents outputContents q  v w v r   ? L x y x b   ? J z { z b   ? H | } | l  ? B ~���� ~ c   ? B  �  o   ? @���� 0 
infofolder 
infoFolder � m   @ A��
�� 
TEXT��  ��   } o   B G����  0 outputfilename outputFileName { m   H I � � � � � 
 . j s o n y o      ���� 0 outfilepath outFilePath w  � � � Z   M ` � ����� � n  M S � � � I   N S�� �����  0 checkexistence checkExistence �  ��� � o   N O���� 0 outfilepath outFilePath��  ��   �  f   M N � l  V \ � � � � n  V \ � � � I   W \�� ����� 0 
deletefile 
deleteFile �  ��� � o   W X���� 0 outfilepath outFilePath��  ��   �  f   V W � % Attempt to delete existing file    � � � � > A t t e m p t   t o   d e l e t e   e x i s t i n g   f i l e��  ��   �  ��� � Q   a � � � � � k   d � � �  � � � r   d q � � � I  d m�� � �
�� .rdwropenshor       file � o   d e���� 0 outfilepath outFilePath � �� ���
�� 
perm � m   h i��
�� boovtrue��   � o      ���� 0 thefile theFile �  � � � I  r }�� � �
�� .rdwrwritnull���     **** � o   r s����  0 outputcontents outputContents � �� ���
�� 
refn � o   v y���� 0 thefile theFile��   �  ��� � I  ~ ��� ���
�� .rdwrclosnull���     **** � o   ~ ����� 0 thefile theFile��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � Q   � � � ��� � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 thefile theFile��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��   d  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  	Do CSV if desired    � � � � $ 	 D o   C S V   i f   d e s i r e d �  � � � Z   � � ����� � l  � � ����� � o   � ����� 0 outputascsv outputAsCSV��  ��   � k   � � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � F @	Write the contents of the CSV out to the current folder as well    � � � � � 	 W r i t e   t h e   c o n t e n t s   o f   t h e   C S V   o u t   t o   t h e   c u r r e n t   f o l d e r   a s   w e l l �  � � � r   � � � � � I   � ��� ���� $0 convertlisttocsv convertListtoCSV �  ��~ � o   � ��}�} 0 infolist infoList�~  �   � o      �|�|  0 outputcontents outputContents �  � � � r   � � � � � b   � � � � � b   � � � � � l  � � ��{�z � c   � � � � � o   � ��y�y 0 
infofolder 
infoFolder � m   � ��x
�x 
TEXT�{  �z   � o   � ��w�w  0 outputfilename outputFileName � m   � � � � � � �  . c s v � o      �v�v 0 outfilepath outFilePath �  � � � Z   � � � ��u�t � n  � � � � � I   � ��s ��r�s  0 checkexistence checkExistence �  ��q � o   � ��p�p 0 outfilepath outFilePath�q  �r   �  f   � � � l  � � � � � � n  � � � � � I   � ��o ��n�o 0 
deletefile 
deleteFile �  ��m � o   � ��l�l 0 outfilepath outFilePath�m  �n   �  f   � � � % Attempt to delete existing file    � � � � > A t t e m p t   t o   d e l e t e   e x i s t i n g   f i l e�u  �t   �  ��k � Q   � � � � � k   � � � �  � � � r   � � � � � I  � ��j � �
�j .rdwropenshor       file � o   � ��i�i 0 outfilepath outFilePath � �h ��g
�h 
perm � m   � ��f
�f boovtrue�g   � o      �e�e 0 thefile theFile �  � � � I  � ��d � �
�d .rdwrwritnull���     **** � o   � ��c�c  0 outputcontents outputContents � �b ��a
�b 
refn � o   � ��`�` 0 thefile theFile�a   �  ��_ � I  � ��^ ��]
�^ .rdwrclosnull���     **** � o   � ��\�\ 0 thefile theFile�]  �_   � R      �[�Z�Y
�[ .ascrerr ****      � ****�Z  �Y   � Q   � ��X � I 	�W ��V
�W .rdwrclosnull���     **** � o  	�U�U 0 thefile theFile�V   � R      �T�S�R
�T .ascrerr ****      � ****�S  �R  �X  �k  ��  ��   �  ��Q � l �P�O�N�P  �O  �N  �Q     � � � l     �M�L�K�M  �L  �K   �  � � � i     � � � I      �J ��I�J 20 buildinfolistfromfolder buildInfoListfromFolder �  ��H � o      �G�G 0 theinfofolder theInfoFolder�H  �I   � k    � � �    l     �F�E�D�F  �E  �D    l     �C�C   ! 	Get the list of info files    � 6 	 G e t   t h e   l i s t   o f   i n f o   f i l e s  O     	
	 r     c     l   �B�A 6    n     2   �@
�@ 
file o    �?�? 0 theinfofolder theInfoFolder =    1   	 �>
�> 
nmxt m     � 
 p l i s t�B  �A   m    �=
�= 
alst o      �<�< 0 	infofiles 	infoFiles
 m     �                                                                                  MACS  alis    r  Hyperactive                ̷%QH+   ��
Finder.app                                                      @���        ����  	                CoreServices    ̷A      �͒     �� �{   c  5Hyperactive:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    H y p e r a c t i v e  &System/Library/CoreServices/Finder.app  / ��    l   �;�:�9�;  �:  �9    r     n     1    �8
�8 
txdl  1    �7
�7 
ascr o      �6�6 
0 tid TID !"! l   �5�4�3�5  �4  �3  " #$# l   �2%&�2  %  
	Our list	   & �''  	 O u r   l i s t 	$ ()( r    "*+* c     ,-, J    �1�1  - m    �0
�0 
list+ o      �/�/ 0 infolist infoList) ./. X   #�0�.10 k   3�22 343 l  3 3�-�,�+�-  �,  �+  4 565 l  3 3�*78�*  7  	Get the file's name   8 �99 ( 	 G e t   t h e   f i l e ' s   n a m e6 :;: O   3 =<=< r   7 <>?> n   7 :@A@ 1   8 :�)
�) 
pnamA o   7 8�(�( 0 afile aFile? o      �'�' 0 filename fileName= m   3 4BB�                                                                                  MACS  alis    r  Hyperactive                ̷%QH+   ��
Finder.app                                                      @���        ����  	                CoreServices    ̷A      �͒     �� �{   c  5Hyperactive:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    H y p e r a c t i v e  &System/Library/CoreServices/Finder.app  / ��  ; CDC l  > >�&�%�$�&  �%  �$  D EFE l  > >�#GH�#  G * $	Break that into the keys we need...   H �II H 	 B r e a k   t h a t   i n t o   t h e   k e y s   w e   n e e d . . .F JKJ r   > CLML m   > ?NN �OO  -M n     PQP 1   @ B�"
�" 
txdlQ 1   ? @�!
�! 
ascrK RSR r   D JTUT n   D HVWV 4   E H� X
�  
citmX m   F G�� W o   D E�� 0 filename fileNameU o      �� 0 	osversion 	osVersionS YZY r   K Q[\[ n   K O]^] 4   L O�_
� 
citm_ m   M N�� ^ o   K L�� 0 filename fileName\ o      �� 0 infotype infoTypeZ `a` Z   R jbc�db ?   R [efe l  R Yg��g I  R Y�h�
� .corecnte****       ****h n   R Uiji 2  S U�
� 
citmj o   R S�� 0 filename fileName�  �  �  f m   Y Z�� c r   ^ dklk n   ^ bmnm 4   _ b�o
� 
citmo m   ` a�� n o   ^ _�� 0 filename fileNamel o      �� $0 otherdescription otherDescription�  d r   g jpqp m   g hrr �ss  q o      �� $0 otherdescription otherDescriptiona tut r   k pvwv o   k l�� 
0 tid TIDw n     xyx 1   m o�

�
 
txdly 1   l m�	
�	 
ascru z{z l  q q����  �  �  { |}| l  q q�~�  ~ 2 ,	Ensure that this file is the correct type		    ��� X 	 E n s u r e   t h a t   t h i s   f i l e   i s   t h e   c o r r e c t   t y p e 	 	} ��� r   q ���� I  q ����
� .sysoexecTEXT���     TEXT� l  q ����� b   q ���� b   q ���� b   q ~��� b   q x��� m   q t�� ���  d e f a u l t s   r e a d  � 1   t w� 
�  
quot� l  x }������ n   x }��� 1   y }��
�� 
psxp� o   x y���� 0 afile aFile��  ��  � 1   ~ ���
�� 
quot� m   � ��� ��� &   C F B u n d l e E x e c u t a b l e�  �  �  � o      ����  0 executablename executableName� ��� Z   �������� l  � ������� >  � ���� o   � �����  0 executablename executableName� o   � ����� 0 infotype infoType��  ��  � I  � ������
�� .ascrcmnt****      � ****� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� $ M i s m a t c h e d   t y p e   [ '� o   � ����� 0 infotype infoType� m   � ��� ��� ( ' ]   f o r   e x e c u t a b l e   [ '� o   � �����  0 executablename executableName� m   � ��� ���  ' ]��  ��  � k   ���� ��� l  � �������  � 7 1	Then use defaults to get values out of each file   � ��� b 	 T h e n   u s e   d e f a u l t s   t o   g e t   v a l u e s   o u t   o f   e a c h   f i l e� ��� r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  d e f a u l t s   r e a d  � 1   � ���
�� 
quot� l  � ������� n   � ���� 1   � ���
�� 
psxp� o   � ����� 0 afile aFile��  ��  � 1   � ���
�� 
quot� m   � ��� ��� &   C F B u n d l e I d e n t i f i e r��  ��  ��  � o      ���� 0 bundleid bundleID� ��� r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  d e f a u l t s   r e a d  � 1   � ���
�� 
quot� l  � ������� n   � ���� 1   � ���
�� 
psxp� o   � ����� 0 afile aFile��  ��  � 1   � ���
�� 
quot� m   � ��� ��� 6   C F B u n d l e S h o r t V e r s i o n S t r i n g��  ��  ��  � o      ���� 0 shortversion shortVersion� ��� r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  d e f a u l t s   r e a d  � 1   � ���
�� 
quot� l  � ������� n   � ���� 1   � ���
�� 
psxp� o   � ����� 0 afile aFile��  ��  � 1   � ���
�� 
quot� m   � ��� ���     C F B u n d l e V e r s i o n��  ��  ��  � o      ���� 0 versionnumber versionNumber� ��� r   ���� I  ������
�� .sysoexecTEXT���     TEXT� l  ������� b   ���� b   ���� b   �
��� b   ���� m   �    �  d e f a u l t s   r e a d  � 1   ��
�� 
quot� l 	���� n  	 1  	��
�� 
psxp o  ���� 0 afile aFile��  ��  � 1  
��
�� 
quot� m   � 0   P l u g i n C o m p a t i b i l i t y U U I D��  ��  ��  � o      ���� 0 uuid  �  l ��������  ��  ��   	
	 l ����   9 3	Then branch for the other values based on the type    � f 	 T h e n   b r a n c h   f o r   t h e   o t h e r   v a l u e s   b a s e d   o n   t h e   t y p e
  Z  |�� l ���� =  o  ���� 0 infotype infoType m   �  M a i l��  ��   k  !X  r  !< I !:����
�� .sysoexecTEXT���     TEXT l !6���� b  !6  b  !2!"! b  !.#$# b  !(%&% m  !$'' �((  d e f a u l t s   r e a d  & 1  $'��
�� 
quot$ l (-)����) n  (-*+* 1  )-��
�� 
psxp+ o  ()���� 0 afile aFile��  ��  " 1  .1��
�� 
quot  m  25,, �-- .   E x p e c t e d M e s s a g e V e r s i o n��  ��  ��   o      ���� "0 expectedversion expectedVersion .��. r  =X/0/ I =V��1��
�� .sysoexecTEXT���     TEXT1 l =R2����2 b  =R343 b  =N565 b  =J787 b  =D9:9 m  =@;; �<<  d e f a u l t s   r e a d  : 1  @C��
�� 
quot8 l DI=����= n  DI>?> 1  EI��
�� 
psxp? o  DE���� 0 afile aFile��  ��  6 1  JM��
�� 
quot4 m  NQ@@ �AA .   L S M i n i m u m S y s t e m V e r s i o n��  ��  ��  0 o      ���� $0 minimumosversion minimumOSVersion��  ��   k  [|BB CDC r  [vEFE I [t��G��
�� .sysoexecTEXT���     TEXTG l [pH����H b  [pIJI b  [lKLK b  [hMNM b  [bOPO m  [^QQ �RR  d e f a u l t s   r e a d  P 1  ^a��
�� 
quotN l bgS����S n  bgTUT 1  cg��
�� 
psxpU o  bc���� 0 afile aFile��  ��  L 1  hk��
�� 
quotJ m  loVV �WW (   E x p e c t e d M a i l V e r s i o n��  ��  ��  F o      ���� "0 expectedversion expectedVersionD X��X r  w|YZY m  wz[[ �\\  Z o      ���� $0 minimumosversion minimumOSVersion��   ]^] l }}��������  ��  ��  ^ _`_ l }}��ab��  a ! 	Add the record to our list   b �cc 6 	 A d d   t h e   r e c o r d   t o   o u r   l i s t` ded r  }�fgf l }�h����h c  }�iji K  }�kk ��lm�� 0 filename fileNamel o  ������ 0 filename fileNamem ��no�� 0 	osversion 	osVersionn o  ������ 0 	osversion 	osVersiono ��pq�� $0 otherdescription otherDescriptionp o  ������ $0 otherdescription otherDescriptionq ��rs�� 0 bundleid bundleIDr o  ������ 0 bundleid bundleIDs ��tu�� 0 shortversion shortVersiont o  ������ 0 shortversion shortVersionu ��vw�� 0 versionnumber versionNumberv o  ������ 0 versionnumber versionNumberw ��xy�� 0 uuid  x o  ������ 0 uuid  y ��z���� "0 expectedversion expectedVersionz o  ������ "0 expectedversion expectedVersion��  j m  ����
�� 
reco��  ��  g n      {|{  ;  ��| o  ���� 0 infolist infoListe }�~} l ���}�|�{�}  �|  �{  �~  � ~�z~ l ���y�x�w�y  �x  �w  �z  �. 0 afile aFile1 o   & '�v�v 0 	infofiles 	infoFiles/ � l ���u�t�s�u  �t  �s  � ��r� L  ���� o  ���q�q 0 infolist infoList�r   � ��� l     �p�o�n�p  �o  �n  � ��� l     �m�l�k�m  �l  �k  � ��� i    ��� I      �j��i�j ,0 filteruniquemailinfo FilterUniqueMailInfo� ��h� o      �g�g 0 thelist theList�h  �i  � k    <�� ��� l     �f�e�d�f  �e  �d  � ��� I    �c��b
�c .ascrcmnt****      � ****� m     �� ���  S T A R T   M A I L�b  � ��� r    
��� J    �a�a  � o      �`�` 0 versionlist versionList� ��� l   �_�^�]�_  �^  �]  � ��� r    ��� m    �� ���  � o      �\�\ 0 startos startOS� ��� r    ��� c    ��� K    �� �[��Z�[ 0 uuid  � m    �� ���  �Z  � m    �Y
�Y 
reco� o      �X�X  0 previousrecord previousRecord� ��� r    ��� m    �� ���  � o      �W�W 0 
previousos 
previousOS� ��� r    ��� m    �� ���  � o      �V�V ,0 previousshortversion previousShortVersion� ��� r     #��� m     !�� ���  � o      �U�U 0 previousuuid previousUUID� ��� l  $ $�T�S�R�T  �S  �R  � ��� X   $ ���Q�� Z   4 ����P�O� l  4 9��N�M� =  4 9��� n   4 7��� o   5 7�L�L 0 bundleid bundleID� o   4 5�K�K 0 arecord aRecord� m   7 8�� ���  c o m . a p p l e . m a i l�N  �M  � k   < ��� ��� l  < <�J�I�H�J  �I  �H  � ��� I  < W�G��F
�G .ascrcmnt****      � ****� b   < S��� b   < O��� b   < K��� b   < E��� b   < A��� m   < =�� ���  o s V e r s i o n =� n   = @��� o   > @�E�E 0 	osversion 	osVersion� o   = >�D�D 0 arecord aRecord� m   A D�� ���      - -   v e r s i o n =� n   E J��� o   F J�C�C 0 shortversion shortVersion� o   E F�B�B 0 arecord aRecord� m   K N�� ���      - -     u u i d =� n   O R��� o   P R�A�A 0 uuid  � o   O P�@�@ 0 arecord aRecord�F  � ��� l  X X�?�>�=�?  �>  �=  � ��� l  X X�<���<  �  	Ensure a basic start OS   � ��� 0 	 E n s u r e   a   b a s i c   s t a r t   O S� ��� Z   X i���;�:� =  X ]��� o   X Y�9�9 0 startos startOS� m   Y \�� ���  � r   ` e��� n   ` c��� o   a c�8�8 0 	osversion 	osVersion� o   ` a�7�7 0 arecord aRecord� o      �6�6 0 startos startOS�;  �:  � ��� l  j j�5�4�3�5  �4  �3  � ��� l  j j�2� �2  � 8 2	If the UUID has changed then also set the startOS     � d 	 I f   t h e   U U I D   h a s   c h a n g e d   t h e n   a l s o   s e t   t h e   s t a r t O S�  Z   j ��1�0 l  j q�/�. >  j q l  j m	�-�,	 n   j m

 o   k m�+�+ 0 uuid   o   j k�*�* 0 arecord aRecord�-  �,   n   m p o   n p�)�) 0 uuid   o   m n�(�(  0 previousrecord previousRecord�/  �.   k   t �  l  t t�'�&�%�'  �&  �%    l  t t�$�$   " 	Write out previous grouping    � 8 	 W r i t e   o u t   p r e v i o u s   g r o u p i n g  Z   t ��#�" l  t {�!�  >  t { n   t w o   u w�� 0 uuid   o   t u��  0 previousrecord previousRecord m   w z �    �!  �    k   ~ �!! "#" Z   ~ �$%��$ l  ~ �&��& =  ~ �'(' o   ~ �� 0 
previousos 
previousOS( m    �)) �**  �  �  % r   � �+,+ l  � �-��- n   � �./. o   � ��� 0 	osversion 	osVersion/ o   � ��� 0 arecord aRecord�  �  , o      �� 0 
previousos 
previousOS�  �  # 010 r   � �232 K   � �44 �56� 0 startos startOS5 o   � ��� 0 startos startOS6 �78� 0 endos endOS7 l  � �9��9 n   � �:;: o   � ��� 0 	osversion 	osVersion; o   � ���  0 previousrecord previousRecord�  �  8 �<=� 0 type  < m   � �>> �??  m a i l= �@A�  0 displayversion displayVersion@ l  � �B�
�	B n   � �CDC o   � ��� 0 shortversion shortVersionD o   � ���  0 previousrecord previousRecord�
  �	  A �E�� 0 uuid  E n   � �FGF o   � ��� 0 uuid  G o   � ���  0 previousrecord previousRecord�  3 o      �� 0 	newrecord 	newRecord1 HIH I  � ��J� 
� .ascrcmnt****      � ****J o   � ���
�� 
ret �   I KLK I  � ���M��
�� .ascrcmnt****      � ****M o   � ����� 0 	newrecord 	newRecord��  L N��N I  � ���O��
�� .ascrcmnt****      � ****O o   � ���
�� 
ret ��  ��  �#  �"   PQP l  � ���������  ��  ��  Q RSR l  � ���TU��  T * $	Establish new values for this group   U �VV H 	 E s t a b l i s h   n e w   v a l u e s   f o r   t h i s   g r o u pS W��W r   � �XYX n   � �Z[Z o   � ����� 0 	osversion 	osVersion[ o   � ����� 0 arecord aRecordY o      ���� 0 startos startOS��  �1  �0   \]\ l  � ���������  ��  ��  ] ^_^ r   � �`a` o   � ����� 0 arecord aRecorda o      ����  0 previousrecord previousRecord_ bcb r   � �ded n   � �fgf o   � ����� 0 	osversion 	osVersiong o   � ����� 0 arecord aRecorde o      ���� 0 
previousos 
previousOSc hih r   � �jkj n   � �lml o   � ����� 0 uuid  m o   � ����� 0 arecord aRecordk o      ���� 0 previousuuid previousUUIDi non r   � �pqp n   � �rsr o   � ����� 0 shortversion shortVersions o   � ����� 0 arecord aRecordq o      ���� ,0 previousshortversion previousShortVersiono t��t l  � ���������  ��  ��  ��  �P  �O  �Q 0 arecord aRecord� o   ' (���� 0 thelist theList� uvu r   �wxw K   �yy ��z{�� 0 startos startOSz o   � ����� 0 startos startOS{ ��|}�� 0 endos endOS| l ~����~ n  � o  ���� 0 	osversion 	osVersion� o  ����  0 previousrecord previousRecord��  ��  } ������ 0 type  � m  
�� ���  m a i l� ������  0 displayversion displayVersion� l ������ n  ��� o  ���� 0 shortversion shortVersion� o  ����  0 previousrecord previousRecord��  ��  � ������� 0 uuid  � n  ��� o  ���� 0 uuid  � o  ����  0 previousrecord previousRecord��  x o      ���� 0 
lastrecord 
lastRecordv ��� I $�����
�� .ascrcmnt****      � ****� o   ��
�� 
ret ��  � ��� I %*�����
�� .ascrcmnt****      � ****� o  %&���� 0 
lastrecord 
lastRecord��  � ��� I +2�����
�� .ascrcmnt****      � ****� o  +.��
�� 
ret ��  � ��� I 3:�����
�� .ascrcmnt****      � ****� m  36�� ���  E N D   M A I L��  � ���� l ;;��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 20 filteruniquemessageinfo FilterUniqueMessageInfo� ���� o      ���� 0 thelist theList��  ��  � l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� *0 sortbyversionnumber sortByVersionNumber� ���� o      ���� 0 thelist theList��  ��  � k     ^�� ��� Y     [�������� Y    V�������� k     Q�� ��� Z     K������� A     -��� n     &��� o   $ &���� 0 versionnumber versionNumber� n     $��� 4   ! $���
�� 
cobj� o   " #���� 0 j  � o     !���� 0 mylist myList� n   & ,��� o   * ,���� 0 versionnumber versionNumber� n   & *��� 4   ' *���
�� 
cobj� o   ( )���� 0 i  � o   & '���� 0 thelist theList� k   0 G�� ��� r   0 6��� n   0 4��� 4   1 4���
�� 
cobj� o   2 3���� 0 i  � o   0 1���� 0 thelist theList� o      ���� 0 temp  � ��� r   7 @��� n   7 ;��� 4   8 ;���
�� 
cobj� o   9 :���� 0 j  � o   7 8���� 0 thelist theList� n      ��� 4   < ?���
�� 
cobj� o   = >���� 0 i  � o   ; <���� 0 thelist theList� ���� r   A G��� o   A B���� 0 temp  � n      ��� 4   C F���
�� 
cobj� o   D E���� 0 j  � o   B C���� 0 thelist theList��  ��  ��  � ���� I  L Q�����
�� .ascrcmnt****      � ****� o   L M���� 0 thelist theList��  ��  �� 0 j  � [    ��� o    ���� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    �� 0 thelist theList��  ��  �� 0 i  � m    �~�~ � \    ��� l   	��}�|� I   	�{��z
�{ .corecnte****       ****� o    �y�y 0 thelist theList�z  �}  �|  � m   	 
�x�x ��  � ��w� L   \ ^�� o   \ ]�v�v 0 thelist theList�w  � ��� l     �u�t�s�u  �t  �s  � ��� l     �r�q�p�r  �q  �p  � ��� i     ��� I      �o��n�o $0 convertlisttocsv convertListtoCSV� ��m� o      �l�l 0 thelist theList�m  �n  � k     ��� ��� l     �k�j�i�k  �j  �i  � ��� l     �h���h  � 9 3 use a repeat loop to loop over a list of something   � ��� f   u s e   a   r e p e a t   l o o p   t o   l o o p   o v e r   a   l i s t   o f   s o m e t h i n g� � � r     K b     I b     G b     C b     A	
	 b     = b     ; b     9 b     7 b     5 b     3 b     1 b     / b     - b     + b     )  b     '!"! b     %#$# b     #%&% b     !'(' b     )*) b     +,+ b     -.- b     /0/ b     121 b     343 b     565 b     787 b     9:9 b     ;<; b     =>= b     	?@? b     ABA b     CDC b     EFE 1     �g
�g 
quotF m    GG �HH  f i l e n a m eD 1    �f
�f 
quotB m    II �JJ  ,  @ 1    �e
�e 
quot> m   	 
KK �LL  o s _ v e r s i o n< 1    �d
�d 
quot: m    MM �NN  ,  8 1    �c
�c 
quot6 m    OO �PP  o t h e r _ d e s c4 1    �b
�b 
quot2 m    QQ �RR  ,  0 1    �a
�a 
quot. m    SS �TT  b u n d l e _ i d, 1    �`
�` 
quot* m    UU �VV  ,  ( 1     �_
�_ 
quot& m   ! "WW �XX  s h o r t _ v e r s i o n$ 1   # $�^
�^ 
quot" m   % &YY �ZZ  ,    1   ' (�]
�] 
quot m   ) *[[ �\\  v e r s i o n 1   + ,�\
�\ 
quot m   - .]] �^^  ,   1   / 0�[
�[ 
quot m   1 2__ �``  u u i d 1   3 4�Z
�Z 
quot m   5 6aa �bb  ,   1   7 8�Y
�Y 
quot m   9 :cc �dd , o t h e r _ e x p e c t e d _ v e r s i o n 1   ; <�X
�X 
quot
 m   = @ee �ff  ,   1   A B�W
�W 
quot m   C Fgg �hh  m i n _ o s _ v e r s i o n 1   G H�V
�V 
quot o      �U�U 0 infodata infoData  iji l  L L�T�S�R�T  �S  �R  j klk X   L �m�Qnm k   ` �oo pqp l  ` `�P�O�N�P  �O  �N  q rsr l  ` `�Mtu�M  t ! 	Build out the csv contents   u �vv 6 	 B u i l d   o u t   t h e   c s v   c o n t e n t ss wxw r   ` �yzy b   ` �{|{ b   ` �}~} b   ` �� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` ���� b   ` }��� b   ` {��� b   ` u��� b   ` s��� b   ` o��� b   ` m��� b   ` g��� b   ` e��� o   ` a�L�L 0 infodata infoData� o   a d�K
�K 
ret � 1   e f�J
�J 
quot� l  g l��I�H� n   g l��� o   h l�G�G 0 filename fileName� o   g h�F�F 0 mailinfo mailInfo�I  �H  � 1   m n�E
�E 
quot� m   o r�� ���  ,  � 1   s t�D
�D 
quot� l  u z��C�B� n   u z��� o   v z�A�A 0 	osversion 	osVersion� o   u v�@�@ 0 mailinfo mailInfo�C  �B  � 1   { |�?
�? 
quot� m   } ��� ���  ,  � 1   � ��>
�> 
quot� l  � ���=�<� n   � ���� o   � ��;�; $0 otherdescription otherDescription� o   � ��:�: 0 mailinfo mailInfo�=  �<  � 1   � ��9
�9 
quot� m   � ��� ���  ,  � 1   � ��8
�8 
quot� l  � ���7�6� n   � ���� o   � ��5�5 0 bundleid bundleID� o   � ��4�4 0 mailinfo mailInfo�7  �6  � 1   � ��3
�3 
quot� m   � ��� ���  ,  � 1   � ��2
�2 
quot� l  � ���1�0� n   � ���� o   � ��/�/ 0 shortversion shortVersion� o   � ��.�. 0 mailinfo mailInfo�1  �0  � 1   � ��-
�- 
quot� m   � ��� ���  ,  � l  � ���,�+� n   � ���� o   � ��*�* 0 versionnumber versionNumber� o   � ��)�) 0 mailinfo mailInfo�,  �+  � m   � ��� ���  ,  � 1   � ��(
�( 
quot� l  � ���'�&� n   � ���� o   � ��%�% 0 uuid  � o   � ��$�$ 0 mailinfo mailInfo�'  �&  � 1   � ��#
�# 
quot~ m   � ��� ���  ,  | l  � ���"�!� n   � ���� o   � �� �  "0 expectedversion expectedVersion� o   � ��� 0 mailinfo mailInfo�"  �!  z o      �� 0 infodata infoDatax ��� l  � �����  �  �  �  �Q 0 mailinfo mailInfon o   O P�� 0 thelist theListl ��� l  � �����  �  �  � ��� L   � ��� o   � ��� 0 infodata infoData� ��� l  � �����  �  �  �  � ��� l     ����  �  �  � ��� i   ! $��� I      ���� &0 convertlisttojson convertListtoJSON� ��� o      �
�
 0 thelist theList�  �  � k     ��� ��� l     �	���	  �  �  � ��� l     ����  � 9 3 use a repeat loop to loop over a list of something   � ��� f   u s e   a   r e p e a t   l o o p   t o   l o o p   o v e r   a   l i s t   o f   s o m e t h i n g� ��� r     ��� m     �� ���  {� o      �� 0 infodata infoData� ��� r    ��� m    ��  � o      �� 0 counter  � ��� l   ��� �  �  �   � ��� X    ������ k    �    l   ��������  ��  ��    l   ����   " 	Build out the json contents    � 8 	 B u i l d   o u t   t h e   j s o n   c o n t e n t s 	 r    

 m     �  , o      ���� 	0 comma  	  Z    )���� =    o    ���� 0 counter   m    ����   r   " % m   " # �   o      ���� 	0 comma  ��  ��    r   * � b   * � b   * � b   * � !  b   * �"#" b   * �$%$ b   * �&'& b   * �()( b   * �*+* b   * ,-, b   * }./. b   * y010 b   * s232 b   * o454 b   * m676 b   * i898 b   * c:;: b   * _<=< b   * ]>?> b   * Y@A@ b   * SBCB b   * ODED b   * MFGF b   * KHIH b   * GJKJ b   * ELML b   * CNON b   * APQP b   * =RSR b   * ;TUT b   * 9VWV b   * 7XYX b   * 5Z[Z b   * 1\]\ b   * /^_^ b   * -`a` o   * +���� 0 infodata infoDataa o   + ,���� 	0 comma  _ o   - .��
�� 
ret ] 1   / 0��
�� 
quot[ l  1 4b����b n   1 4cdc o   2 4���� 0 filename fileNamed o   1 2���� 0 mailinfo mailInfo��  ��  Y 1   5 6��
�� 
quotW m   7 8ee �ff  :   {U o   9 :��
�� 
ret S m   ; <gg �hh  " o s V e r s i o n " :   "Q l  = @i����i n   = @jkj o   > @���� 0 	osversion 	osVersionk o   = >���� 0 mailinfo mailInfo��  ��  O m   A Bll �mm  " ,M o   C D��
�� 
ret K m   E Fnn �oo * " o t h e r D e s c r i p t i o n " :   "I l  G Jp����p n   G Jqrq o   H J���� $0 otherdescription otherDescriptionr o   G H���� 0 mailinfo mailInfo��  ��  G m   K Lss �tt  " ,E o   M N��
�� 
ret C m   O Ruu �vv  " b u n d l e I D " :   "A l  S Xw����w n   S Xxyx o   T X���� 0 bundleid bundleIDy o   S T���� 0 mailinfo mailInfo��  ��  ? m   Y \zz �{{  " ,= o   ] ^��
�� 
ret ; m   _ b|| �}} " " s h o r t V e r s i o n " :   "9 l  c h~����~ n   c h� o   d h���� 0 shortversion shortVersion� o   c d���� 0 mailinfo mailInfo��  ��  7 m   i l�� ���  " ,5 o   m n��
�� 
ret 3 m   o r�� ���  " v e r s i o n " :  1 l  s x������ n   s x��� o   t x���� 0 versionnumber versionNumber� o   s t���� 0 mailinfo mailInfo��  ��  / m   y |�� ���  ,- o   } ~��
�� 
ret + m    ��� ���  " u u i d " :   ") l  � ������� n   � ���� o   � ����� 0 uuid  � o   � ����� 0 mailinfo mailInfo��  ��  ' m   � ��� ���  " ,% o   � ���
�� 
ret # m   � ��� ��� 0 " o t h e r E x p e c t e d V e r s i o n " :  ! l  � ������� n   � ���� o   � ����� "0 expectedversion expectedVersion� o   � ����� 0 mailinfo mailInfo��  ��   o   � ���
�� 
ret  m   � ��� ���  } o      ���� 0 infodata infoData ��� l  � ���������  ��  ��  � ��� l  � �������  �  	Increment our counter   � ��� , 	 I n c r e m e n t   o u r   c o u n t e r� ���� r   � ���� [   � ���� o   � ����� 0 counter  � m   � ����� � o      ���� 0 counter  ��  �� 0 mailinfo mailInfo� o    ���� 0 thelist theList� ��� l  � ���������  ��  ��  � ��� r   � ���� b   � ���� b   � ���� o   � ����� 0 infodata infoData� o   � ���
�� 
ret � m   � ��� ���  }� o      ���� 0 infodata infoData� ��� l  � ���������  ��  ��  � ��� L   � ��� o   � ����� 0 infodata infoData� ���� l  � ���������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   % (��� I      �������  0 checkexistence checkExistence� ���� o      ���� *0 fileorfoldertocheck fileOrFolderToCheck��  ��  � Q     ���� k    �� ��� 4    ���
�� 
alis� o    ���� *0 fileorfoldertocheck fileOrFolderToCheck� ���� L   	 �� m   	 
��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� boovfals� ��� l     ��������  ��  ��  � ���� i   ) ,��� I      ������� 0 
deletefile 
deleteFile� ���� o      ���� 0 thefilepath theFilePath��  ��  � Q     ����� k    �� ��� r    ��� n    	��� 1    	��
�� 
psxp� 4    ���
�� 
file� o    ���� 0 thefilepath theFilePath� o      ���� 0 p  � ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  r m  � n    ��� 1    ��
�� 
strq� o    ���� 0 p  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��       ������� �����������  � ��������������������~�}�� 0 outputasjson outputAsJSON�� 0 outputascsv outputAsCSV��  0 outputfilename outputFileName
�� .aevtoappnull  �   � ****�� 20 buildinfolistfromfolder buildInfoListfromFolder�� ,0 filteruniquemailinfo FilterUniqueMailInfo�� 20 filteruniquemessageinfo FilterUniqueMessageInfo�� *0 sortbyversionnumber sortByVersionNumber�� $0 convertlisttocsv convertListtoCSV� &0 convertlisttojson convertListtoJSON�~  0 checkexistence checkExistence�} 0 
deletefile 
deleteFile
�� boovfals
�� boovfals� �| �{�z���y
�| .aevtoappnull  �   � ****�{  �z  �  �  ;�x�w�v�u�t�s�r�q�p�o�n�m�l ��k�j�i�h�g�f�e�d�c�b�a�` �
�x .earsffdralis        afdr�w 0 
scriptpath 
scriptPath
�v 
ctnr�u 0 
infofolder 
infoFolder�t 20 buildinfolistfromfolder buildInfoListfromFolder�s 0 infolist infoList�r ,0 filteruniquemailinfo FilterUniqueMailInfo�q  0 uniquemailinfo uniqueMailInfo�p 20 filteruniquemessageinfo FilterUniqueMessageInfo�o &0 uniquemessageinfo uniqueMessageInfo�n &0 convertlisttojson convertListtoJSON�m  0 outputcontents outputContents
�l 
TEXT�k 0 outfilepath outFilePath�j  0 checkexistence checkExistence�i 0 
deletefile 
deleteFile
�h 
perm
�g .rdwropenshor       file�f 0 thefile theFile
�e 
refn
�d .rdwrwritnull���     ****
�c .rdwrclosnull���     ****�b  �a  �` $0 convertlisttocsv convertListtoCSV�y � )j E�O��,E�UO*�k+ E�O*�k+ E�O*�k+ 	E�Ob    o*�k+ E�O��&b  %�%E�O)�k+  )�k+ Y hO &�a el E` O�a _ l O_ j W X   _ j W X  hY hOb   q*�k+ E�O��&b  %a %E�O)�k+  )�k+ Y hO &�a el E` O�a _ l O_ j W X   _ j W X  hY hOP� �_ ��^�]���\�_ 20 buildinfolistfromfolder buildInfoListfromFolder�^ �[��[ �  �Z�Z 0 theinfofolder theInfoFolder�]  � �Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�Y 0 theinfofolder theInfoFolder�X 0 	infofiles 	infoFiles�W 
0 tid TID�V 0 infolist infoList�U 0 afile aFile�T 0 filename fileName�S 0 	osversion 	osVersion�R 0 infotype infoType�Q $0 otherdescription otherDescription�P  0 executablename executableName�O 0 bundleid bundleID�N 0 shortversion shortVersion�M 0 versionnumber versionNumber�L 0 uuid  �K "0 expectedversion expectedVersion�J $0 minimumosversion minimumOSVersion� 3�I��H�G�F�E�D�C�B�A�@N�?r��>�=��<����;������ ',;@QV[�:�9�8�7�6�5�4�3�2�1
�I 
file�  
�H 
nmxt
�G 
alst
�F 
ascr
�E 
txdl
�D 
list
�C 
kocl
�B 
cobj
�A .corecnte****       ****
�@ 
pnam
�? 
citm
�> 
quot
�= 
psxp
�< .sysoexecTEXT���     TEXT
�; .ascrcmnt****      � ****�: 0 filename fileName�9 0 	osversion 	osVersion�8 $0 otherdescription otherDescription�7 0 bundleid bundleID�6 0 shortversion shortVersion�5 0 versionnumber versionNumber�4 0 uuid  �3 "0 expectedversion expectedVersion�2 
�1 
reco�\�� ��-�[�,\Z�81�&E�UO��,E�Ojv�&E�O��[��l kh � ��,E�UO���,FO��k/E�O��l/E�O��-j m ��m/E�Y �E�O���,FOa _ %�a ,%_ %a %j E�O�� a �%a %�%a %j Ya _ %�a ,%_ %a %j E�Oa _ %�a ,%_ %a %j E�Oa _ %�a ,%_ %a %j E�Oa _ %�a ,%_ %a  %j E�O�a !  <a "_ %�a ,%_ %a #%j E�Oa $_ %�a ,%_ %a %%j E�Y #a &_ %�a ,%_ %a '%j E�Oa (E�Oa )�a *�a +�a ,�a -�a .�a /�a 0�a 1a 2&�6FOPOP[OY��O�� �0��/�.���-�0 ,0 filteruniquemailinfo FilterUniqueMailInfo�/ �,��, �  �+�+ 0 thelist theList�.  � 
�*�)�(�'�&�%�$�#�"�!�* 0 thelist theList�) 0 versionlist versionList�( 0 startos startOS�'  0 previousrecord previousRecord�& 0 
previousos 
previousOS�% ,0 previousshortversion previousShortVersion�$ 0 previousuuid previousUUID�# 0 arecord aRecord�" 0 	newrecord 	newRecord�! 0 
lastrecord 
lastRecord� �� ������������������)���>�����
�  .ascrcmnt****      � ****� 0 uuid  
� 
reco
� 
kocl
� 
cobj
� .corecnte****       ****� 0 bundleid bundleID� 0 	osversion 	osVersion� 0 shortversion shortVersion� 0 startos startOS� 0 endos endOS� 0 type  �  0 displayversion displayVersion� 

� 
ret �-=�j OjvE�O�E�O��l�&E�O�E�O�E�O�E�O Ԡ[��l kh ��,�  ���,%a %�a ,%a %��,%j O�a   
��,E�Y hO��,��, c��,a  O�a   
��,E�Y hOa �a ��,a a a �a ,��,a E�O_ j O�j O_ j Y hO��,E�Y hO�E�O��,E�O��,E�O�a ,E�OPY h[OY�:Oa �a ��,a a a �a ,��,a E�O_ j O�j O_ j Oa j OP� �������� 20 filteruniquemessageinfo FilterUniqueMessageInfo� ��� �  �� 0 thelist theList�  � �� 0 thelist theList�  � h� �
��	�����
 *0 sortbyversionnumber sortByVersionNumber�	 ��� �  �� 0 thelist theList�  � ����� � 0 thelist theList� 0 i  � 0 j  � 0 mylist myList�  0 temp  � ��������
�� .corecnte****       ****
�� 
cobj�� 0 versionnumber versionNumber
�� .ascrcmnt****      � ****� _ Zk�j  kkh  E�k�j  kh ��/�,��/�, ��/E�O��/��/FO���/FY hO�j [OY��[OY��O�� ������������� $0 convertlisttocsv convertListtoCSV�� ����� �  ���� 0 thelist theList��  � �������� 0 thelist theList�� 0 infodata infoData�� 0 mailinfo mailInfo� %��GIKMOQSUWY[]_aceg�������������������������������
�� 
quot
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ret �� 0 filename fileName�� 0 	osversion 	osVersion�� $0 otherdescription otherDescription�� 0 bundleid bundleID�� 0 shortversion shortVersion�� 0 versionnumber versionNumber�� 0 uuid  �� "0 expectedversion expectedVersion�� ���%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%a %�%a %�%E�O ��[a a l kh �_ %�%�a ,%�%a %�%�a ,%�%a %�%�a ,%�%a %�%�a ,%�%a %�%�a ,%�%a %�a  ,%a !%�%�a ",%�%a #%�a $,%E�OP[OY��O�OP� ������������� &0 convertlisttojson convertListtoJSON�� ����� �  ���� 0 thelist theList��  � ������������ 0 thelist theList�� 0 infodata infoData�� 0 counter  �� 0 mailinfo mailInfo�� 	0 comma  �  �������������eg��ln��su��z|����������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ret 
�� 
quot�� 0 filename fileName�� 0 	osversion 	osVersion�� $0 otherdescription otherDescription�� 0 bundleid bundleID�� 0 shortversion shortVersion�� 0 versionnumber versionNumber�� 0 uuid  �� "0 expectedversion expectedVersion�� ��E�OjE�O ��[��l kh �E�O�j  �E�Y hO��%�%�%��,%�%�%�%�%��,%�%�%�%��,%�%�%a %�a ,%a %�%a %�a ,%a %�%a %�a ,%a %�%a %�a ,%a %�%a %�a ,%�%a %E�O�kE�[OY�kO��%a %E�O�OP� ������� ����  0 checkexistence checkExistence�� ����   ���� *0 fileorfoldertocheck fileOrFolderToCheck��    ���� *0 fileorfoldertocheck fileOrFolderToCheck ������
�� 
alis��  ��  ��  *�/EOeW 	X  f� ����������� 0 
deletefile 
deleteFile�� ����   ���� 0 thefilepath theFilePath��   ������ 0 thefilepath theFilePath�� 0 p   �������������
�� 
file
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  ��  *�/�,E�O��,%j W X  h ascr  ��ޭ