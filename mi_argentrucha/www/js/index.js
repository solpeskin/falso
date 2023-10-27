const flipper = document.querySelector(".flipper");
let isFlipped = false;
let startX;

flipper.addEventListener("touchstart", (e) => {
    if (!isFlipped) {
        startX = e.touches[0].clientX;
    }
});

flipper.addEventListener("touchmove", (e) => {
    if (!isFlipped) {
        const currentX = e.touches[0].clientX;
        const deltaX = currentX - startX;

        if (deltaX > 10) {
            flipper.style.transform = "rotateY(180deg)";
            isFlipped = true;
        } else if (deltaX < -10) {
            flipper.style.transform = "rotateY(0deg)";
            isFlipped = false;
        }
    }
});
