<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Redressed&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Redressed&display=swap" rel="stylesheet">  
    <script src="script.js" defer></script>
    <title>Document</title>
</head>

<body>
    <header>
        <nav>
            <ul>
                <li class="li_header"><a href="#">Главная</a></li>
                <li class="li_header"><a href="#">Покупки</a></li>
                <li class="li_header"><a href="#">Предложения</a></li>
                <li class="li_header"><a href="#">Личный кабинет</a></li>
                <li class="li_header"><a href="#log_in">Вход / регистрация</a></li>
                </ul>
        </nav>
    </header>

    <form method="GET" action="phpSearch.php" class="search">
        <input type="search" name="search" class="input">
        <input type="submit" name="sub" id="searchInput" class="searchInput">
    </form>

    <section class="section_enter_1" id="log_in">
        <section class="sub-section_enter_1">
            <a href="#" class="x">x</a>
            
<!-- создать вход для сайта -->
            <form action="registration.php" method="POST">
                <a href="#log_in" class="log_in" id="log_in">Войти</a>
                <a href="#registration" class="registration">Регистрация</a>
                <section class="section-clip"></section>
                <input class="login" placeholder="login" type="text" name="login" required>
                <input class="password_1" placeholder="password" type="password1" name="password" required>
                <input type="submit" class="go" value="Отправить">
            </form>
        </section>
    </section>

    <section class="section_enter_2" id="registration">
        <section class="sub-section_enter_2">
            <a href="#" class="x">x</a>

<!--регистрация-->
            <form action="registration.php" method="POST">
                <a href="#log_in" class="log_in" id="log_in">Войти</a>
                <a href="#registration" class="registration">Регистрация</a>
                <section class="section-clip"></section>


                <input class="login_1" placeholder="login" type="text" name="login" required>
                <input class="mail_1" placeholder="@mail" type="email" name="mail" required>
                <input class="password_3" placeholder="password" type="password" name="password1" required>
                <input class="password_4" placeholder="password" type="password" name="password2" required>
                <input type="submit" class="go" value="Отправить">
            </form>


        </section>
    </section>


<section class="section_clip-path">
    <section class="section_clip-path_info">
        <section class="section_clip-path_info_1">
            <section class="sub_section_clip-path_info_1">Список товаров</section>
        </section>
        <section class="section_clip-path_info_2">
            <section class="sub_section_clip-path_info_2">Акции</section>
        </section>
        <section class="section_clip-path_info_3">
            <section class="sub_section_clip-path_info_3">Возростные</section>
        </section>
        <section class="section_clip-path_info_4">
            <section class="sub_section_clip-path_info_4">Природные</section>
        </section>
    </section>
</section>

<section class="section_animation">
    <section class="sub-section_animation_1"></section>
    <section class="sub-section_animation_2"></section>
    <section class="sub-section_animation_3"></section>
</section>

<section class="section_content">
<h2 class="h2">Поисковой запрос: <?php echo $_GET['search']; ?></h2>
<?php
$serverName ='localhost';
$loginServer = 'root';
$passwordServer = '';
$sqlName = 'login';

$link = new mysqli($serverName,$loginServer,$passwordServer,$sqlName); //подключение к бд

$search = $_GET['search'];

$sql = "SELECT * FROM `drug` WHERE `drug` LIKE '%$search%' ";

$select = mysqli_query($link,$sql);

while($select_while = mysqli_fetch_assoc($select)){
?>

<section class="section" > <p class="nameDrug"><?php echo $select_while["drug"]?> </p> <img class="img" src=" <?php echo $select_while["url"] ?>"><p class="priceDrug"><?php echo $select_while["price"].' рублей'?> </p></section>

<?php
}

if(mysqli_connect_errno()){
   echo 'ошибка в подключении к базе данных ('.mysqli_connect_errno().'):'.mysqli_connect_error(); // вывод ошибки
   exit();
}
$link->close();
?>   
</section>

<footer class="footer">
        <ul class="footer_Info">
           <li class="footerInfo">О компании</li>
           <li class="footerInfo">О нашем сервисе</li>
           <li class="footerInfo">Лицензия и реквизиты</li>
           <li class="footerInfo">Лекарства в регионах</li>
        </ul>
        <ul class="footer_Info">
           <li class="footerHelp">Часто задаваемые вопросы</li>
           <li class="footerHelp">Как сделать заказ</li>
           <li class="footerHelp">Правила доставки</li>
           <li class="footerHelp">Обратная связь</li>
        </ul>
        <ul class="footer_Info">
           <li class="promotions">Акции и распродажи</li>
           <li class="promotions">акции и предложения</li>
           <li class="promotions">программы лояльности</li>
        </ul>
        <ul class="footer_Info">
           <li class="law">Юридическая информация</li>
           <li class="law">политика обработки персональных данных</li>
           <li class="law">пользовательское соглашение</li>
        </ul>
</footer>

</body>

</html>