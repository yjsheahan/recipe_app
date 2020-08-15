const headerTag = document.querySelector(".hero h1");

document.addEventListener("scroll", function() {
  const pixels = window.pageYOffset

    if (pixels > 80) {
    headerTag.classList.add("scrolled")
  } else {
    headerTag.classList.remove("scrolled")
  }
})


export default { header };
