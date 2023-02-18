
<h1 align="center">KinoManiak - dokumentacja</h1>

<h2>1. Wstęp</h2>

Aplikacja KinoManiak ma w założeniach dostarczać podstawowych funkcjonalności
systemu do obsługi multipleksu kinowego. System ma w minimalnych założeniach umożliwiać:

- Wprowadzenie nowego użytkownika: imię, nazwisko i email (poprawność danych)
- Obsługę wielu sal
- Wyświetlenie polecanych filmów
- Użytkowników z różnymi uprawnieniami
- Wysyłanie maili z powiadomieniami
- Generowanie statystyk

Do napisania aplikacji użyte zostały następujące technologie:

- język Java 17
- narzędzie do automatycznej kompilacji Gradle
- frameworki Spring, JavaFX, nakładka FxWeaver do współpracy Springa z JavaFX
- baza danych PostgreSQL umieszczona w kontenerze Docker


<h2>2. Role użytkowników i funkcje aplikacji</h2>


W aplikacji realizowany będzie podział użytkowników na 3 role:

- Administrator
- Manager
- Kasjer

a) **Admin**
- Posiada wszystkie uprawnienia Managera
- Ma możliwość przyznawania ról użytkownikom systemu
- Ma możliwość podejrzenia statystyk

b) **Manager**

- Posiada wszystkie uprawnienia Kasjera
- Ma możliwość dodawania seansów
- Ma możliwość dodawania filmów, sal
- Ma możliwość wysyłania maili


c) **Kasjer**

- Ma możliwość sprzedawania biletów
- Ma możliwość wyświetlenia seansów, filmów
- Ma możliwość generowania polecanego repertuaru (na podstawie daty premiery filmu)


<h2>3. Model bazodanowy</h2>

  
![Scheme](images/baza_v2.jpg)

  
**Opis tabel:**

**Role** - zawiera role użytkowników systemu    
**Employee** -  zawiera wszystkich użytkowników systemu, każdy z nich posiada role, mail,hasło  
**Movie** - zawiera dane dotyczące filmów wyświetlanych w kinie       
**Movie_Category** - zawiera nazwy gatunków filmów jak np. horror czy fantasy       
**Movie_Categories** - tabela łącznikowa - jeden film może mieć wiele kategorii,
jedną kategorie może mieć wiele filmów   
**Hall** - zawiera informacje dotyczące sal kinowych - nr sali, ilość miejsc    
**FilmShow** - zawiera informacje dotyczące konkretnych seansów jak godzina, cena biletów, jest połączona z konkretnym filmem i salą    
**Ticket** - zawiera informacje dotyczące biletów. Bilet ma numer fotela, powiązany jest z konkretnym seansem i kasjerem, który obsługiwał jego biletu


<h2>4. Model dziedzinowy</h2>
  
![Scheme](images/KinoManiak_new1.jpeg)    


![Scheme](images/KinoManiak_new2.jpeg)
  

**Funkcje klas:**
- Klasy uruchamiające system
  - Oznaczone kolorem szarym
  - Odpowiadają za uruchomienie aplikacji wraz z początkową konfiguracją i synchronizacją używanych frameworków

- Klasy z warstwy dziedzinowej
  - Oznaczone kolorem jasnoniebieskim
  - Są odwzorowaniem encji z używanej bazy danych
  - Mapowane na klasy za pomocą Spring JPA


- Klasy z warstwy kontrolerów
  - Oznaczone kolorem jasnozielonym
  - Pełnią funkcję pośredników w komunikacji między widokami JavaFX, a klasami dziedzinowymi
  - Implementują metody modyfikujące szatę graficzną
  - Do komunikacji z modelem używają serwisów

- Klasy z warstwy serwisów
  - Oznaczone kolorem żółtym
  - Pobierają/modyfikują/dodają/usuwają obiekty dziedzinowe, wykorzystując do tego odpowiednie repozytoria

- Klasy z warstwy repozytoriów
  - Oznaczone kolorem bladoczerwonym
  - Definiują metody umożliwiające operacje na bazodanowych tabelach


