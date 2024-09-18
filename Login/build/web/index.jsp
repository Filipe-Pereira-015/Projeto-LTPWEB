<%-- 
    Document   : index
    Created on : 08/03/2024, 09:12:18
    Author     : laboratorio
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <title>Acessar</title>

    <script>
        function validarCadastro() {
            var nome_cadastro = formCadastro.nome_cad.value;
            var email_cadastro = formCadastro.email_cad.value;
            var senha_cadastro = formCadastro.senha_cad.value;

            if (nome_cadastro == "") {
                alert('Preencha o campo com seu nome!');
                formCadastro.nome_cad.focus();
                return false;
            } else if (email_cadastro == "") {
                alert('Preencha o campo com seu e-mail!');
                formCadastro.email_cad.focus();
                return false;
            } else if (senha_cadastro == "" || senha_cadastro.length < 6) {
                alert('Preencha o campo com sua senha! (mínimo de 6 e máximo de 8 caracteres)');
                formCadastro.senha_cad.focus();
                return false;
            } else {
                alert('Usuário cadastrado com sucesso! \n O e-mail do cadastro ' +
                    email_cadastro + ' terá que ser validado! \n Favor confirmar o cadastro no seu e-mail!');
            }
        }

        function validarLogin() {
            var email_login = formLogin.email_login.value;
            var senha_login = formLogin.senha_login.value;

            if (email_login == "") {
                alert('Preencha o campo com seu e-mail!');
                formLogin.email_login.focus();
                return false;
            } else if (senha_login == "" || senha.login.length < 6) {
                alert('Preencha o campo com sua senha! (mínimo de 6 e máximo de 8 caracteres)');
                formLogin.senha_login.focus();
                return false;
            } else {
                alert('Bem vindo ao Sistema ' + email_login)
            }
        }
    </script>
    <script src=""></script>
</head>

<body>
    <div class="container">
        <a class="links" id="paracadastro"></a>
        <a class="links" id="paralogin"></a>

        <div class="content">

            <!-- FORMULARIO DE LOGIN -->
            <div id="login">
                <form name="formLogin" action="Login" method="post">
                    <h1>Login</h1>
                    <p>
                        <label for="email_login">Seu e-mail</label>
                        <input type="text" name="email_login" id="email_login" required placeholder="ex. contato@projecaoceilandia.com">
                    </p>
                    <p>
                        <label for="senha_login">Sua senha</label>
                        <input type="password" name="senha_login" id="senha_login" required placeholder="ex. senha" maxlength="8">
                    </p>

                    <p>
                        <input type="checkbox" name="manterlogado" id="manterlogado" value="">
                        <label for="manterlogado">Manter-me logado</label>
                    </p>

                    <p>
                        <input type="submit" value="Logar" onclick="return validarLogin()">
                    </p>
                    <p class="link">
                        Ainda não tem conta?
                        <a href="#paracadastro">Cadastre-se</a>
                    </p>
                </form>
            </div>

            <!-- FORMULARIO DE CADASTRO -->
            <div id="cadastro">
                <form name="frmCadastrarLogin" action="CadastroLogin" method="post">
                    <h1>Cadastro</h1>

                    <p>
                        <label for="nome_cad">Seu nome</label>
                        <input type="text" id="nome_cad" name="nome_cad" placeholder="nome" />
                    </p>

                    <p>
                        <label for="email_cad">Seu E-mail</label>
                        <input type="email" name="email_cad" id="email_cad" required placeholder="contato@projecaoceilandia.com">
                    </p>

                    <p>
                        <label for="senha_cad">Sua senha</label>
                        <input type="password" name="senha_cad" id="senha_cad" required placeholder="ex. 1234" maxlength="8">
                    </p>

                    <p>
                        <input type="submit" value="Cadastrar" onclick="return validarCadastro()">
                    </p>
                    <p class="link">
                        Já tem conta?
                        <a href="#paralogin">Ir para login</a>
                    </p>
                </form>
            </div>

        </div>
    </div>
</body>
</html>
