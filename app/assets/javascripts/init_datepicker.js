$(function() {
        $(".datepicker").datepicker({
          format: "dd/mm/yyyy",
          weekStart: 1,
          startDate: new Date()
        });
    });


// $('.datepicker').datepicker({
//   format: "dd/mm/yyyy",
//   weekStart: 1,
//   autoclose: true,
//   startDate: new Date()
// });
// $('#datepicker').on('changeDate', function() {
//     $('#my_hidden_input').val(
//         $('#datepicker').datepicker('getFormattedDate')
//     );
// });