<h2>5. Instrukcja uruchomienia</h2>

Do skorzystania z aplikacji KinoManiak, należy mieć zainstalowane lokalnie:
- Java 17
- Docker

Pobieramy obraz z dockera:
```
docker pull pwgacek/kinomaniak_db
```
Odpalamy kontener z bazą danych:
```
docker run --name kinomaniak --env PGDATA=postgres -d -p 5433:5432 -i pwgacek/kinomaniak_db
```
W application.properties sprawdzamy czy user, hasło i numer portu są poprawnie ustawione:

**Port:5433**   
**User: postgres**  
**Password: postgres**

Baza jest gotowa do użytku

Aby uruchomić aplikację, należy zbudować projekt gradle i wystartować klasę KinoManiakApplication zawierającą metodę main().

<h3> M2 updates </h3>

Zaktualizowano obraz dockerowy dlatego prosimy o pobranie najnowszej wersji

**Controllery i widoki:**   
HomeView - wybór widoków    
LoginView - logowanie/tworzenie nowego użytkownika    
CashierMovieView - prezentacja filmów w repertuarze kina    
CahierScreeningsView - prezentacja seansów, możliwość zakupu biletów    
ManagerHallView - prezentacja sal   
ManagerMovieView - dodawanie/usuwanie filmów    
ManagerScreeningView - dodawanie/usuwanie seansów   
AdminAccountsView - prezentacja, edycja, usuwanie kont    
AccountDeleteDialog - potwierdzenie usunięcia konta   
AccountEditDialog - edycja wybranego konta    

**Obsługa uprawnień**   
Zalogowany użytkownik ma różne uprawnienia w zależności od roli.    
**Użytkownik bez roli** nie ma dostępu do żadnej opcji oprócz wylogowania:    

![Scheme](images/no_role_navbar.jpg)  


**Kasjer** ma możliwość wyświetlenia widoku z filmami oraz seansów:     
    

![Scheme](images/cashier_navbar.jpg)    

W panelu seansów (‘Screenings’) może sprzedać bilet na dany seans:    


![Scheme](images/cashier_screenings.jpg)    


W panelu z filmami ma możliwość podejrzenia listy granych filmów oraz wyświetlenia ich opisu. Dodatkowo po kliknięciu w ‘Show Screenings’, użytkownik przenosi się do widoku z seansami wybranego filmu:    

![Scheme](images/cashier_movies.jpg)    

**Manager** oprócz dodatkowych opcji, może zmieniać tryb przeglądania aplikacji na tryb dla kasjera. Wtedy będzie mógł korzystać z dostępnych kasjerowi funkcjonalności.    

![Scheme](images/manager_navbar.jpg)  

Widoki ‘Screenings’ oraz ‘Movies’ w trybie managera, pomimo tej samej nazwy, różnią się od tych dla kasjera. W panelu seansów, manager może dodać lub usunąć seans (przy jednoczesnej walidacji wykonalności takiej operacji), analogicznie dla zakładki filmów:    

![Scheme](images/manager_screenings_add.jpg)    

![Scheme](images/manager_screenings_remove.jpg)     

![Scheme](images/manager_movies_add.jpg)      

![Scheme](images/manager_screenings_remove.jpg)   

Ponadto, manager może podejrzeć sale, o których informacje wczytywane są z pliku JSON. Z tego widoku, po kliknięciu w ‘Show Screenings’, użytkownik przenosi się do widoku z seansami mającymi miejsce w danej sali:    

![Scheme](images/manager_halls.jpg)       

Oprócz tego, Manager będzie miał jeszcze możliwość podejrzenia statystyk.   
    
**Admin** może przełączać się między wszystkimi trybami, a w trybie administratora udostępnione mu są dwie dodatkowe opcje:   

![Scheme](images/admin_navbar.jpg)      

W zakładce ‘Users’, administrator ma możliwość edycji bądź usunięcia kont innych użytkowników:    

![Scheme](images/admin_users.jpg)     

Przy edycji/usuwaniu użytkownika, wyświetlane są okienka z potwierdzeniem operacji:     

