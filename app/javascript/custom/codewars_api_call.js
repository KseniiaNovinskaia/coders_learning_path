



// THESE ARE JUST DRAFT SCRIBBLES, THAT'S WHY THEY ARE NOT IMPORTED INTO
// APPLICATION.JS

const githubURL = "https://api.github.com/users/Kimon-Haars";

const codewarsURL = "https://www.codewars.com/api/v1/users/Kimon-Haars";

const githubApiData = (keyword) => {
fetch(githubURL)
  .then(response => response.json())
  .then(data => data.keyword);
}


document.querySelector(".github-box")
