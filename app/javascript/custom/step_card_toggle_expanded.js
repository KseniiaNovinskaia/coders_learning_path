
const initStepCardEventListener = () => {
  const stepCards = document.getElementsByClassName('step-card-container');

  for (var i = 0; i < stepCards.length; i++) {
    let stepCard = stepCards[i];
    let closedPart = stepCard.getElementsByClassName('step-card-closed-part')[0];
    console.log(closedPart);
    closedPart.addEventListener('click', (event) => {

      let expandedPart = stepCard.getElementsByClassName('step-card-expanded-part')[0];
      expandedPart.classList.toggle('step-card-expanded-part-expanded');

      let expandIcon = stepCard.getElementsByClassName('step-card-expand-icon')[0];
      expandIcon.classList.toggle('step-card-expand-icon-expanded');

      let closedPart = stepCard.getElementsByClassName('step-card-closed-part')[0];
      closedPart.classList.toggle('step-card-closed-part-expanded');
  });
  }
};

export { initStepCardEventListener };

