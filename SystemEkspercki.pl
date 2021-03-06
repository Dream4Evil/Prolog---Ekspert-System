﻿65% Author: Kamil Pudlewski & Ernest Nowak
% Date: 13.12.2017

:-dynamic kind/1.
:-dynamic zawod/1.
:-dynamic current_zawod/1.

%______________________ START PROGRAMU __________________________
go:-identify.

%______________________ZASADY SYSTEMU EKSPERCKIEGO_________________________
zawod:-kind(aktualna_baza_danych_zawodow_humanistycznych);
       kind(aktualna_baza_danych_zawodow_scislych);
       kind(aktualna_baza_danych_zawodow_sportowych).
 
kinds(L):-L = [aktualna_baza_danych_zawodow_humanistycznych,
               aktualna_baza_danych_zawodow_scislych,
               aktualna_baza_danych_zawodow_sportowych].

 %------------ BAZA RELACJI
%W czym sie czujesz najlepiej? Kierunki s) scisle, h)humanista, s)sportowiec

kind(aktualna_baza_danych_zawodow_humanistycznych):- zawod(polonista);
                                                     zawod(malarz);
                                                     zawod(lekarz);
                                                     zawod(weterynarz);
                                                     zawod(prawnik);
                                                     zawod(psycholog);
                                                     zawod(tlumacz_jezyka_obcego);
                                                     zawod(geodeta);
                                                     zawod(pilot);
                                                     zawod(aktor);
                                                     zawod(bibliotekarz);
                                                     zawod(fotograf);
                                                     zawod(piosenkarz);
                                                     zawod(zoolog);
                                                     zawod(polityk);
                                                     zawod(konsultant);
                                                     zawod(kelner),
                                                     zawod(kasjer).
                                      
%__________________HUMANISTYCZNE__________________
zawod(polonista):-  retractall(current_zawod(_)),
                    assert(current_zawod(polonista)),
                    kierunek(humanistyczny),
                    zainteresowania(ksiazki).

zawod(malarz):-     retractall(current_zawod(_)),
                    assert(current_zawod(malarz)),
                    kierunek(humanistyczny),
                    zainteresowania(malowanie).

zawod(lekarz):- retractall(current_zawod(_)),
                    assert(current_zawod(lekarz)),
                    kierunek(humanistyczny),
                    zainteresowania(biologia).

zawod(weterynarz):- retractall(current_zawod(_)),
                    assert(current_zawod(weterynarz)),
                    kierunek(humanistyczny),
                    zainteresowania(biologia),
                    zainteresowania(zwierzeta).

zawod(prawnik):- retractall(current_zawod(_)),
                    assert(current_zawod(prawnik)),
                    kierunek(humanistyczny),
                    zainteresowania(prawo).

zawod(psycholog):- retractall(current_zawod(_)),
                    assert(current_zawod(psycholog)),
                    kierunek(humanistyczny),
                    zainteresowania(psychologia).

zawod(tlumacz_jezyka_obcego):- retractall(current_zawod(_)),
                    assert(current_zawod(tlumacz_jezyka_obcego)),
                    kierunek(humanistyczny),
                    zainteresowania(jezyk_obcy).  

zawod(geodeta):- retractall(current_zawod(_)),
                    assert(current_zawod(geodeta)),
                    kierunek(humanistyczny),
                    zainteresowania(geologia).

zawod(pilot):- retractall(current_zawod(_)),
                    assert(current_zawod(pilot)),
                    kierunek(humanistyczny),
                    zainteresowania(latanie).

zawod(aktor):- retractall(current_zawod(_)),
                    assert(current_zawod(aktor)),
                    kierunek(humanistyczny),
                    zainteresowania(gra_aktorska).

zawod(bibliotekarz):- retractall(current_zawod(_)),
                    assert(current_zawod(bibliotekarz)),
                    kierunek(humanistyczny),
                    zainteresowania(ksiazki).      

zawod(fotograf):- retractall(current_zawod(_)),
                    assert(current_zawod(fotograf)),
                    kierunek(humanistyczny),
                    zainteresowania(fotografia).     

zawod(piosenkarz):- retractall(current_zawod(_)),
                    assert(current_zawod(piosenkarz)),
                    kierunek(humanistyczny),
                    zainteresowania(spiewanie).

zawod(zoolog):- retractall(current_zawod(_)),
                    assert(current_zawod(piosenkarz)),
                    kierunek(humanistyczny),
                    zainteresowania(zwierzeta).

