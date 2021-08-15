//https://github.com/summernote/summernote/issues/3409

const prettier = require("prettier/standalone");
const plugins = [require("prettier/parser-html")];

function prettierFormat(html) {

    if (prettier == null) {
        return html;
    }
    return prettier.format(html, {
        parser: "html",
        plugins,
    });
}

(function (factory) {
    /* global define */
    if (typeof define === 'function' && define.amd) {
        // AMD. Register as an anonymous module.
        define(['jquery'], factory);
    } else if (typeof module === 'object' && module.exports) {
        // Node/CommonJS
        module.exports = factory(require('jquery'));
    } else {
        // Browser globals
        factory(window.jQuery);
    }
}(function ($) {

    // Extends plugins for adding readmore.
    //  - plugin is external module for customizing.
    $.extend($.summernote.plugins, {
        /**
         * @param {Object} context - context object has status of editor.
         */
        'format': function (context) {
            var self = this;

            // ui has renders to build ui elements.
            //  - you can create a button with `ui.button`
            var ui = $.summernote.ui;

            // add elfinder button
            context.memo('button.format', function () {
                // create button
                var button = ui.button({
                    contents: '<i class="fa fa-save"/>',
                    tooltip: 'Format CODE',
                    click: function (event) {

                        try {
                            let el = $(context.$note[0]);
                            let content = prettierFormat(el.summernote("code"));
                            el.summernote("code", content);
                        } catch (e) {
                            console.log(e);
                            // alert(
                            //     "Something went wrong. Did not format! Devs can check console for error"
                            // );
                        }
                    }

                });
                return button.render();
            });

            // This methods will be called when editor is destroyed by $('..').summernote('destroy');
            // You should remove elements on `initialize`.
            this.destroy = function () {
                this.$panel.remove();
                this.$panel = null;
            };
        },

    });
}));
