let img = document.querySelector('img')
let user = document.querySelector('#user')
let pass = document.querySelector('#pass')

user.addEventListener('click', function () {
    //img.src = '\Stock/3-cute-yeti-monster-presenting-cartoon-clipart-324x374.jpg';
    //img.src = 'images/3-cute-yeti-monster-presenting-cartoon-clipart-324x374.jpg"';
    img.src = "images/yetiwithwatermark.jpg";
})
pass.addEventListener('click', function () {
    img.src = "images/image.png";
})