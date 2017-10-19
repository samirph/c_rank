// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require twitter/bootstrap

$(document).ready(function(){
  id = $('[name=company_id]').val()
  var chart_data;
  $.get( "/company-projects.json?id="+id, function( data ) {
    chart_data = data
    var ctx = document.getElementById('company_chart').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'bar',

        // The data for our dataset
        data: {
            labels: chart_data['labels'],
            datasets: [{
                label: "Projetos",
                backgroundColor: [
                 'rgba(255, 99, 132, 0.7)',
                 'rgba(54, 162, 235, 0.7)',
                 'rgba(255, 206, 86, 0.7)',
                 'rgba(75, 192, 192, 0.7)',
                 'rgba(153, 102, 255, 0.7)',
                 'rgba(255, 159, 64, 0.7)'
             ],
             borderColor: [
              'rgba(255,99,132,1)',
              'rgba(54, 162, 235, 1)',
              'rgba(255, 206, 86, 1)',
              'rgba(75, 192, 192, 1)',
              'rgba(153, 102, 255, 1)',
              'rgba(255, 159, 64, 1)'
          ],
                data: chart_data['values']
            }
          ]
        },

        // Configuration options go here
        options: {maintainAspectRatio: false,}
    });
  });

})
