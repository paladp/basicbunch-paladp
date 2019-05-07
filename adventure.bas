1 REM basic text adventure
10 PRINT "you wake up in a cold stone room, there are three doors"
15 READ A$, B$, C$, D$, E$, F$, G$, H$
16 health%=5
20 PRINT A$
30 PRINT B$
40 PRINT C$
41 v1%=0
42 v2%=0
43 visit3%=0
44 c1%=0
45 IF health%<0 THEN dead%=1
46 IF dead%=1 THEN PRINT "you have died!"
47 IF dead%=1 THEN END
50 INPUT "which door do you go into? 1,2, or 3"; c1%
60 IF c1%=1 AND v1%=0 THEN GOTO 500
70 IF c1%=2 AND v2%=0 THEN GOTO 591
80 IF c1%=3 AND v3%=0 THEN GOTO 700
81 PRINT D$
90 GOTO 44
490 REM user has entered door number 1
500 PRINT "you find a sword and take it with you."
510 PRINT H$
520 armed%=1
521 v1%=1
530 GOTO 44
590 REM user has entered door number2
591 IF nr%=1 THEN PRINT G$, H$
592 IF nr%=1 THEN GOTO 611
600 PRINT "there is a giant rat in this room!"
601 IF armed%=1 THEN PRINT E$
602 IF armed%=0 THEN GOTO 605
603 nr%=1
604 GOTO 611
605 PRINT F$
606 da1% = INT(RND(1)*5)
607 PRINT "you took ", da1%, " damage"
608 oldhealth% = health%
609 health% = oldhealth% - da1%
610 PRINT "your health is now", health%
611 GOTO 44
690 REM user has entered door number3
700 PRINT "there is an old man in torn armor, chained to the wall"
701 IF health% < 5 THEN GOTO 703
702 IF health%=5 THEN GOTO 706
703 PRINT "the old man speaks, and you feel a warm sensation"
704 health% = 5
705 PRINT "your health is now ", health%
706 PRINT "you can look around for a key(1), or leave the man(2)"
707 IF armed%=1 THEN PRINT "or you can kill him(3)"
708 INPUT "what do you do?"; c2%
709 IF c2% = 1 THEN GOTO 712
710 IF c2% = 2 THEN GOTO 44
711 IF c2% = 3 THEN GOTO 716
712 PRINT "you find a key and release him."
713 PRINT "there is a hidden crawl space behind him."
714 PRINT "the old man gives you his blessing, and you continue on..."
715 GOTO 801
716 PRINT "you end his life, and remove his body from the wall."
717 PRINT "you take his belongings, and find a crawl space behind him on the wall."
718 PRINT "you crawl through, and continue..."
720 GOTO 803
800 REM part II!
801 bl1% = 1
802 GOTO 805
803 health% = 15
804 GOTO 805
805 POKE 198,0: WAIT 198,1
806 PRINT CHR$(147)
807 POKE 53281, 14
808 POKE 646, 1
809 PRINT "as you emerge on the other side you find..."
810 rm1% = INT(RND(1)*2)
811 IF rm1% = 1 THEN GOTO 851
812 IF rm1% = 0 THEN GOTO 875
850 REM First possibility
851 PRINT "a shrine to a forgotten god"
852 IF bl1% = 1 THEN GOTO 854
853 GOTO 858
854 PRINT "you feel a familiar presence, and the room becomes warm"
855 PRINT "you see a bright flash of light, and when you open your eyes"
856 PRINT "you find yourself in small village. congratulations! you escaped!"
857 END
858 PRINT "you feel an angry presence, and your sword animates itself!"
859 PRINT "unable to defend yourself, you die a quick and painless death"
860 END
875 REM Second possibility
876 nm1% = INT(RND(1)*2 + 1)
877 PRINT nm1%, " giant snakes!"
878 IF armed% = 0 THEN PRINT "you are unarmed and die!" : END
890 FOR X=1 TO nm1%
891 d2% = 4
892 oldhealth% = health%
893 health% = oldhealth% - d2%
894 PRINT "you slay a snake but take ", d2%, " damage": PRINT "health is" , health%
895 IF health% <= 0 THEN GOTO 901
896 NEXT X
897 PRINT "you have cleared the room, and find a door to the outside world"
898 PRINT "congratulations!"
899 END
900 REM No health!
901 PRINT "you fall to your wounds and die!"
999999 REM DATA
1000000 DATA "door one is made of wood and no light can be seen under the door"
1000001 DATA "door two is made of wood and there is light under the door"
1000002 DATA "door three is made of metal, and you can hear faint scratching"
1000003 DATA "you have already visited this room, there is nothing else to find"
1000004 DATA "you slay the rat with your sword! you return to the main room"
1000005 DATA "the rat jumps at you and takes a bite, and you flee!"
1000006 DATA "the dead body of the giant rat lies on the floor"
1000007 DATA "you return to the room you woke up in..."
