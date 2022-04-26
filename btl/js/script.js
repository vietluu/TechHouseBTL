window.onload = () => {

    const menu = document.querySelector('.nav-menu');
    const menu_mobile = document.querySelector('.mobile-menu');
    const sub = document.getElementsByClassName('dropdown');
    var click = true;
    var check = true;


    //menu dropdown
    menu.addEventListener('click', function () {
        if (click) {
            menu_mobile.setAttribute('style', 'display:block;')
            click = !click;

        }
        else {
            menu_mobile.setAttribute('style', 'display:none;')
            click = !click;

        }
    });
    for (var x of sub) {
        x.addEventListener('click', function (x) {
            const nextSibling = this.nextElementSibling;
            const child = this.childNodes;
            if (check) {
                nextSibling.setAttribute('style', 'display:block;');
                console.log(child);
                child[0].setAttribute('style', 'transform: rotate(90deg);')
                check = !check;
            }
            else {
                nextSibling.setAttribute('style', 'display:none;')
                child[0].setAttribute('style', 'transform: rotate(0deg);')
                check = !check;
            }
        });
    }
}
function search() {
    const value = document.querySelector('#search-input').value;
    const valuem = document.querySelector('#m-search-input').value;
    window.location.href = `Search.aspx?product=${(window.innerWidth > 1200) ? value : valuem}`;
}

