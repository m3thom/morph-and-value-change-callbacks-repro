import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="post"
export default class extends Controller {
  static targets = ['someOther'];

  static values = {
    boolFromCombination: Boolean,
  }

  boolFromCombinationValueChanged(current, old) {
    console.log('log only on initialized:', current, old)
  }

  someOtherTargetConnected() {
    console.log('postTargetConnected')
  }
}
