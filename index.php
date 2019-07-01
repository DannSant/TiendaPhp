<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tienda</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <div id="container">
    <!-- HEADER-->
    <header id="header">
        <div id="logo">
            <img src="assets/img/camiseta.png" alt="Camiseta logo">
            <a href="index-php">
                Tienda de camisetas
            </a>
        </div>
    </header>
    <!-- MENU-->
    <nav id="menu">
        <ul>
            <li>
                <a href="">Inicio</a>
            </li>
            <li>
                <a href="">Categoria 1</a>
            </li>
            <li>
                <a href="">Categoria 2</a>
            </li>
            <li>
                <a href="">Categoria 3</a>
            </li>
            <li>
                <a href="">Categoria 4</a>
            </li>
            <li>
                <a href="">Categoria 4</a>
            </li>
        </ul>
    </nav>

    
    <div id="content">
        <!-- BARRA LATERAL-->
        <aside id="lateral">
            <div id="login" class="block-aside">
                <h3>Entrar a la web</h3>
                <form action="" method="POST">
                    <label for="email">Email</label>
                    <input type="text" name="email" />
                    <label for="password">Password</label>
                    <input type="password" name="password" />
                    <input type="submit" value="Enviar">
                </form>
                <ul>
                    <li><a href="">Mis pedidos</a></li>
                    <li><a href="">Gestionar pedidos</a></li>
                    <li><a href="">Gestionar categorias</a></li>
                </ul>
                
            </div>
        </aside>
        <!-- CONTENT-->
        <div id="central">
            <div class="product">
                <img src="assets/img/camiseta.png" alt="">
                <h2>Camiseta azul olgada</h2>
                <p>30 euros</p>
                <a href="">Comprar</a>
            </div>

            <div class="product">
                <img src="assets/img/camiseta.png" alt="">
                <h2>Camiseta azul olgada</h2>
                <p>30 euros</p>
                <a href="">Comprar</a>
            </div>

        </div>
    </div>
    

    <!-- FOOTER-->
    <footer id="footer">
        <p>Desarrollador por Parasoft Cloud Solutions <?= date('Y')?></p>
    </footer>
    </div>
</body>
</html>