%__________________HUMANISTYCZNE + ZAINTERESOWANIA + cecha__________________

zawod(polityk):- retractall(current_zawod(_)),
                    assert(current_zawod(polityk)),
                    kierunek(humanistyczny),
                    zainteresowania(polityka),
                    cecha(elokwentny).

zawod(kasjer):- retractall(current_zawod(_)),
                    assert(current_zawod(kasjer)),
                    kierunek(humanistyczny),
                    zainteresowania(zadne_z_ponizszych),
                    uzdolnienia(zadne_z_ponizszych),
                    cecha(zadne_z_ponizszych).                    

%__________________HUMANISTYCZNE + cecha__________________

zawod(konsultant):- retractall(current_zawod(_)),
                    assert(current_zawod(konsultant)),
                    kierunek(humanistyczny),
                    cecha(elokwentny);
                    cecha(chetnie_pomaga_innym).

zawod(kelner):- retractall(current_zawod(_)),
                    assert(current_zawod(kelner)),
                    kierunek(humanistyczny),
                    cecha(komunikatywny).




% __________________SCISLE__________________
kind(aktualna_baza_danych_zawodow_scislych):- zawod(informatyk);
                                              zawod(fizyk);
                                              zawod(astronom);
                                              zawod(matematyk);
                                              zawod(nauczyciel_matematyk);
                                              zawod(programista);
                                              zawod(inzynier_robotyki);
                                              zawod(elektronika);
                                              zawod(chemik);
                                              zawod(ekonomista).

zawod(informatyk):- retractall(current_zawod(_)),
                    assert(current_zawod(informatyk)),
                    kierunek(scisly),
                    zainteresowania(komputery).

zawod(fizyk):-      retractall(current_zawod(_)),
                    assert(current_zawod(fizyk)),
                    kierunek(scisly),
                    zainteresowania(doswiadczenia_fizyczne).

zawod(matematyk):- retractall(current_zawod(_)),
                    assert(current_zawod(matematyk)),
                    kierunek(scisly),
                    zainteresowania(matematyka).

zawod(ekonomista):- retractall(current_zawod(_)),
                    assert(current_zawod(ekonomista)),
                    kierunek(scisly),
                    zainteresowania(ekonomia).
                    
zawod(inzynier_robotyki):- retractall(current_zawod(_)),
                    assert(current_zawod(inzynier_robotyki)),
                    kierunek(scisly),
                    zainteresowania(robotyka).
                    
zawod(elektryk):- retractall(current_zawod(_)),
                    assert(current_zawod(elektryk)),
                    kierunek(scisly),
                    zainteresowania(elektronika).
                    
zawod(chemik):- retractall(current_zawod(_)),
                    assert(current_zawod(chemik)),
                    kierunek(scisly),
                    zainteresowania(chemia).

% __________________SCISLE + cecha__________________

zawod(astronom):-   retractall(current_zawod(_)),
                    assert(current_zawod(astronom)),
                    kierunek(scisly),
                    zainteresowania(kosmos); 
                    cecha(ciekawy_swiata).

zawod(programista):- retractall(current_zawod(_)),
                    assert(current_zawod(programista)),
                    kierunek(scisly),
                    zainteresowania(programowanie); cecha(inteligentny).

zawod(nauczyciel_matematyk):- retractall(current_zawod(_)),
                    assert(current_zawod(matematyk)),
                    kierunek(scisly),
                    zainteresowania(matematyka),
                    cecha(chetnie_pomaga_innym).



% _____ZWIĄZANE Z ASPEKTAMI FIZYCZNYMI____ (SPORT)

kind(aktualna_baza_danych_zawodow_sportowych):- zawod(tancerz);
                                                zawod(pracownik_budowlany);
                                                zawod(biegacz);
                                                zawod(kierowca);
                                                zawod(piekarz);
                                                zawod(sportowiec);
                                                zawod(pilkarz);
                                                zawod(lekkoatleta);
                                                zawod(kolarz);
                                                zawod(trener_personalny);
                                                zawod(skoczek_narciarski).



zawod(tancerz):- retractall(current_zawod(_)),
                                                asserta(current_zawod(tancerz2)),
                                                kierunek(sport),
                                                zainteresowania(taniec).

zawod(pracownik_budowlany):-retractall(current_zawod(_)),
                    assert(current_zawod(pracownik_budowlany)),
                    kierunek(sport),
                    zainteresowania(budowanie).

zawod(kierowca):-retractall(current_zawod(_)),
                    assert(current_zawod(kierowca)),
                    kierunek(sport),
                    zainteresowania(samochody).

