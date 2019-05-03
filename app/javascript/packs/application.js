import "bootstrap";

$(document).ready(function () {

    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });

});

import { loadDynamicBannerText } from '../components/typed';
loadDynamicBannerText();

import { initSweetalert } from '../components/sweet-alert';

initSweetalert('#sweet-alert', {
  title: "Are you sure?",
  text: "Hold on",
  icon: "warning"
}, (value) => {
  if (value) {
    const link = document.querySelector('#logout-user');
    link.click();
  }
});
