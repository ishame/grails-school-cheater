// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require_self

$(function () {
    (function () {
        var config = {
            '.chosen-authority'           : { disable_search_threshold: 10 },
        }
        for (var selector in config) {
            $(selector).chosen(config[selector]);
        }
    })();
});