zawod(piekarz):-retractall(current_zawod(_)),
                    assert(current_zawod(piekarz)),
                    kierunek(sport),
                    zainteresowania(pieczenie).

% __________________SPORT + UZDOLNIENIA__________________

zawod(pilkarz):- retractall(current_zawod(_)),
                    assert(current_zawod(pilkarz)),
                    kierunek(sport),
                    zainteresowania(cwiczenia_fizyczne),
                    uzdolnienia(gra_w_pilke_nozna).

zawod(lekkoatleta):- retractall(current_zawod(_)),
                    assert(current_zawod(lekkoatleta)),
                    kierunek(sport),
                    zainteresowania(cwiczenia_fizyczne),
                    uzdolnienia(lekkoatletyka).

zawod(kolarz):- retractall(current_zawod(_)),
                    assert(current_zawod(kolarz)),
                    kierunek(sport),
                    zainteresowania(cwiczenia_fizyczne),
                    uzdolnienia(kolarstwo).

zawod(skoczek_narciarski):- retractall(current_zawod(_)),
                    assert(current_zawod(skoczek_narciarski)),
                    kierunek(sport),
                    zainteresowania(cwiczenia_fizyczne),
                    uzdolnienia(skoki_na_nartach).

%__________________SPORT + UZDOLNIENIA + cecha_______________

zawod(trener_personalny):- retractall(current_zawod(_)),
assert(current_zawod(trener_personalny)),
kierunek(sport),
zainteresowania(cwiczenia_fizyczne),
uzdolnienia(wysportowany),
cecha(komunikatywny).

zawod(biegacz):- retractall(current_zawod(_)),
assert(current_zawod(biegacz)),
                    kierunek(sport),
                    zainteresowania(cwiczenia_fizyczne),
                    uzdolnienia(bieganie).

%alternatywa

%__________________SPORT OGÓLNY______________________________

zawod(sportowiec):- retractall(current_zawod(_)),
assert(current_zawod(sportowiec)),
kierunek(sport),
zainteresowania(cwiczenia_fizyczne),
uzdolnienia(zadne_z_ponizszych);

uzdolnienia(wysportowany),
\+ cecha(komunikatywny).

%!!!    zostanie wybrany gdy bedzie zadne z ponizszych lub wysportowany ale nie komunikatywny





%_______________________________________________________________________________

kierunek(X):- ask(kierunek,X).
zainteresowania(X):-grupa(X).

%podział na grupy niestety nie był wykrywany 

grupa(X):-menuask(zainteresowania,X,[

zadne_z_ponizszych,
ksiazki,
malowanie,
biologia,
prawo,
psychologia,
jezyk_obcy,
geologia,
latanie,
gra_aktorska,
fotografia,
spiewanie,
polityka,
zwierzeta,

matematyka,
kosmos,
programowanie,
ekonomia,
robotyka,
elektronika,
chemia,
komputery,
doswiadczenia_fizyczne,

cwiczenia_fizyczne,
budowanie,
samochody,
pieczenie,
taniec]).



uzdolnienia(X):- menuask(uzdolnienia,X,[
zadne_z_ponizszych,
wysportowany,
bieganie,
gra_w_pilke_nozna,
lekkoatletyka,
kolarstwo,
skoki_na_nartach]).

cecha(X):- menuask(cecha,X,[
zadne_z_ponizszych, 
elokwentny,
chetnie_pomaga_innym,
komunikatywny,
wytrwaly,
ciekawy_swiata, 
inteligentny]).

%___________________GŁÓWNA FUNKCJA SYSTEMU EKSPERCKIEGO _____________________________
identify:-
  retractall(known(_,_,_,_)),   % czyszczenie zapisanych informacji
  read_dynamic_database,
  welcome_interface,
  zawod,
  current_zawod(X),
  odpowiedzi(X).
  
identify:-zap_dod_interfejs.
  
identify.

%___________________________CZYTANIE DYNAMICZNEJ BAZY DANYCH Z PLIKU_______________________
read_dynamic_database:-
   open('c:/zawod/zawod.txt', read, Str),
        read_file(Str),
    close(Str).

read_file(Stream) :-
    at_end_of_stream(Stream),!.

read_file(Stream) :-
    \+ at_end_of_stream(Stream),
    read(Stream,X),
    assertz(X),
    read_file(Stream).

%___________DZIAŁANIE ZAPYTAŃ Z ZALEŻNOŚCIAMI KATEGORI PYTAŃ__________

