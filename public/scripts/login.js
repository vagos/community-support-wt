var alertBoxes = document.querySelectorAll('.alert');

const FADEOUT = 1000;

function makeAlertBoxFade(alertBox) {

    alertBox.addEventListener('click', () => { 
        alertBox.style.setProperty('opacity', 0);
        /*jshint -W030 */
        setTimeout( () => {
            alertBox.remove();
        }, FADEOUT);
    });

}

for (let alertBox of alertBoxes) {
    alertBox.style.setProperty('opacity', 1);

    makeAlertBoxFade(alertBox)
}
