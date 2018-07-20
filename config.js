"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    const isMenuOpen = oni.menu.isMenuOpen;
    const isNormalMode = () => oni.editors.activeEditor.mode === 'normal';

    oni.input.bind("<c-p>", "quickOpen.show", function () { return isNormalMode() && !isMenuOpen(); });
};

exports.deactivate = function (oni) { };

exports.configuration = {
    // General
    "oni.loadInitVim": "~/.config/oni/gp-oni.vim",
    "oni.hideMenu": true,
    "configuration.editor": "javascript",
    "achievements.enabled": false,
    "learning.enabled": false,

    // UI
    "tabs.height": "1.6em",
    "tabs.mode": "buffers",
    "ui.animations.enabled": false,
    "ui.fontSmoothing": "auto",
    "ui.colorscheme": "gmacs-blue",

    // Editor
    "editor.fontFamily": "DejaVu Sans Mono",
    "editor.fontSize": "14px",
    "editor.clipboard.synchronizeYank": false,
    "editor.clipboard.synchronizeDelete": false,
    "editor.fontLigatures": false,
    "editor.linePadding": 5.5,
    "editor.scrollBar.visible": true,

    // Plugins
    "oni.plugins.prettier": {
        "settings": {
            "semi": true,
            "tabWidth": 4,
            "useTabs": false,
            "singleQuote": false,
            "trailingComma": "es5",
            "bracketSpacing": true,
            "jsxBracketSameLine": false,
            "arrowParens": "avoid",
            "printWidth": 80
        },
        "formatOnSave": false,
        "enabled": false
    },
};