% "ask" is responsible for getting information from the user, and remembering
% the users response.  "ask" only deals with simple 'yes' or 'no' odpowiedzi.
% If it doesn't already know the answer to a question
% it will ask the user.  It then asserts the answer.
% It recognizes two cases of knowledge: 1) the attribute-value is known to be true,
%                                       2) the attribute-value is known to be false.

ask(Attribute,Value):-
  current_zawod(X),
  known(tak,Attribute,Value,_),     % succeed if we know its true
  retractall(known(yes,Attribute,Value,_)),
  assert(known(yes,Attribute,Value,X)),
  !.                              % and dont look any further

ask(Attribute,Value):-
  current_zawod(X),
  known(nie,Attribute,Value,_),       % fail if we know its false
  retractall(known(no,Attribute,Value,_)),
  assert(known(no,Attribute,Value,X)),
  !, fail.                        % and dont look any further

ask(A,V):-
  zap_interface(A, V, Answer),    % if we get here, we need to ask.
  Answer = yes.                        % succeed or fail based on answer.

answer(Attribute, Value, Answer):- current_zawod(X), asserta(known(Answer, Attribute, Value, X)).

% "menuask" is like ask, only it gives the user a menu to choose from
% rather than a 'yes' on 'no' answer.  In this case there is no
% need to check for a negative since "menuask" ensures there will
% be some positive answer.

menuask(Attribute,Value,_):-
  current_zawod(X),
  known(yes,Attribute,Value,_),     % succeed if we know
  retractall(known(yes,Attribute,Value,_)),
  assert(known(yes,Attribute,Value,X)),
  !.                              % and dont look any further

menuask(Attribute,_,_):-
  known(yes,Attribute,_,_),         % fail if its some other value
  !, fail.


menuask(Attribute,AskValue,Menu):- menu_zap_interfejs(Attribute, Menu, Answer),
                                  AskValue = Answer.         % succeed or fail based on answe

menu_answer(Attribute, Answer):- current_zawod(X), asserta(known(yes,Attribute,Answer, X)).

%_____________________ STWORZENIE ZASAD DODANIA DO DYNAMICZNEJ BAZY DANYCH________________________

stworz_zawod(Zawod_name, Kind):-
     findall(kierunek(V),known(yes,kierunek,V,_),L_kierunek),
     findall(zainteresowania(V),known(yes,zainteresowania,V,_),L_zainteresowania),
     findall(uzdolnienia(V),known(yes,uzdolnienia,V,_),L_uzdolnienia),
     findall(cecha(V),known(yes,cecha,V,_),L_cecha),
     join_lists(L_kierunek,L_zainteresowania,L1),
     join_lists(L_uzdolnienia,L1,L2),
     join_lists(L_cecha,L2,L3),
     Head=zawod(Zawod_name),
     create_kind(Zawod_name, Kind),
     stworz_regule_zawod(Zawod_name, Head, L3).

create_kind(Zawod, Kind):-
    append('c:/zawod/zawod.txt'), write(kind(Kind):- zawod(Zawod)), write('.'), nl, told.

stworz_regule_zawod(Zawod_name,Head, List):-
    list_to_tuple(List,Tuple),
    dynamic(Head),
    append('c:/zawod/zawod.txt'), write(Head:- retractall(current_zawod(_))),
           write(','), write(assert(current_zawod(Zawod_name))), write(','),
           write(Tuple), write('.'),nl, told.

%Converting list to tuple:

join_lists([],X,X).
join_lists([X|L1],L2,[X|L3]) :- join_lists(L1,L2,L3).

list_to_tuple([],_) :-
    ValidDomain='[x|xs]',
    Culprit='[]',
    Formal=domain_error(ValidDomain, Culprit),
    Context=context('list_to_tuple','Cannot create empty tuple!'),
    throw(error(Formal,Context)).

list_to_tuple([X],X).

list_to_tuple([H|T],(H,Rest_Tuple)) :- list_to_tuple(T,Rest_Tuple).

