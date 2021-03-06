  - -  
 - -   H o s t :   l o c a l h o s t         D a t a b a s e :   m y d b  
 - -   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 - -   S e r v e r   v e r s i o n 	 5 . 7 . 1 1  
  
 / * ! 4 0 1 0 1   S E T   @ O L D _ C H A R A C T E R _ S E T _ C L I E N T = @ @ C H A R A C T E R _ S E T _ C L I E N T   * / ;  
 / * ! 4 0 1 0 1   S E T   @ O L D _ C H A R A C T E R _ S E T _ R E S U L T S = @ @ C H A R A C T E R _ S E T _ R E S U L T S   * / ;  
 / * ! 4 0 1 0 1   S E T   @ O L D _ C O L L A T I O N _ C O N N E C T I O N = @ @ C O L L A T I O N _ C O N N E C T I O N   * / ;  
 / * ! 4 0 1 0 1   S E T   N A M E S   u t f 8   * / ;  
 / * ! 4 0 1 0 3   S E T   @ O L D _ T I M E _ Z O N E = @ @ T I M E _ Z O N E   * / ;  
 / * ! 4 0 1 0 3   S E T   T I M E _ Z O N E = ' + 0 0 : 0 0 '   * / ;  
 / * ! 4 0 0 1 4   S E T   @ O L D _ U N I Q U E _ C H E C K S = @ @ U N I Q U E _ C H E C K S ,   U N I Q U E _ C H E C K S = 0   * / ;  
 / * ! 4 0 0 1 4   S E T   @ O L D _ F O R E I G N _ K E Y _ C H E C K S = @ @ F O R E I G N _ K E Y _ C H E C K S ,   F O R E I G N _ K E Y _ C H E C K S = 0   * / ;  
 / * ! 4 0 1 0 1   S E T   @ O L D _ S Q L _ M O D E = @ @ S Q L _ M O D E ,   S Q L _ M O D E = ' N O _ A U T O _ V A L U E _ O N _ Z E R O '   * / ;  
 / * ! 4 0 1 1 1   S E T   @ O L D _ S Q L _ N O T E S = @ @ S Q L _ N O T E S ,   S Q L _ N O T E S = 0   * / ;  
  
 - -  
 - -   C u r r e n t   D a t a b a s e :   ` m y d b `  
 - -  
  
 C R E A T E   D A T A B A S E   / * ! 3 2 3 1 2   I F   N O T   E X I S T S * /   ` m y d b `   / * ! 4 0 1 0 0   D E F A U L T   C H A R A C T E R   S E T   u t f 8   * / ;  
  
 U S E   ` m y d b ` ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` g e n r e `  
 - -  
  
 D R O P   T A B L E   I F   E X I S T S   ` g e n r e ` ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E   ` g e n r e `   (  
     ` i d G e n r e `   i n t ( 1 1 )   N O T   N U L L ,  
     ` n a m e `   v a r c h a r ( 3 0 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   ( ` i d G e n r e ` , ` n a m e ` )  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` g e n r e `  
 - -  
  
 L O C K   T A B L E S   ` g e n r e `   W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` g e n r e `   D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O   ` g e n r e `   V A L U E S   ( 1 , ' H o r r o r ' ) , ( 2 , ' C o m e d y ' ) , ( 3 , ' S c i e n c e   F i c t i o n ' ) , ( 4 , ' D o c u m e n t a r y ' ) , ( 5 , ' F a n t a s y ' ) , ( 6 , ' D r a m a ' ) , ( 7 , ' T h r i l l e r ' ) , ( 8 , ' M y s t e r ' ) , ( 9 , ' P l a y ' ) , ( 1 0 , ' R o m - c o m ' ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` g e n r e `   E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` h i s t o r y `  
 - -  
  
 D R O P   T A B L E   I F   E X I S T S   ` h i s t o r y ` ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E   ` h i s t o r y `   (  
     ` i d h i s t o r y `   i n t ( 1 1 )   N O T   N U L L ,  
     ` p e r c e n t a g e `   i n t ( 1 1 )   N O T   N U L L ,  
     ` i d U s e r `   i n t ( 1 1 )   N O T   N U L L ,  
     ` i d M o v i e `   i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   ( ` i d h i s t o r y ` , ` i d U s e r ` , ` i d M o v i e ` ) ,  
     K E Y   ` f k _ h i s t o r y _ U s e r 1 _ i d x `   ( ` i d U s e r ` ) ,  
     K E Y   ` f k _ h i s t o r y _ M o v i e s 1 _ i d x `   ( ` i d M o v i e ` ) ,  
     C O N S T R A I N T   ` f k _ h i s t o r y _ M o v i e s 1 `   F O R E I G N   K E Y   ( ` i d M o v i e ` )   R E F E R E N C E S   ` m o v i e s `   ( ` i d M o v i e s ` )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T   ` f k _ h i s t o r y _ U s e r 1 `   F O R E I G N   K E Y   ( ` i d U s e r ` )   R E F E R E N C E S   ` u s e r `   ( ` i d U s e r ` )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` h i s t o r y `  
 - -  
  
 L O C K   T A B L E S   ` h i s t o r y `   W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` h i s t o r y `   D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O   ` h i s t o r y `   V A L U E S   ( 1 , 8 0 , 1 , 1 ) , ( 2 , 7 0 , 1 , 6 ) , ( 3 , 8 8 , 2 , 5 ) , ( 4 , 5 9 , 2 , 7 ) , ( 5 , 6 4 , 3 , 4 ) , ( 6 , 2 1 , 4 , 8 ) , ( 7 , 1 0 0 , 1 4 , 1 1 ) , ( 8 , 4 5 , 5 , 2 ) , ( 9 , 3 3 , 1 9 , 9 ) , ( 1 0 , 9 7 , 1 3 , 3 ) , ( 1 1 , 9 0 , 9 , 1 3 ) , ( 1 2 , 3 5 , 1 3 , 2 ) , ( 1 3 , 2 5 , 1 3 , 4 ) , ( 1 4 , 7 5 , 1 3 , 9 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` h i s t o r y `   E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` m o v i e s `  
 - -  
  
 D R O P   T A B L E   I F   E X I S T S   ` m o v i e s ` ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E   ` m o v i e s `   (  
     ` i d M o v i e s `   i n t ( 1 1 )   N O T   N U L L ,  
     ` t i t l e `   v a r c h a r ( 4 5 )   N O T   N U L L ,  
     ` r e l e a s e _ y e a r `   i n t ( 4 )   N O T   N U L L ,  
     ` i d G e n r e `   i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   ( ` i d M o v i e s ` , ` t i t l e ` , ` i d G e n r e ` ) ,  
     K E Y   ` f k _ M o v i e s _ G e n r e 1 _ i d x `   ( ` i d G e n r e ` ) ,  
     C O N S T R A I N T   ` f k _ M o v i e s _ G e n r e 1 `   F O R E I G N   K E Y   ( ` i d G e n r e ` )   R E F E R E N C E S   ` g e n r e `   ( ` i d G e n r e ` )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` m o v i e s `  
 - -  
  
 L O C K   T A B L E S   ` m o v i e s `   W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` m o v i e s `   D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O   ` m o v i e s `   V A L U E S   ( 1 , ' H a r r y   P o t t e r   2 ' , 2 0 0 2 , 5 ) , ( 2 , ' F r e d d y   K r e u g e r ' , 1 9 8 2 , 1 ) , ( 3 , ' K n o c k e d   U p ' , 2 0 0 9 , 1 0 ) , ( 4 , ' M a k i n g   a   M u r d e r e r ' , 2 0 1 5 , 4 ) , ( 5 , ' S t a r   T r e k ' , 2 0 1 3 , 3 ) , ( 6 , ' H a r r y   P o t t e r   1 ' , 2 0 0 1 , 5 ) , ( 7 , ' M a s s   E f f e c t   t h e   M o v i e ' , 2 0 2 0 , 3 ) , ( 8 , ' A s s a s s i n \ ' s   C r e e d   t h e   M o v i e ' , 2 0 1 3 , 5 ) , ( 9 , ' T h e   E n d ' , 2 0 3 4 , 2 ) , ( 1 0 , ' S i c k o ' , 2 0 3 3 , 4 ) , ( 1 1 , ' S n a k e s   o n   a   P l a n e ' , 2 0 0 3 , 7 ) , ( 1 2 , ' A   W i n d o w   T e a r s ' , 2 0 1 1 , 6 ) , ( 1 3 , ' R o m e o   a n d   J u l i e t ' , 1 6 7 8 , 9 ) , ( 1 4 , ' H a m l e t ' , 1 6 7 9 , 9 ) , ( 1 5 , ' T a m i n g   o f   t h e   S h r e w ' , 1 7 8 9 , 9 ) , ( 1 6 , ' R e n t ' , 1 9 9 3 , 9 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` m o v i e s `   E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` r a t i n g s `  
 - -  
  
 D R O P   T A B L E   I F   E X I S T S   ` r a t i n g s ` ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E   ` r a t i n g s `   (  
     ` i d F a v o r i t e s `   i n t ( 1 1 )   N O T   N U L L ,  
     ` r a t i n g `   v a r c h a r ( 4 5 )   N O T   N U L L ,  
     ` i d U s e r `   i n t ( 1 1 )   N O T   N U L L ,  
     ` i d M o v i e s `   i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   ( ` i d F a v o r i t e s ` , ` i d U s e r ` , ` i d M o v i e s ` ) ,  
     K E Y   ` f k _ f a v o r i t e s _ U s e r 1 _ i d x `   ( ` i d U s e r ` ) ,  
     K E Y   ` f k _ r a t i n g s _ M o v i e s 1 _ i d x `   ( ` i d M o v i e s ` ) ,  
     C O N S T R A I N T   ` f k _ f a v o r i t e s _ U s e r 1 `   F O R E I G N   K E Y   ( ` i d U s e r ` )   R E F E R E N C E S   ` u s e r `   ( ` i d U s e r ` )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T   ` f k _ r a t i n g s _ M o v i e s 1 `   F O R E I G N   K E Y   ( ` i d M o v i e s ` )   R E F E R E N C E S   ` m o v i e s `   ( ` i d M o v i e s ` )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` r a t i n g s `  
 - -  
  
 L O C K   T A B L E S   ` r a t i n g s `   W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` r a t i n g s `   D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O   ` r a t i n g s `   V A L U E S   ( 1 , ' 4 ' , 1 , 1 ) , ( 2 , ' 5 ' , 1 , 6 ) , ( 3 , ' 4 ' , 2 , 5 ) , ( 4 , ' 3 ' , 2 , 7 ) , ( 5 , ' 3 ' , 3 , 4 ) , ( 6 , ' 1 ' , 4 , 8 ) , ( 7 , ' 5 ' , 1 4 , 1 1 ) , ( 8 , ' 2 ' , 5 , 2 ) , ( 9 , ' 1 ' , 1 9 , 9 ) , ( 1 0 , ' 1 ' , 1 3 , 3 ) , ( 1 1 , ' 5 ' , 1 3 , 1 3 ) , ( 1 2 , ' 2 ' , 1 3 , 2 ) , ( 1 3 , ' 0 ' , 1 3 , 3 ) , ( 1 4 , ' 4 ' , 1 3 , 9 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` r a t i n g s `   E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` u s e r `  
 - -  
  
 D R O P   T A B L E   I F   E X I S T S   ` u s e r ` ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E   ` u s e r `   (  
     ` i d U s e r `   i n t ( 1 1 )   N O T   N U L L ,  
     ` n a m e `   v a r c h a r ( 3 0 )   N O T   N U L L ,  
     ` e m a i l `   v a r c h a r ( 4 5 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   ( ` i d U s e r ` , ` n a m e ` , ` e m a i l ` )  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` u s e r `  
 - -  
  
 L O C K   T A B L E S   ` u s e r `   W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` u s e r `   D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O   ` u s e r `   V A L U E S   ( 1 , ' R a f a e l ' , ' r a f @ g m a i l . c o m ' ) , ( 2 , ' T a r a ' , ' t a r a @ g m a i l . c o m ' ) , ( 3 , ' J a y s o n ' , ' j a y @ g m a i l . c o m ' ) , ( 4 , ' B o b ' , ' b o b @ g m a i l . c o m ' ) , ( 5 , ' S a l l y ' , ' s a l l y @ g m a i l . c o m ' ) , ( 6 , ' M a r x ' , ' m a r x @ g m a i l . c o m ' ) , ( 7 , ' S u s a n ' , ' s u s a n @ g m a i l . c o m ' ) , ( 8 , ' T o o l o ' , ' t o o l o @ g m a i l . c o m ' ) , ( 9 , ' O o m f o o f o o ' , ' o m f o o f o o @ g m a i l . c o m ' ) , ( 1 0 , ' K a l ' , ' k a l @ g m a i l . c o m ' ) , ( 1 1 , ' R a g n a r ' , ' r a g n a r @ v i k i n g s . c o m ' ) , ( 1 2 , ' J e s u s ' , ' p a p a g o d @ g m a i l . c o m ' ) , ( 1 3 , ' C r u z ' , ' c r u z @ g m a i l . c o m ' ) , ( 1 4 , ' D a n ' , ' d a n @ g m a i l . c o m ' ) , ( 1 5 , ' R a t ' , ' r a t @ g m a i l . c o m ' ) , ( 1 6 , ' D o g ' , ' d o g @ g m a i l . c o m ' ) , ( 1 7 , ' R a b b i t ' , ' r a b b i t @ g m a i l . c o m ' ) , ( 1 8 , ' S h e p a r d ' , ' s h e p a r d @ g m a i l . c o m ' ) , ( 1 9 , ' A l i e n ' , ' a l i e n @ g m a i l . c o m ' ) , ( 2 0 , ' B u f f a l o ' , ' b u f f a l o @ g m a i l . c o m ' ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` u s e r `   E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` u s e r _ t o _ g e n r e `  
 - -  
  
 D R O P   T A B L E   I F   E X I S T S   ` u s e r _ t o _ g e n r e ` ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E   ` u s e r _ t o _ g e n r e `   (  
     ` i d U s e r `   i n t ( 1 1 )   N O T   N U L L ,  
     ` i d G e n r e `   i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   ( ` i d U s e r ` , ` i d G e n r e ` ) ,  
     K E Y   ` f k _ U s e r _ h a s _ G e n r e _ G e n r e 1 _ i d x `   ( ` i d G e n r e ` ) ,  
     K E Y   ` f k _ U s e r _ h a s _ G e n r e _ U s e r 1 _ i d x `   ( ` i d U s e r ` ) ,  
     C O N S T R A I N T   ` f k _ U s e r _ h a s _ G e n r e _ G e n r e 1 `   F O R E I G N   K E Y   ( ` i d G e n r e ` )   R E F E R E N C E S   ` g e n r e `   ( ` i d G e n r e ` )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T   ` f k _ U s e r _ h a s _ G e n r e _ U s e r 1 `   F O R E I G N   K E Y   ( ` i d U s e r ` )   R E F E R E N C E S   ` u s e r `   ( ` i d U s e r ` )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` u s e r _ t o _ g e n r e `  
 - -  
  
 L O C K   T A B L E S   ` u s e r _ t o _ g e n r e `   W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` u s e r _ t o _ g e n r e `   D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O   ` u s e r _ t o _ g e n r e `   V A L U E S   ( 1 , 1 ) , ( 6 , 1 ) , ( 1 3 , 2 ) , ( 2 , 3 ) , ( 1 4 , 3 ) , ( 1 , 5 ) , ( 2 , 5 ) , ( 2 , 7 ) , ( 1 4 , 7 ) , ( 5 , 8 ) , ( 1 3 , 9 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` u s e r _ t o _ g e n r e `   E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
 / * ! 4 0 1 0 3   S E T   T I M E _ Z O N E = @ O L D _ T I M E _ Z O N E   * / ;  
  
 / * ! 4 0 1 0 1   S E T   S Q L _ M O D E = @ O L D _ S Q L _ M O D E   * / ;  
 / * ! 4 0 0 1 4   S E T   F O R E I G N _ K E Y _ C H E C K S = @ O L D _ F O R E I G N _ K E Y _ C H E C K S   * / ;  
 / * ! 4 0 0 1 4   S E T   U N I Q U E _ C H E C K S = @ O L D _ U N I Q U E _ C H E C K S   * / ;  
 / * ! 4 0 1 0 1   S E T   C H A R A C T E R _ S E T _ C L I E N T = @ O L D _ C H A R A C T E R _ S E T _ C L I E N T   * / ;  
 / * ! 4 0 1 0 1   S E T   C H A R A C T E R _ S E T _ R E S U L T S = @ O L D _ C H A R A C T E R _ S E T _ R E S U L T S   * / ;  
 / * ! 4 0 1 0 1   S E T   C O L L A T I O N _ C O N N E C T I O N = @ O L D _ C O L L A T I O N _ C O N N E C T I O N   * / ;  
 / * ! 4 0 1 1 1   S E T   S Q L _ N O T E S = @ O L D _ S Q L _ N O T E S   * / ;  
  
 - -   D u m p   c o m p l e t e d   o n   2 0 1 6 - 0 2 - 2 0     1 : 0 5 : 1 1  
 
