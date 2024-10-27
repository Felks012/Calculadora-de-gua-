<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login e Criar Conta</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
      body {
    font-family: Arial, sans-serif;
    background-color: #f0f9f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    width: 300px;
    padding: 20px;
}

.form-container {
    display: none;
}

.form-container.active {
    display: block;
}

h1 {
    color: #4CAF50;
    text-align: center;
}

input {
    width: 100%;
    padding: 4px;
    margin: 10px 0;
    border: 1px solid #4CAF50;
    border-radius: 2px;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
}

button:hover {
    background-color: #45a049;
}

span {
    display: block;
    text-align: center;
    margin-top: 10px;
}

a {
    color: #4CAF50;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
    </style>
    <script>
      document.addEventListener("DOMContentLoaded", function() {
    const loginContainer = document.getElementById('login-container');
    const signupContainer = document.getElementById('signup-container');
    
    // Mostrar o formulário de login por padrão
    loginContainer.classList.add('active');

    document.getElementById('switch-to-signup').addEventListener('click', function(e) {
        e.preventDefault();
        loginContainer.classList.remove('active');
        signupContainer.classList.add('active');
    });

    document.getElementById('switch-to-login').addEventListener('click', function(e) {
        e.preventDefault();
        signupContainer.classList.remove('active');
        loginContainer.classList.add('active');
    });
});
    </script>
</head>
<body>
    <div class="container">
        <div class="form-container" id="login-container">
            <form id="login-form">
                <h1>Login</h1>
                <input type="email" placeholder="Email" required>
                <input type="password" placeholder="Senha" required>
                <button type="submit">Entrar</button>
                <span>Não tem uma conta? <a href="#" id="switch-to-signup">Criar conta</a></span>
            </form>
        </div>
        <div class="form-container" id="signup-container">
            <form id="signup-form">
                <h1>Criar Conta</h1>
                <input type="text" placeholder="Nome" required>
                <input type="email" placeholder="Email" required>
                <input type="password" placeholder="Senha" required>
                <button type="submit">Registrar</button>
                <span>Já tem uma conta? <a href="#" id="switch-to-login">Login</a></span>
            </form>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>