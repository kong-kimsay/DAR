// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.

//IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip
//= require jquery
//= require jquery_ujs
//= require global/plugins/jquery.min
//= require global/plugins/jquery-migrate.min
//= require global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min
//= require global/plugins/bootstrap/js/bootstrap.min
//= require global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min
//= require global/plugins/jquery-slimscroll/jquery.slimscroll.min
//= require global/plugins/jquery.blockui.min
//= require global/plugins/jquery.cokie.min
//= require global/plugins/uniform/jquery.uniform.min
//END CORE PLUGINS
//BEGIN PAGE LEVEL PLUGINS
//= require global/plugins/jqvmap/jqvmap/jquery.vmap
//= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia
//= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world
//= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe
//= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany
//= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa
//= require global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata
//= require global/plugins/bootstrap-fileinput/bootstrap-fileinput.js
//= require global/plugins/morris/morris.min
//= require global/plugins/morris/raphael-min
//= require global/plugins/jquery.sparkline.min
//END PAGE LEVEL PLUGINS
//BEGIN PAGE LEVEL SCRIPTS
//= require global/metronic
//= require layout
//= require demo
//= require pages/index3
//= require pages/tasks
//= require turbolinks
//END PAGE LEVEL SCRIPTS