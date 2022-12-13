
<h1 align="center">KinoManiak - dokumentacja</h1>

###1. **Wstęp**

Aplikacja KinoManiak ma w założeniach dostarczać podstawowych funkcjonalności systemu do obsługi multipleksu kinowego. System ma w minimalnych założeniach umożliwiać:

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


###2. **Role użytkowników i funkcje aplikacji**


W aplikacji realizowany będzie podział użytkowników na 3 role:

- Administrator
- Manager
- Kasjer

1) **Admin**
- Posiada wszystkie uprawnienia Managera
- Ma możliwość przyznawania ról użytkownikom systemu
- Ma możliwość podejrzenia statystyk

1) **Manager**

- Posiada wszystkie uprawnienia Kasjera
- Ma możliwość dodawania seansów
- Ma możliwość dodawania filmów, sal
- Ma możliwość wysyłania maili


1) **Kasjer**

- Ma możliwość sprzedawania biletów
- Ma możliwość wyświetlenia seansów, filmów
- Ma możliwość generowania polecanego repertuaru (na podstawie daty premiery filmu)



###3. **Model bazodanowy**
###4. **Model dziedzinowy**

