alertBoxes = document.querySelectorAll('.alert');

const FADEOUT = 1000;

for (let alertBox of alertBoxes) {
    alertBox.style.setProperty('opacity', 1);

    alertBox.addEventListener('click', () => {
        alertBox.style.setProperty('opacity', 0);
        
        setTimeout( () => {
            alertBox.remove();
        }, FADEOUT);
    });
}
