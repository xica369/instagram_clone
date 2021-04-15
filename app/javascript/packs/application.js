// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import { Turbo, cable } from "@hotwired/turbo-rails"
window.Turbo = Turbo
import ahoy from 'ahoy.js';
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "chartkick"
import "chart.js"
import "choices.js"
// import 'alpine-turbo-drive-adapter'
import "alpinejs"
//ActiveStorage.start()
Rails.start()

import debounced from 'debounced'
debounced.initialize()

import "controllers"
import "../css/application.css"

window.addEventListener('turbo:load', (event) =>{
    console.log("Turbo");
})