%__________INTERFEJS GRAFICZNY______
welcome_interface:- new(Dialog, dialog('SYSTEM WYBORU ZAWODU: start')),
                    send(Dialog, append(new(Text1, text('Witaj w systemie który pomoże tobie wybrać zawód.\n', center)))),
                    send(Dialog, append(new(Text2, text('Odpowiedz na poniższe pytania aby uzyskać wynik.\n', center)))),
                    send(Dialog, append(new(Text3, text('Naciśnij przycisk \'Start\' aby zacząć.\n', center)))),
                    send(Dialog, append(new(Text4, text('Autorzy: Kamil Pudlewski, Ernest Nowak.', center)))),
                    send(Dialog, append(button('Start',and(message(Dialog, return, 'start'), message(Dialog, destroy))))),
                    send(Text1, font, font(roman, italic, 16)),
                    send(Text2, font, font(roman, italic, 16)),
                    send(Text3, font, font(roman, italic, 16)),
                    send(Text4, font, font(roman, italic, 16)),
                    send(Dialog, open, point(400,300)),
                    get(Dialog, confirm, Rval);
                    write(Rval),
                    Rval = 'start'.

zap_interface(A, V, Answer):-
       new(Dialog, dialog('SYSTEM EKSPERCKI: pytania')),
       send(Dialog, display, new(Text1, text('Czy odpowiada ci kierunek:', center))),
       atom_concat(V, ' ?', Question),
       send(Dialog, append(new(Text2, text(Question, center)))),
       send(Dialog, append(new(Choice, menu('Twoja odpowiedź')))),
       send(Dialog, display, button('OK',message(Dialog, return, Choice?selection)),
            point(90, 120)),
       send(Dialog, display, button('Wyjście',and(message(@prolog, end, Dialog),
            message(Dialog, destroy))), point(200, 120)),
       send_list(Choice, append, [tak, nie]),
       send(Dialog, alignment, center),
       send(Text1, font, font(roman, bold, 16)),
       send(Text2, font, font(roman, bold, 14)),
       send(Dialog, size, size(350, 160)),
       send(Dialog, open, point(400,300)),
       get(Dialog, confirm, Rval),
       free(Dialog),
       Answer = Rval,
       answer(A, V, Answer).

menu_zap_interfejs(A, ValueList, Answer):-
       new(Dialog, dialog('SYSTEM EKSPERCKI: pytania')),
       atom_concat('Jaka jest twoja główna(e) ', A, Str),
       atom_concat(Str, ' ?', Str2),
       send(Dialog, append(new(Text1, text(Str2, center)))),
       send(Dialog, append(new(Choice, menu('Wybierz:')))),
       send(Dialog, append(button('OK',message(Dialog, return, Choice?selection)))),
       send(Dialog, append(button('Wyjście',and(message(@prolog, end, Dialog),
            message(Dialog, destroy))))),
       send_list(Choice, append, ValueList),
       send(Text1, font, font(roman, bold, 16)),
       send(Choice, layout, vertical),
       send(Dialog, open, point(400,300)),
       get(Dialog, confirm, Rval),
       free(Dialog),
       Answer = Rval,
       menu_answer(A, Answer).

end(Dialog):-free(Dialog),abort.


%DLA ZNANYCH ZAWODÓW
odpowiedzi(X):- new(Dialog, dialog('WYNIK SYSTEMU EKSPERCKIEGO')),
       atom_concat('TWÓJ ZAWÓD TO: ', X, Str),
       send(Dialog, display, new(Text1, text(Str)), point(370,10)),
       send(Dialog, display, new(Text2, text('Twoje odpowiedzi podczas analizy:')),
            point(120,50)),
       send(Dialog, display, new(Text3, text('TAK dla: ')), point(25,90)),
       findall(V, known(yes,A,V,X),L1),
       findall(V, known(yes,A,V,_),L2),
       atomic_list_concat(L1, '\n', String1),
       send(Dialog, display, new(Text4, text(String1)), point(25,120)),
       subtract(L2, L1, Other),
       atomic_list_concat(Other, '\n', String2),
       send(Dialog, display, text(String2), point(25,250)),
       send(Dialog, display, new(Text6, text('NIE dla: ')), point(300,90)),
       findall(V, known(no,A,V,_),L3),
       atomic_list_concat(L3, '\n', L4),
       send(Dialog, display, text(L4), point(300,120)),
       send(Dialog, display, button('Restartuj', and(message(Dialog, destroy),
            message(@prolog, identify))), point(440, 450)),
       send(Dialog, display, button('Zakończ', message(Dialog, destroy)),
            point(550, 450)),
       %FONTS
       send(Text1, font, font(times, bold, 18)),
       send(Text2, font, font(roman, bold, 14)),
       send(Text3, font, font(roman, bold, 14)),
       send(Text4, colour(red)),
       send(Text6, font, font(roman, bold, 14)),
       send(Dialog, size, size(1100, 500)),
       atom_concat(X, '.jpg', Str2),
       %PICTURE
       atom_concat('c:/zawod/', Str2, Str3),
       exists_file(Str3),
       send(Dialog, display, bitmap(Str3), point(580,75)),
       send(Dialog, open, point(20,20)), true, !.