![Scheme](images/admin_users_edit.jpg)    

![Scheme](images/admin_users_delete.jpg)    

Admin będzie mógł dodatkowo wysyłać e-maile użytkownikom.   
  
**Zarządzenie filmem**    
Dla kasjera stworzono widok CashierMovieView, w którym ma on możliwość sprawdzenia filmów znajdujących się w repertuarze kina. Dostępnych jest parę opcji filtracji: po nazwie,po kategoriach i po ograniczeniach wiekowych. Istnieje także przycisk “Recommended Movies” po wciśnięciu, którego wyświetlone zostaną polecane filmy. Po kliknięciu na dany film ukazuje się jego opis, plakat oraz możliwość przejścia do seansów tego filmu. Manager przy użyciu ManagerMovieView może dodawać i usuwać filmy    
    
**Sale w pliku konfiguracyjnym**    
Utworzono HallConfigurator, który gdy baza sal jest pusta, wczytuje je z pliku konfiguracyjnego (src/main/resources/com/example/kinomaniak/hall_config.json) do bazy. Widok z salami - ManagerHallView oprócz wyświetlania sal i filtracji, umożliwia także przejście do seansów odbywających się w danej sali.   
    
**Zarządzanie seansami i sprzedaż biletów**    
Dla kasjera utworzono CashierScreeningsView, w którym może przy użyciu filtrów wybrać seans i zakupić na niego bilety. Widać także ile wolnych miejsc zostało na dany seans. Manager w ManagerScreeningsView może dodawać i usuwać seanse.    
    
<h3> M3 updates </h3>     
      
Zaktualizowano obraz dockerowy dlatego prosimy o pobranie najnowszej wersji   
    
maile i hasła:    
admin: mail: admin@mail.com, hasło: admin123    
manager: mail: manager@mail.com, hasło: manager123    
kasjer: mail: cashier@mail.com, hasło: cashier123   
konto bez roli: mail: nobody@mail.com ,hasło: nobody123   
    
**Poprawa UX i UI**   
Zmianie uległa szata graficzna aplikacji:     

![Scheme](images/ekran_logowania_m3.jpg)      

![Scheme](images/kasjer_filmy_m3.jpg)       

![Scheme](images/manager_dodaj_film_m3.jpg)       
    
**Obsługa polecanych filmów.**    
Manager ma teraz możliwość dodawania i usuwania polecanych filmów.    

![Scheme](images/manager_polecane_filmy_m3.jpg)       

Kasjer w widoku filmów może zobaczyć polecane filmy (po kliknięciu przycisku Recommended Movies)    

![Scheme](images/cashier_polecane_filmy_m3.jpg)     
    
**Funkcjonalność do zwalniania pracowników**  
Administrator ma możliwość usuwania pracowników. Do zwolnionego pracownika wysyłany jest pożegnalny mail.   

![Scheme](images/admin_usun_konto.jpg)      
    
**Statystyki**  
Manager ma dostęp do różnych statystyk, które można wyświetlić w postaci tabeli lub grafu. Może on także wybrać zakres czasu, którego te statystyki dotyczą. Możliwe do wyboru opcje to:    
- najlepszy kasjer 
- najczęściej oglądane filmy
- najbardziej dochodowe filmy
- najbardziej popularne sale
- przychody z biletów

Poniżej zamieszczamy pare ekranów statystyk   

![Scheme](images/manager_stytystyki1_m3.jpg)      

![Scheme](images/manager_stytystyki2_m3.jpg)    

![Scheme](images/manager_stytystyki3_m3.jpg)        

![Scheme](images/manager_stytystyki4_m3.jpg)        
    
**Widok sali - kupowanie biletu**

- Podczas kupowania biletu możemy wybrać interesujące nas miejsca na sali.  
- Sala jest przedstawiona jako prostokąt z 10 miejscami w rzędzie.    
- Zakup biletu:
  - Miejsca czerwone - zajęte
  - szare - wolne
  - zielone - wybrane przez nas


![Scheme](images/kasjer_kup_bilet_m3.jpg)  
