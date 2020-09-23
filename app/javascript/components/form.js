function renderErrors(errors) {
  return errors.reduce((html, error) => {
    html += `<li>${error}</li>`
    return html;
  }, "");
}


function validateForm() {
  const cpfInput = document.getElementById('cpf');
  const regex = /^(\d{3}[-\.]?){3}\d{2}$/;
  const seachForm = document.getElementById('form');
  const searchButton = document.getElementById('search-button');

  let errors = [];

  searchButton.addEventListener("click", (event) => {
    if (cpfInput) {
      const errorsList = document.querySelector('.errors-list');
      while (errorsList.firstChild) {
        console.log(errorsList.firstChild)
        errorsList.removeChild(errorsList.firstChild)
      }
      errors = [];
      const cpfValue = cpfInput.value;
      if (cpfValue.length === 0) {
        event.preventDefault();
        errors.push("CPF cannot be blank");
      }
      if (!regex.test(cpfValue)) {
        event.preventDefault();
        errors.push("CPF must have 11 digits");
      }
      const errorsString = renderErrors(errors);
      errorsList.insertAdjacentHTML("beforeend", errorsString);
    }
  });
}


export { validateForm }


// validates :number, presence: { message: "CPF cannot be blank." }
// validates :number, length: { is: 11, message: "CPF must have 11 digits." }
// validates :number, numericality: { only_integer: true, message: "Type only numbers." }
