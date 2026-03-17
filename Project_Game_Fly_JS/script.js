
let count = 0;
let cross = true;
let audioLive = new Audio('./cool-hip-hop-loop-275527.mp3')
let audioDead = new Audio('./game-over-arcade-6435.mp3')
setTimeout(() => {
    audioLive.play();
}, 1000);
document.onkeydown = function (e) {
    console.log("KeyCode pressed", e.key)
    if (e.key === "ArrowUp") {
        let bird = document.querySelector(".flyBird")
        bird.classList.add("jumpBird")
        setTimeout(() => {
            bird.classList.remove("jumpBird")
        }, 800);
    }
    if (e.key === 'ArrowRight') {
        let bird = document.querySelector('.flyBird')
        let dx = parseInt(window.getComputedStyle(bird).getPropertyValue('left'));
        bird.style.left = dx + 140 + 'px'
    }
    if (e.key === 'ArrowLeft') {
        let bird = document.querySelector('.flyBird')
        let dx = parseInt(window.getComputedStyle(bird).getPropertyValue('left'));
        if (dx > 0)
            bird.style.left = dx - 140 + 'px'
    }
}

setInterval(() => {
    let bird = document.querySelector('.flyBird')
    let gameOver = document.querySelector('.gameOver')
    let obstacle = document.querySelector('.obstacle')

    let dx = parseInt(window.getComputedStyle(bird).getPropertyValue('left'));
    let dy = parseInt(window.getComputedStyle(bird).getPropertyValue('top'));
    // console.log(dx, dy)

    let ox = parseInt(window.getComputedStyle(obstacle).getPropertyValue('left'));
    let oy = parseInt(window.getComputedStyle(obstacle).getPropertyValue('top'));
    // console.log(ox, oy)

    let offSetX = Math.abs(dx - ox);
    let offSetY = Math.abs(dy - oy);
    // console.log(offSetX, offSetY)
    if (offSetX < 90 && offSetY < 60) {
        gameOver.style.visibility = 'visible'
        obstacle.classList.remove("runObstacle")
        audioDead.play();
        setTimeout(() => {
            audioLive.pause()
            audioDead.pause()
        }, 2000);
    } else if (offSetX < 140 && cross) {
        count += 1;
        updateScore(count);
        cross = false;
        setInterval(() => {
            cross = true
        }, 2000);
        // console.log(obstacleDur)
        // setInterval(() => {
        //     let obstacleDur = parseFloat(window.getComputedStyle(obstacle).getPropertyValue('animation-duration'));
        //     newDur = obstacleDur - 0.1;
        //     console.log(newDur)
        //     obstacle.style.animationDuration = newDur + 's';
        // }, 100);
    }

}, 10);

function updateScore(count) {
    score = document.querySelector('.gameScore')
    score.innerHTML = "Your score is: " + count
}