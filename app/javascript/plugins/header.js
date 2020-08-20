const headerTag = document.querySelector(".index-container .hero .hero-content h1");
const navTag = document.querySelector("div.nav-container");


document.addEventListener("scroll", function() {
  const pixels = window.pageYOffset

    if (pixels > 144) {
    headerTag.classList.add("scrolled")
  } else {
    headerTag.classList.remove("scrolled")
  }
})


const fadeBox = function () {
  const pixels = window.pageYOffset
  const alpha = Math.min(pixels / 1000, 0.5)
  const alphaa = Math.min(pixels / 1000, 0.5)

  navTag.style.boxShadow = `0 0 10px rgba(0, 0, 0, ${alpha})`
  navTag.style.backgroundColor = `rgba(255, 255, 255, ${alphaa})`

}


// fadeBox()

document.addEventListener("scroll", function() {
  // fadeBox()
})



export default { header };