%DLA NIEZNANYCH ZAWODÓW
odpowiedzi(X):- new(Dialog, dialog('WYNIK SYSTEMU EKSPERCKIEGO')),
       atom_concat('TWÓJ ZAWÓD TO: ', X, Str),
       send(Dialog, display, new(Text1, text(Str)), point(370,10)),
       send(Dialog, display, new(Text2, text('Twoje odpowiedzi podczas analizy:')), point(120,50)),
       send(Dialog, display, new(Text3, text('TAK dla: ')), point(25,90)),
       findall(V, known(yes,A,V,X),L1),
       findall(V, known(yes,A,V,_),L2),
       atomic_list_concat(L1, '\n', String1),
       send(Dialog, display, new(Text4, text(String1)), point(25,120)),
       subtract(L2, L1, Other),
       atomic_list_concat(Other, '\n', String2),
       send(Dialog, display, text(String2), point(25,250)),
       send(Dialog, display, new(Text6, text('NIE dla: ')), point(300,90)),
       findall(V, known(no,A,V,_),L3),
       atomic_list_concat(L3, '\n', L4),
       send(Dialog, display, text(L4), point(300,120)),
       send(Dialog, display, button('Restartuj', and(message(Dialog, destroy), message(@prolog, identify))), point(440, 450)),
       send(Dialog, display, button('Zakończ', message(Dialog, destroy)), point(550, 450)),
       %FONTS
       send(Text1, font, font(times, bold, 18)),
       send(Text2, font, font(roman, bold, 14)),
       send(Text3, font, font(roman, bold, 14)),
       send(Text4, colour(red)),
       send(Text6, font, font(roman, bold, 14)),
       send(Dialog, size, size(1100, 500)),
       %PICTURE
       send(Dialog, display, bitmap('c:/zawod/new_zawod.jpg'), point(580,75)),
       send(Dialog, open, point(20,20)), true.

zap_dod_interfejs:- new(Dialog, dialog('Brak zawodu')),
                       send(Dialog, display, new(Text1, text('Przepraszamy! Nie udało się odnaleźć zawodu po twoich odpowiedziach')), point(25,25)),
                       send(Dialog, display, new(Text2, text('Czy chcesz dodać zawód razem z odpowiedziami do bazy danych?')), point(25,60)),
                       send(Dialog, display, button('Tak', and(message(@prolog, dod_interfejs), message(Dialog, destroy))), point(190, 130)),
                       send(Dialog, display, button('Nie', message(Dialog, destroy)), point(320, 130)),
                       send(Text1, font, font(roman, bold, 18)),
                       send(Text2, font, font(roman, bold, 14)),
                       send(Dialog, open, point(400,300)).

dod_interfejs:- new(Dialog, dialog('Dodawanie zawodu do bazy danych')),
                send(Dialog, display, new(EnterText, text_item('Napisz nazwe zawodu')),
                     point(25,25)),
                send(Dialog, display, new(Choice, menu('Wybierz rodzaj nowego zawodu')),
                     point(25,60)),
                send(Dialog, display, new(BtnBox, dialog_group(buttons, group)),
                     point(160,240)),
                send(BtnBox, append, button('Dodaj',
                    and(message(@prolog, stworz_zawod, EnterText?selection, Choice?selection),
                    message(@prolog, zap_aby_kont_interfejs), message(Dialog, destroy)))),
                kinds(L),
                send_list(Choice, append, L),
                send(Choice, layout, vertical),
                send(Dialog, open, point(400,300)).


zap_aby_kont_interfejs:- new(Dialog, dialog('Pomyślnie Dodano')),
                            send(Dialog, display, new(Text1, text('Zawód został pomyślnie dodany do bazy danych!')), point(25,25)),
                            send(Dialog, display, new(Text2, text('Czy chcesz kontynuowac pracę z systemem?')), point(25,70)),
                            send(Dialog, display, new(BtnBox, dialog_group(buttons, group)), point(200,130)),
                            send(BtnBox, append, button('Tak', and( message(Dialog, destroy), message(@prolog, identify)))),
                            send(BtnBox, append, button('Nie', message(Dialog, destroy))),
                            send(Text1, font, font(roman, bold, 18)),
                            send(Text2, font, font(roman, bold, 16)),
                            send(Dialog, open, point(400,300)).
