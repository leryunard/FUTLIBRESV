document.getElementById("login").addEventListener('submit', validarCredenciales);


function validarCredenciales(e) {
    e.preventDefault();
    const formData = [...new FormData(document.querySelector('#login')).entries()];
    console.log(formData);
    const [, user] = formData[0];
    const [, password] = formData[1];
    console.log(user, password);
    if (user.length == 0) {
        alert('Ingrese su usuario');
        return;
    }
    if (password.length == 0) {
        alert('Ingrese su contraseña');
        return;
    }
}