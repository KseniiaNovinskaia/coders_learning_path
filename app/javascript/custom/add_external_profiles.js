





// This was an idea that did not work. That's why it's not imported into
// application.js



const testingProfiles = () => {
const externalProfilesButton = document.querySelector("#external-profiles");

const inputFields = document.getElementsByTagName("input");

const bothForms = document.getElementsByTagName("form");

externalProfilesButton.addEventListener("click", (event) => {
  // document.forms[0].submit
  // inputFields[2].click();
  // inputFields[5].click();
  bothForms[0].submit();
  // bothForms[1].submit();
  console.log("done.")
})

};

// export { testingProfiles };
