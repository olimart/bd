// Entry point for the build script in your package.json
// import * as bootstrap from "bootstrap"

// import Rails from "@rails/ujs"
import * as Turbo from "@hotwired/turbo"

// Make accessible for Electron and Mobile adapters
// window.Rails = Rails
window.Turbo = Turbo

// import * as ActiveStorage from "@rails/activestorage"
// import "./channels"

// Rails.start()
// ActiveStorage.start()

import "./controllers"
