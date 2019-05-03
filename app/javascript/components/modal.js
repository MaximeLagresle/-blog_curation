// https://stackoverflow.com/questions/45791932/hide-first-modal-then-show-show-second-modal-on-click-function

// const hideShowModals = () => {
//   $(document).ready(function(){
//       $("#sign-up-modal").click(function(){
//         $('#signupModal').modal('show');
//          $('.bd-blogs-modal-xl').modal('hide');
//       });
//   });
// }

// export { hideShowModals };

const hideShowModals = () => {
  const followButton = document.querySelector("#sign-up-modal");
  followButton.addEventListener("click", (event) => {
    console.log("Hello");
  });
}

export { hideShowModals };
