'ELIZA.BAS
'------------------------------------------------------
    CLS : KEY OFF: SCREEN 0, 0, 0: WIDTH 80
    PRINT
    CLEAR 2000
    REM  -----INITIALIZATION-----
    DIM S(36), R(38), N(36)
    N1 = 36: N2 = 14: N3 = 112
    FOR X = 1 TO N1 + N2 + N3: READ Z$: NEXT X: REM SAME AS RESTORE
    FOR X = 1 TO N1
    READ S(X), L: R(X) = S(X): N(X) = S(X) + L - 1
    NEXT X
    X$ = "HI!  I'M YOUR COMPUTERIZED PSYCHIATRIST.  WHAT'S YOUR PROBLEM?"
    GOSUB 2140
130 REM
    REM    -----USER INPUT SECTION-----
    a$ = "": LINE INPUT "", a$
    a$ = UCASE$(a$)
    IF a$ = "QUIT" THEN END
    PRINT : I$ = a$: I$ = " " + I$ + " "
    REM  GET RID OF APOSTROPHES
    FOR L = 1 TO LEN(I$)
280 IF MID$(I$, L, 1) = "'" THEN I$ = LEFT$(I$, L - 1) + RIGHT$(I$, LEN(I$) - L): GOTO 280
    IF L + 4 <= LEN(I$) THEN IF MID$(I$, L, 4) = "SHUT" THEN END
    NEXT L
    IF I$ = P$ THEN X$ = "PLEASE DON'T REPEAT YOURSELF!": GOSUB 2140: GOTO 130
    REM
    REM    -----FIND KEYWORD IN I$----
    REM
    RESTORE
    S = 0
    FOR K = 1 TO N1
    READ K$
    IF S > 0 THEN 430
    FOR L = 1 TO LEN(I$) - LEN(K$) + 1
    IF MID$(I$, L, LEN(K$)) = K$ THEN S = K: T = L: F$ = K$
    NEXT L
430 NEXT K
    IF S > 0 THEN K = S: L = T: GOTO 470
    K = 36: GOTO 680: REM  WE DIDN'T FIND ANY KEYWORDS
    REM
470 REM     TAKE PART OF THE STRING AND CONJUGATE IT
    REM     USING THE LIST OF STRINGS TO BE SWAPPED
    REM
    RESTORE: FOR X = 1 TO N1: READ Z$: NEXT X: REM SKIP OVER KEYWORDS
    C$ = " " + RIGHT$(I$, LEN(I$) - LEN(F$) - L + 1)
    FOR X = 1 TO N2 / 2
    READ S$, R$
    FOR L = 1 TO LEN(C$)
    IF L + LEN(S$) > LEN(C$) THEN 600
    IF MID$(C$, L, LEN(S$)) <> S$ THEN 600
    C$ = LEFT$(C$, L - 1) + R$ + RIGHT$(C$, LEN(C$) - L - LEN(S$) + 1)
    L = L + LEN(R$)
    GOTO 640
600 IF L + LEN(R$) > LEN(C$) THEN 640
    IF MID$(C$, L, LEN(R$)) <> R$ THEN 640
    C$ = LEFT$(C$, L - 1) + S$ + RIGHT$(C$, LEN(C$) - L - LEN(R$) + 1)
    L = L + LEN(S$)
640 NEXT L
    NEXT X
    IF MID$(C$, 2, 1) = " " THEN C$ = RIGHT$(C$, LEN(C$) - 1): REM ONLY ONESPACE
    REM
