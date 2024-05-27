import { Application } from "@hotwired/stimulus";

// eslint-disable-next-line import/extensions
import CopyToClipboardController from "./controllers/copy_to_clipboard_controller.js";

window.Stimulus = Application.start();
window.Stimulus.register("copy-to-clipboard", CopyToClipboardController);
