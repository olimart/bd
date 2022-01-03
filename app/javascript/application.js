// Entry point for the build script in your package.json
// import * as bootstrap from "bootstrap"

import * as Turbo from "@hotwired/turbo"

// Make accessible for Electron and Mobile adapters
window.Turbo = Turbo

// import * as ActiveStorage from "@rails/activestorage"
// import "./channels"

// ActiveStorage.start()

import "./controllers"