680 REM     NOW USING THE KEYWORD NUMBER (K) GET REPLY
    REM
    RESTORE: FOR X = 1 TO N1 + N2: READ Z$: NEXT X
    FOR X = 1 TO R(K): READ F$: NEXT X: REM   READ RIGHT REPLY
    R(K) = R(K) + 1: IF R(K) > N(K) THEN R(K) = S(K)
    IF RIGHT$(F$, 1) <> "*" THEN X$ = F$: P$ = I$: GOSUB 2140: GOTO 130
    X$ = LEFT$(F$, LEN(F$) - 1) + C$: GOSUB 2140
    P$ = I$: GOTO 130
    REM
    REM   ====PROGARAM DATA FOLLOWS=====
    REM
    REM   KEYWORDS
    REM
    DATA "CAN YOU","CAN I","YOU ARE","YOURE","I DONT","I FEEL"
    DATA "WHY DONT YOU","WHY CANT I","ARE YOU","I CANT","I AM"," IM"
    DATA "YOU","I WANT","WHAT","HOW","WHO","WHERE","WHEN","WHY"
    DATA "NAME","CAUSE","SORRY","DREAM","HELLO","HI","MAYBE"
    DATA "NO","YOUR","ALWAYS","THINK","ALIKE","YES","FRIEND"
    DATA "COMPUTER","NOKEYFOUND"
    REM
    REM    STRING DATA FOR CONJUGATIONS
    REM
    DATA "ARE","AM","WERE","WAS","I ","ME","YOUR","MY"
    DATA "I'VE","YOU'VE","I'M","YOU'RE","I ","YOU"
    REM
    REM   REPLIES
    REM
    DATA "DON'T YOU BELIEVE THAT I CAN*"
    DATA "PERHAPS YOU WOULD LIKE TO BE ABLE TO*"
    DATA "YOU WANT ME TO BE ABLE TO*"
    DATA "PERHAPS YOU DON'T WANT TO*"
    DATA "DO YOU WANT TO BE ABLE TO*"
    DATA "WHAT MAKES YOU THINK I AM*"
    DATA "DOES IT PLEASE YOU TO BELIEVE I AM*"
    DATA "PERHAPS YOU WOULD LIKE TO BE*"
    DATA "DO YOU SOMETIMES WISH YOU WERE*"
    DATA "DON'T YOU REALLY*"
    DATA "WHY DON'T YOU*"
    DATA "DO YOU WISH TO BE ABLE TO*"
    DATA "DOES THAT TROUBLE YOU?"
    DATA "TELL ME MORE ABOUT SUCH FEELINGS."
    DATA "DO YOU OFTEN FEEL*"
    DATA "DO ENJOY FEELING*"
    DATA "DO YOU REALLY BELIEVE I DON'T*"
    DATA "PERHAPS IN GOOD TIME I WILL*"
    DATA "DO YOU WANT ME TO*"
    DATA "DO  YOU THINK YOU SHOULD BE ABLE TO*"
    DATA "WHY CAN'T YOU*"
    DATA "WHY ARE YOU INTERESTED IN WHEATHER OR NOT I AM*"
    DATA "WOULD YOU PREFER IF I WERE NOT*"
    DATA "PERHAPS IN YOUR FANTASIES I AM*"
    DATA "HOW DO YOU KNOW YOU CAN'T*"
    DATA "HAVE YOU TRIED?"
    DATA "PERHAPS YOU CAN NOW?"
    DATA "DID YOU COME TO ME BECAUSE YOU ARE*"
    DATA "HOW LONG HAVE YOU BEEN*"
    DATA "DO YOU BELIEVE IT IS NORMAL TO BE*"
    DATA "DO YOU ENJOY BEING*"
    DATA "WE WERE DISCUSSING YOU -- NOT ME."
    DATA "OH, I*"
    DATA "YOU'RE NOT REALLY TALKING ABOUT ME, ARE YOU?"
    DATA "WHAT WOULD IT MEAN TO YOU IF YOU GOT*"
    DATA "WHY DO YOU WANT*"
    DATA "SUPPOSE YOU SOON GOT*"
    DATA "WHAT IF YOU NEVER GOT*"
    DATA "I SOMETIMES ALSO WANT*"
    DATA "WHY DO YOU ASK?"
    DATA "DOES THAT QUESTION INTEREST YOU?"
    DATA "WHAT ANSWER WOULD YOU PLEASE YOU THE MOST?"
    DATA "WHAT DO YOU THINK?"
    DATA "ARE SUCH QUESTIONS ON YOUR MIND OFTEN?"
    DATA "WHAT IS IT THAT YOU REALLY WANT TO KNOW?"
    DATA "HAVE YOU ASKED ANYONE ELSE?"
    DATA "HAVE YOU ASKED SUCH QUESTIONS BEFORE?"
    DATA "WHAT ELSE COMES TO MIND WHEN YOU ASK THAT?"
    DATA "NAMES DON'T INTEREST ME."
    DATA "I DON'T CARE ABOUT NAMES -- PLEASE GO ON."
    DATA "WHAT IS THE REAL REASON?"
    DATA "DON'T ANY OTHER REASONS COME TO MIND?"
    DATA "DOES THAT REASON EXPLAIN ANYTHING ELSE?"
    DATA "WHAT OTHER REASONS MIGHT THERE BE?"
    DATA "PLEASE DON'T APOLOGIZE!"
    DATA "APOLOGIES ARE NOT NECESSARY."
    DATA "WHAT FEELINGS DO YOU HAVE WHEN YOU APOLOGIZE."
    DATA "DON'T BE SO DEFENSIVE!"
    DATA "WHAT DOES THAT DREAM SUGGEST TO YOU?"
    DATA "DO YOU DREAM OFTEN?"
    DATA "WHAT PERSONS APPEAR IN YOUR DREAMS?"
    DATA "ARE YOU DISTURBED BY YOUR DREAMS?"
    DATA "HOW DO YOU DO... PLEASE STATE YOUR PROBLEM."
    DATA "YOU DON'T SEEM QUITE CERTAIN."
    DATA "WHY THE UNCERTAIN TONE?"
    DATA "CAN'T YOU BE MORE POSITIVE?"
    DATA "YOU AREN'T SURE?"
    DATA "DON'T YOU KNOW?"
    DATA "ARE YOU SAYING NO JUST TO BE NEGATIVE?"
    DATA "YOU ARE BEING A BIT NEGATIVE."
    DATA "WHY NOT?"
    DATA "ARE YOU SURE?"
    DATA "WHY NO?"
    DATA "WHY ARE YOU CONCERNED ABOUT MY*"
    DATA "WHAT ABOUT YOUR OWN*"
    DATA "CAN YOU THINK OF A SPECIFIC EXAMPLE?"
    DATA "WHEN?"
    DATA "WHAT ARE YOU THINKING OF?"
    DATA "REALLY, ALWAYS?"
    DATA "DO YOU REALLY THINK SO?"
    DATA "BUT YOU ARE NOT SURE YOU*"
    DATA "DO YOU DOUBT YOU*"
    DATA "IN WHAT WAY?"
    DATA "WHAT RESEMBLANCE DO YOU SEE?"
    DATA "WHAT DOES THE SIMILARITY SUGGEST TO YOU?"
    DATA "WHAT OTHER CONNECTIONS DO YOU SEE?"
    DATA "COULD THERE REALLY BE SOME CONNECTION?"
    DATA "HOW?"
    DATA "YOU SEEM QUITE POSITIVE."
    DATA "ARE YOU SURE?"
    DATA "I SEE."
    DATA "I UNDERSTAND."
    DATA "WHY DO YOU BRING UP THE TOPIC OF FRIENDS?"
    DATA "DO YOUR FRIENDS WORRY YOU?"
    DATA "DO YOUR FRIENDS PICK ON YOU?"
    DATA "ARE YOU SURE YOU HAVE ANY FRIENDS"
    DATA "DO YOU IMPOSE ON YOUR FRIENDS?"
    DATA "PERHAPS YOUR LOVE FOR FRIENDS WORRIES YOU."
    DATA "DO COMPUTERS WORRY YOU?"
    DATA "ARE YOU TALKING ABOUT ME IN PARTICULAR?"
    DATA "ARE YOU FRIGHTENED BY MACHINES?"
    DATA "WHY DO YOU MENTION COMPUTERS?"
    DATA "WHAT DO YOU THINK MACHINES HAVE TO DO WITH YOUR PROBLEM?"
    DATA "DON'T YOU THINK THAT COMPUTERS HELP PEOPLE?"
    DATA "WHAT IS IT ABOUT MACHINES THAT WORRIES YOU?"
    DATA "SAY, DO YOU HAVE ANY PSYCHOLOGICAL PROBLEMS?"
    DATA "WHAT DOES THAT SUGGEST TO YOU?"
    DATA "I SEE."
    DATA "I'M NOT SURE I UNDERSTAND YOU FULLY."
    DATA "COME, COME, ELUCIDATE YOUR THOUGHTS."
    DATA "CAN YOU ELABORATE ON THAT"
    DATA "THAT IS QUITE INTERESTING."
    REM
    REM     DATA FOR FINDING RIGHT REPLIES
    REM
    DATA 1,3,4,2,6,4,6,4,10,4,14,3,17,3,20,2,22,3,25,3
    DATA 28,4,28,4,32,3,35,5,40,9,40,9,40,9,40,9,40,9,40,9
    DATA 49,2,51,4,55,4,59,4,63,1,63,1,64,5,69,5,74,2,76,4
    DATA 80,3,83,7,90,3,93,6,99,7,106,6
2140 PRINT
    FOR X = 1 TO LEN(X$): PRINT MID$(X$, X, 1);
    FOR TM = 1 TO 20: NEXT TM, X: PRINT
    RETURN
    

