import "bootstrap";

$(document).on('click touchstart', '.nav', function() {
  $("body").toggleClass("show-sidebar");
  $(".nav .fa").toggleClass("fa-navicon fa-times");
  $(".body-overlay").toggleClass("body-overlay-apply");
});

$(document).on('click touchstart', '.body-overlay-apply', function() {
  $("body").toggleClass("show-sidebar");
  $(".nav .fa").toggleClass("fa-navicon fa-times");
  $(".body-overlay").toggleClass("body-overlay-apply");
});

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

// --------------------------------

$(function() {
  $('#cta-smart').click(function(){
    $("body").toggleClass("show-sidebar");
    $(".nav .fa").toggleClass("fa-navicon fa-times");
    $(".body-overlay").toggleClass("body-overlay-apply");
    $('#blog-modal').modal('toggle')
  });
});

$(function() {
  $('#login-user').click(function(){
    $("body").toggleClass("show-sidebar");
    $(".nav .fa").toggleClass("fa-navicon fa-times");
    $(".body-overlay").toggleClass("body-overlay-apply");
    $('#signinModal').modal('toggle')
  });
});

$(function() {
  $('#swal-logout').click(function(){
    $("body").toggleClass("show-sidebar");
    $(".nav .fa").toggleClass("fa-navicon fa-times");
    $(".body-overlay").toggleClass("body-overlay-apply");
    $('#logout-user').modal('toggle')
  });
});


