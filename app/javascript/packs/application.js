// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
Rails.start()
// import { Turbo, cable } from "@hotwired/turbo-rails"
// window.Turbo = Turbo
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "../css/application.css"
import "alpinejs"

window.addEventListener('turbo:load', (event) =>{
    console.log("Turbo");
})