const prevTag = document.querySelector(".prev img");
const showContentTag = document.querySelector(".show-description")

prevTag.addEventListener("click", function () {
  showContentTag.innerHTML = `<h1><%= @recipe.title %></h1>`;
});

export default slides
