import "bootstrap";

$(document).ready(function () {

    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });

});

// -------------------------

import { loadDynamicBannerText } from '../components/typed';
loadDynamicBannerText();

// -------------------------

import { initSweetalert } from '../components/sweet-alert';

initSweetalert('#swal-logout', {
  title: "You wanna leave? 😢",
  text: "Your feed won't be personalized 'til you login again.",
  icon: "warning",
  buttons: {
    cancel: {
      text: "Keep me safe",
      value: null,
      visible: true
    },
    confirm: {
      text: "Logout",
      value: true,
      visible: true,
      className: "",
      closeModal: true
    },
  }
}, (value) => {
  if (value) {
    const link = document.querySelector('#logout-user');
    link.click();
  }
});


// -------------------------

import { hideShowModals } from '../components/modal';
