import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "results", "form" ]

  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      console.log("Searching...")
      Rails.fire(this.formTarget, 'submit')
    }, 500)
  }

  handleResults(e) {
    const [data, status, xhr] = e.detail
    this.resultsTarget.innerHTML = xhr.response
  }
}