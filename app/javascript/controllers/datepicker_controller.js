import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      minDate: "today",
      maxDate: new Date().fp_incr(14)
    });

  }
  get() {
    console.log('connect');

  }
}
