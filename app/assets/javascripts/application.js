//= require rails-ujs
//= require_tree .

import { loadDynamicBannerText } from '../components/header';
loadDynamicBannerText();

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "A nice alert",
  text: "This is a great alert, isn't it?",
  icon: "success"
});
