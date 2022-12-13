
<h1 align="center">KinoManiak - dokumentacja</h1>

<h2>1. **Wstęp**</h2>

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


<h2>2. **Role użytkowników i funkcje aplikacji**</h2>


W aplikacji realizowany będzie podział użytkowników na 3 role:

- Administrator
- Manager
- Kasjer

1) **Admin**
- Posiada wszystkie uprawnienia Managera
- Ma możliwość przyznawania ról użytkownikom systemu
- Ma możliwość podejrzenia statystyk

2) **Manager**

- Posiada wszystkie uprawnienia Kasjera
- Ma możliwość dodawania seansów
- Ma możliwość dodawania filmów, sal
- Ma możliwość wysyłania maili


3) **Kasjer**

- Ma możliwość sprzedawania biletów
- Ma możliwość wyświetlenia seansów, filmów
- Ma możliwość generowania polecanego repertuaru (na podstawie daty premiery filmu)


<h2>3. **Model bazodanowy**</h2>
<h2>4. **Model dziedzinowy**</h2>